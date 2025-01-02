/// imageBW - A simple image processing module for BW images
///           represented using run-length encoding (RLE)
///
/// This module is part of a programming project
/// for the course AED, DETI / UA.PT
///
/// You may freely use and modify this code, at your own risk,
/// as long as you give proper credit to the original and subsequent authors.
///
/// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
/// 2024

// Student authors (fill in below):
// NMec:119934
// Name:Miguel Ventura Mota
// NMec:113362
// Name:Tiago Melo
//
// Date:02/12/2024
//

#include "imageBW.h"

#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "instrumentation.h"

size_t total_memmory_alocated;
uint32 number_runs;

// The data structure
//
// A BW image is stored in a structure containing 3 fields:
// Two integers store the image width and height.
// The other field is a pointer to an array that stores the pointers
// to the RLE compressed image rows.
//
// Clients should use images only through variables of type Image,
// which are pointers to the image structure, and should not access the
// structure fields directly.

// Constant value --- Use them throughout your code
// const uint8 BLACK = 1;  // Black pixel value, defined on .h
// const uint8 WHITE = 0;  // White pixel value, defined on .h
const int EOR = -1;  // Stored as the last element of a RLE row

// Internal structure for storing RLE BW images
struct image {
  uint32 width;
  uint32 height;
  int** row;  // pointer to an array of pointers referencing the compressed rows
};

// This module follows "design-by-contract" principles.
// Read `Design-by-Contract.md` for more details.

/// Error handling functions

// In this module, only functions dealing with memory allocation or
// file (I/O) operations use defensive techniques.
// When one of these functions fails,
// it immediately prints an error and exits the program.
// This fail-fast approach to error handling is simpler for the programmer.

// Use the following function to check a condition
// and exit if it fails.

// Check a condition and if false, print failmsg and exit.
static void check(int condition, const char* failmsg) {
  if (!condition) {
    perror(failmsg);
    exit(errno || 255);
  }
}

/// Init Image library.  (Call once!)
/// Currently, simply calibrate instrumentation and set names of counters.
void ImageInit(void) {  ///
  InstrCalibrate();
  InstrName[0] = "pixmem";  // InstrCount[0] will count pixel array acesses
  // Name other counters here...
}

// Macros to simplify accessing instrumentation counters:
#define PIXMEM InstrCount[0]
// Add more macros here...

// TIP: Search for PIXMEM or InstrCount to see where it is incremented!

/// Auxiliary (static) functions

/// Create the header of an image data structure
/// And allocate the array of pointers to RLE rows
static Image AllocateImageHeader(uint32 width, uint32 height) {
  assert(width > 0 && height > 0);
  Image newHeader = malloc(sizeof(struct image));
  check(newHeader != NULL, "malloc");

  newHeader->width = width;
  newHeader->height = height;

  // Allocating the array of pointers to RLE rows
  newHeader->row = malloc(height * sizeof(int*));
  check(newHeader->row != NULL, "malloc");

  return newHeader;
}

/// Allocate an array to store a RLE row with n elements
static int* AllocateRLERowArray(uint32 n) {
  assert(n > 2);
  int* newArray = malloc(n * sizeof(int));
  check(newArray != NULL, "malloc");

  return newArray;
}

/// Compute the number of runs of a non-compressed (RAW) image row
static uint32 GetNumRunsInRAWRow(uint32 image_width, const uint8* RAW_row) {
  assert(image_width > 0);
  assert(RAW_row != NULL);

  // How many runs?
  uint32 num_runs = 1;
  for (uint32 i = 1; i < image_width; i++) {
    if (RAW_row[i] != RAW_row[i - 1]) {
      num_runs++;
    }
  }

  return num_runs;
}

/// Get the number of runs of a compressed RLE image row
static uint32 GetNumRunsInRLERow(const int* RLE_row) {
  assert(RLE_row != NULL);

  // Go through the RLE_row until EOR is found
  // Discard RLE_row[0], since it is a pixel color

  uint32 num_runs = 0;
  uint32 i = 1;
  while (RLE_row[i] != EOR) {
    num_runs++;
    i++;
  }

  return num_runs;
}

/// Get the number of elements of an array storing a compressed RLE image row
static uint32 GetSizeRLERowArray(const int* RLE_row) {
  assert(RLE_row != NULL);

  // Go through the array until EOR is found
  uint32 i = 0;
  while (RLE_row[i] != EOR) {
    i++;
  }

  return (i + 1);
}

/// Compress into RLE format a RAW image row
/// Allocates and returns the array storing the image row in RLE format
static int* CompressRow(uint32 image_width, const uint8* RAW_row) {
  assert(image_width > 0);
  assert(RAW_row != NULL);

  // How many runs?
  uint32 num_runs = GetNumRunsInRAWRow(image_width, RAW_row);

  // Allocate the RLE row array
  int* RLE_row = malloc((num_runs + 2) * sizeof(int));
  check(RLE_row != NULL, "malloc");

  // Go through the RAW_row
  RLE_row[0] = (int)RAW_row[0];  // Initial pixel value
  uint32 index = 1;
  int num_pixels = 1;
  for (uint32 i = 1; i < image_width; i++) {
    if (RAW_row[i] != RAW_row[i - 1]) {
      RLE_row[index++] = num_pixels;
      num_pixels = 0;
    }
    num_pixels++;
  }
  RLE_row[index++] = num_pixels;
  RLE_row[index] = EOR;  // Reached the end of the row

  return RLE_row;
}

static uint8* UncompressRow(uint32 image_width, const int* RLE_row) {
  assert(image_width > 0);
  assert(RLE_row != NULL);

  // The uncompressed row
  uint8* row = (uint8*)malloc(image_width * sizeof(uint8));
  check(row != NULL, "malloc");

  // Go through the RLE_row until EOR is found
  int pixel_value = RLE_row[0];
  uint32 i = 1;
  uint32 dest_i = 0;
  while (RLE_row[i] != EOR) {
    // For each run
    for (int aux = 0; aux < RLE_row[i]; aux++) {
      row[dest_i++] = (uint8)pixel_value;
    }
    // Next run
    i++;
    pixel_value ^= 1;
  }

  return row;
}

// Add your auxiliary functions here...

/// Image management functions

/// Create a new BW image, either BLACK or WHITE.
///   width, height : the dimensions of the new image.
///   val: the pixel color (BLACK or WHITE).
/// Requires: width and height must be non-negative, val is either BLACK or
/// WHITE.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageCreate(uint32 width, uint32 height, uint8 val) {
  assert(width > 0 && height > 0);
  assert(val == WHITE || val == BLACK);

  Image newImage = AllocateImageHeader(width, height);

  // All image pixels have the same value
  int pixel_value = (int)val;

  // Creating the image rows, each row has just 1 run of pixels
  // Each row is represented by an array of 3 elements [value,length,EOR]
  for (uint32 i = 0; i < height; i++) {
    newImage->row[i] = AllocateRLERowArray(3);
    newImage->row[i][0] = pixel_value;
    newImage->row[i][1] = (int)width;
    newImage->row[i][2] = EOR;
  }

  return newImage;
}

/// Create a new BW image, with a perfect CHESSBOARD pattern.
///   width, height : the dimensions of the new image.
///   square_edge : the lenght of the edges of the sqares making up the
///   chessboard pattern.
///   first_value: the pixel color (BLACK or WHITE) of the
///   first image pixel.
/// Requires: width and height must be non-negative, val is either BLACK or
/// WHITE.
/// Requires: for the squares, width and height must be multiples of the
/// edge lenght of the squares
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageCreateChessboard(uint32 width, uint32 height, uint32 square_edge,
                            uint8 first_value) {
  
  assert(width > 0 && height > 0);
  assert(first_value == WHITE || first_value == BLACK); // Verificações iniciais
  assert(height % square_edge == 0 && width % square_edge == 0);

  size_t total_memmory_alocated = 0;
  uint32 number_runs = 0;

  Image newImage = AllocateImageHeader(width, height); // Guarda espaço para a imagem
  uint8 color = first_value;
  uint32 contas1=0;
  for(uint32 i = 0; i < height; i++){  // para percorrer todas as rows
	  int contas2 = width;
	  if(i % square_edge == 0 && i != 0){  // NOR para trocar de cor quando temos square_edge rows a começar na mesma cor
		 color = !(color||WHITE);  
	  }
	  contas1=(uint32)((width+square_edge-1)/square_edge)+2; // ceil(número de campos necessários para a row)
	  newImage->row[i] = AllocateRLERowArray(contas1);  // guarda espaço para um array
    //number_runs += GetNumRunsInRLERow(newImage->row[i]);
    total_memmory_alocated += contas1 * sizeof(uint32);
	  newImage->row[i][0] = color; // atribui a cor inicial
	  for( uint32 a = 1; a<contas1-1;a++){
		  contas2-=square_edge; // para o caso de a row não acabar juntamente com o square edge 
		  if(contas2 >=0){
		      newImage->row[i][a] = square_edge;
		  }else{
			  newImage->row[i][a] = contas2+square_edge; // largura que falta para completar a row no caso referido acima
		  }
	  }
	  newImage->row[i][contas1-1] = EOR;
    number_runs += GetNumRunsInRLERow(newImage->row[i]);
  }
  check(newImage->row[0] != NULL,"Erro de programa");  // confirma que foi guardada a imagem
  printf("Total memmory alocated: %zu\n", total_memmory_alocated);
  printf("Number of runs: %u\n", number_runs);
	  
  return newImage;
}

/// Destroy the image pointed to by (*imgp).
///   imgp : address of an Image variable.
/// If (*imgp)==NULL, no operation is performed.
/// Ensures: (*imgp)==NULL.
/// Should never fail.
void ImageDestroy(Image* imgp) {
  assert(imgp != NULL);

  Image img = *imgp;

  for (uint32 i = 0; i < img->height; i++) {
    free(img->row[i]);
  }
  free(img->row);
  free(img);

  *imgp = NULL;
}

/// Printing on the console

/// Output the raw BW image
void ImageRAWPrint(const Image img) {
  assert(img != NULL);

  printf("width = %d height = %d\n", img->width, img->height);
  printf("RAW image:\n");

  // Print the pixels of each image row
  for (uint32 i = 0; i < img->height; i++) {
    // The value of the first pixel in the current row
    int pixel_value = img->row[i][0];
    for (uint32 j = 1; img->row[i][j] != EOR; j++) {
      // Print the current run of pixels
      for (int k = 0; k < img->row[i][j]; k++) {
        printf("%d", pixel_value);
      }
      // Switch (XOR) to the pixel value for the next run, if any
      pixel_value ^= 1;
    }
    // At current row end
    printf("\n");
  }
  printf("\n");
}

/// Output the compressed RLE image
void ImageRLEPrint(const Image img) {
  assert(img != NULL);

  printf("width = %d height = %d\n", img->width, img->height);
  printf("RLE encoding:\n");

  // Print the compressed rows information
  for (uint32 i = 0; i < img->height; i++) {
    uint32 j;
    for (j = 0; img->row[i][j] != EOR; j++) {
      printf("%d ", img->row[i][j]);
    }
    printf("%d\n", img->row[i][j]);
  }
  printf("\n");
}

/// PBM BW file operations

// See PBM format specification: http://netpbm.sourceforge.net/doc/pbm.html

// Auxiliary function
static void unpackBits(int nbytes, const uint8 bytes[], uint8 raw_row[]) {
  // bitmask starts at top bit
  int offset = 0;
  uint8 mask = 1 << (7 - offset);
  while (offset < 8) {  // or (mask > 0)
    for (int b = 0; b < nbytes; b++) {
      raw_row[8 * b + offset] = (bytes[b] & mask) != 0;
    }
    mask >>= 1;
    offset++;
  }
}

// Auxiliary function
static void packBits(int nbytes, uint8 bytes[], const uint8 raw_row[]) {
  // bitmask starts at top bit
  int offset = 0;
  uint8 mask = 1 << (7 - offset);
  while (offset < 8) {  // or (mask > 0)
    for (int b = 0; b < nbytes; b++) {
      if (offset == 0) bytes[b] = 0;
      bytes[b] |= raw_row[8 * b + offset] ? mask : 0;
    }
    mask >>= 1;
    offset++;
  }
}

// Match and skip 0 or more comment lines in file f.
// Comments start with a # and continue until the end-of-line, inclusive.
// Returns the number of comments skipped.
static int skipComments(FILE* f) {
  char c;
  int i = 0;
  while (fscanf(f, "#%*[^\n]%c", &c) == 1 && c == '\n') {
    i++;
  }
  return i;
}

/// Load a raw PBM file.
/// Only binary PBM files are accepted.
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageLoad(const char* filename) {  ///
  int w, h;
  char c;
  FILE* f = NULL;
  Image img = NULL;

  check((f = fopen(filename, "rb")) != NULL, "Open failed");
  // Parse PBM header
  check(fscanf(f, "P%c ", &c) == 1 && c == '4', "Invalid file format");
  skipComments(f);
  check(fscanf(f, "%d ", &w) == 1 && w >= 0, "Invalid width");
  skipComments(f);
  check(fscanf(f, "%d", &h) == 1 && h >= 0, "Invalid height");
  check(fscanf(f, "%c", &c) == 1 && isspace(c), "Whitespace expected");

  // Allocate image
  img = AllocateImageHeader(w, h);

  // Read pixels
  int nbytes = (w + 8 - 1) / 8;  // number of bytes for each row
  // using VLAs...
  uint8 bytes[nbytes];
  uint8 raw_row[nbytes * 8];
  for (uint32 i = 0; i < img->height; i++) {
    check(fread(bytes, sizeof(uint8), nbytes, f) == (size_t)nbytes,
          "Reading pixels");
    unpackBits(nbytes, bytes, raw_row);
    img->row[i] = CompressRow(w, raw_row);
  }

  fclose(f);
  return img;
}

/// Save image to PBM file.
/// On success, returns unspecified integer. (No need to check!)
/// On failure, does not return, EXITS program!
int ImageSave(const Image img, const char* filename) {  ///
  assert(img != NULL);
  int w = img->width;
  int h = img->height;
  FILE* f = NULL;

  check((f = fopen(filename, "wb")) != NULL, "Open failed");
  check(fprintf(f, "P4\n%d %d\n", w, h) > 0, "Writing header failed");

  // Write pixels
  int nbytes = (w + 8 - 1) / 8;  // number of bytes for each row
  // using VLAs...
  uint8 bytes[nbytes];
  // unit8 raw_row[nbytes*8];
  for (uint32 i = 0; i < img->height; i++) {
    // UncompressRow...
    uint8* raw_row = UncompressRow(nbytes * 8, img->row[i]);
    // Fill padding pixels with WHITE
    memset(raw_row + w, WHITE, nbytes * 8 - w);
    packBits(nbytes, bytes, raw_row);
    size_t written = fwrite(bytes, sizeof(uint8), nbytes, f);
    check(written == (size_t)nbytes, "Writing pixels failed");
    free(raw_row);
  }

  // Cleanup
  fclose(f);
  return 0;
}

/// Information queries

/// Get image width
int ImageWidth(const Image img) {
  assert(img != NULL);
  return img->width;
}

/// Get image height
int ImageHeight(const Image img) {
  assert(img != NULL);
  return img->height;
}

/// Image comparison

int ImageIsEqual(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);

  
  uint32 width1 = ImageWidth(img1);
  uint32 width2 = ImageWidth(img2);
  uint32 height1 = ImageHeight(img1);
  uint32 height2 = ImageHeight(img2);
  assert((width1 == width2) && (height1 == height2)); // confirma tamanhos das imagens são iguais
  for(uint32 i =0; i<height1; i++){  // percorre todas as rows
	  if(GetSizeRLERowArray(img1->row[i]) != GetSizeRLERowArray(img2->row[i])) return 0; // confirma que as variações de cor nas rows é igual
	  if(img1->row[i][0] != img2->row[i][0]) return 0;  // confirma se a cor inicial é igual
  }
  

  return 1;
}

int ImageIsDifferent(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  return !ImageIsEqual(img1, img2);
}

/// Boolean Operations on image pixels

/// These functions apply boolean operations to images,
/// returning a new image as a result.
///
/// Operand images are left untouched and must be of the same size.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)

Image ImageNEG(const Image img) {
  assert(img != NULL);

  uint32 width = img->width;
  uint32 height = img->height;

  Image newImage = AllocateImageHeader(width, height);

  // Directly copying the rows, one by one
  // And changing the value of row[i][0]

  for (uint32 i = 0; i < height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img->row[i]);
    newImage->row[i] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[i], img->row[i], num_elems * sizeof(int));
    newImage->row[i][0] ^= 1;  // Just negate the value of the first pixel run
  }

  return newImage;
}

Image ImageAND(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);


  uint32 altura = ImageHeight(img1);
  uint32 largura = ImageWidth(img1);
  assert(largura==(uint32)ImageWidth(img2) && altura==(uint32)ImageHeight(img2));  //verifica se têm as mesmas dimensões
  Image newImage = AllocateImageHeader(largura, altura);  // imagem nova
  uint8* ANDrow = (uint8*) malloc(largura*sizeof(uint8));//alocar espaço para a row depois do and
  int OPcount=0;
  for(uint32 i = 0; i < altura; i++){  // para todas as rows
	  uint8* row1 = UncompressRow(largura,img1->row[i]);
	  uint8* row2 = UncompressRow(largura,img2->row[i]);
	  for(uint32 a = 0; a<largura ; a++){
		  ANDrow[a] = row1[a] && row2[a];  // AND para todos os pixeis 
		  OPcount+=3;
      }
	  int* finalrow = CompressRow(largura,ANDrow);
	  newImage->row[i] = finalrow;  // atribui a row à nova imagem
      free(row1);   //liberta espaço
      free(row2);
  }
  free(ANDrow);
  printf("Número de Operações com os pixéis: %.d \n",OPcount);
	  

  return newImage;
}

Image ImageOR(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);

  
  uint32 altura = ImageHeight(img1);
  uint32 largura = ImageWidth(img1);
  assert(largura==(uint32)ImageWidth(img2) && altura==(uint32)ImageHeight(img2));  //verifica se têm as mesmas dimensões
  Image newImage = AllocateImageHeader(largura, altura);  // imagem nova
  uint8* ORrow = (uint8*) malloc(largura*sizeof(uint8));//alocar espaço para a row depois do OR
  for(uint32 i = 0; i < altura; i++){  // para todas as rows
	  uint8* row1 = UncompressRow(largura,img1->row[i]);
	  uint8* row2 = UncompressRow(largura,img2->row[i]);
	  for(uint32 a = 0; a<largura; a++){
		  ORrow[a] = row1[a] || row2[a];   // OR para todas as rows
	  }
	  int* finalrow = CompressRow(largura,ORrow);
	  newImage->row[i] = finalrow;  // atribui a row à nova imagem
      free(row1);   //liberta espaço
      free(row2);
  }
  free(ORrow);
	  

  return newImage;
}

Image ImageXOR(Image img1, Image img2) {
  assert(img1 != NULL && img2 != NULL);

  
  uint32 altura = ImageHeight(img1);
  uint32 largura = ImageWidth(img1);
  assert(largura==(uint32)ImageWidth(img2) && altura==(uint32)ImageHeight(img2));  //verifica se têm as mesmas dimensões
  Image newImage = AllocateImageHeader(largura, altura);  // imagem nova
  uint8* XORrow = (uint8*) malloc(largura*sizeof(uint8)); //alocar espaço para a row depois do XOR
  for(uint32 i = 0; i < altura; i++){  // para todas as rows
	  uint8* row1 = UncompressRow(largura,img1->row[i]);
	  uint8* row2 = UncompressRow(largura,img2->row[i]);
	  for(uint32 a = 0; a<largura; a++){
		XORrow[a] = row1[a] ^ row2[a];   // XOR para todas as rows
	  }
	  int* finalrow = CompressRow(largura,XORrow);
	  newImage->row[i] = finalrow;  // atribui a row à nova imagem
      free(row1);  //liberta espaço
      free(row2);
  }
  free(XORrow);
	  
  return newImage;
}

/// Geometric transformations

/// These functions apply geometric transformations to an image,
/// returning a new image as a result.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)

/// Mirror an image = flip top-bottom.
/// Returns a mirrored version of the image.
/// Ensures: The original img is not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageHorizontalMirror(const Image img) {
    assert(img != NULL); // Ensure the input image is valid

    uint32 width = img->width;
    uint32 height = img->height;
    Image newImage = AllocateImageHeader(width, height);

    for (uint32 i = 0; i < height; i++) {
        // Uncompress the current row from the original image
        uint8* row = UncompressRow(width, img->row[height - 1 - i]);

        // Compress the flipped row into the new image
        newImage->row[i] = CompressRow(width, row);

        free(row); // Free the uncompressed row
    }

    return newImage; // The caller is responsible for freeing the returned image
}



/// Mirror an image = flip left-right.
/// Returns a mirrored version of the image.
/// Ensures: The original img is not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageVerticalMirror(const Image img) {
  assert(img != NULL); // Ensure the input image is valid

  uint32 width = img->width;
  uint32 height = img->height;
  Image newImage = AllocateImageHeader(width, height);

  // Process each row to create the vertical mirror (left-to-right flip)
  for (uint32 i = 0; i < height; i++) {
    uint8* row = UncompressRow(width, img->row[i]);

    // Create a mirrored version of the row (left-to-right flip)
    uint8* mirroredRow = (uint8*)malloc(width * sizeof(uint8));
    for (uint32 j = 0; j < width; j++) {
      mirroredRow[j] = row[width - 1 - j]; // Flip the row horizontally
    }

    newImage->row[i] = CompressRow(width, mirroredRow);

    free(row);
    free(mirroredRow);
  }

  return newImage; // The caller is responsible for freeing the returned image
}


/// Replicate img2 at the bottom of imag1, creating a larger image
/// Requires: the width of the two images must be the same.
/// Returns the new larger image.
/// Ensures: The original images are not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageReplicateAtBottom(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width);

  uint32 new_width = img1->width;
  uint32 new_height = img1->height + img2->height;

  Image newImage = AllocateImageHeader(new_width, new_height);

  for (uint32 i = 0; i < new_height; i++) {  // percorre todas as rows
    if (i < img1->height) {
      // Copia as rows da img1
      uint8* lengthrow1 = UncompressRow(new_width, img1->row[i]);  // dá a row[i] da img1 em extenso
      newImage->row[i] = CompressRow(new_width, lengthrow1);      // coloca a row na nova imagem
      free(lengthrow1); //liberta o espaço de lenghtrow1
    } else {
      // Copia as rows da img2
      uint8* lengthrow2 = UncompressRow(new_width, img2->row[i - img1->height]);  // dá a row[i-img1->height] da img2 em extenso
      newImage->row[i] = CompressRow(new_width, lengthrow2);                     // coloca a row na nova imagem
      free(lengthrow2);  //liberta o espaço de lenghtrow2
    }
  }

  return newImage;
}

/// Replicate img2 to the right of imag1, creating a larger image
/// Requires: the height of the two images must be the same.
/// Returns the new larger image.
/// Ensures: The original images are not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageReplicateAtRight(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->height == img2->height);

  uint32 new_width = img1->width + img2->width;
  uint32 new_height = img1->height;

  Image newImage = AllocateImageHeader(new_width, new_height);

  for(uint32 i = 0; i < new_height; i++){  // percorre todas as rows
	  uint8* lenghtrow1 = UncompressRow(new_width,img1->row[i]);  // dá a row[i] da img1 em extenso
	  uint8* lenghtrow2 = UncompressRow(new_width,img2->row[i]);  // dá a row[i] da img2 em extenso
	  for( uint32 a =img1->width ; a< new_width; a++ ){
		  lenghtrow1[a] = lenghtrow2[a-img1->width];   // coloca a row[i] da img2 no fim da row[i] da img1
	  }
	  newImage->row[i] = CompressRow(new_width,lenghtrow1);  // coloca a row na nova imagem
	  free(lenghtrow1);
	  free(lenghtrow2); //liberta espaço
  }

  return newImage;
}
