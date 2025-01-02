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
// NMec: 118638
// Name: Ana Beatriz Gonçalves Francisco
// NMec: 118971
// Name: Mariana Figueiredo Marques
//
// Date:
//

#include "imageBW.h"

#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "instrumentation.h"

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
  InstrName[0] = "pixmem";           // InstrCount[0] will count pixel array acesses
  InstrName[1] = "operations";      //InstrCount[1] will count the && operations and the memory accesses
  InstrName[2] = "memory used";    //InstrCount[2] will count how many bytes of the memory were used
  InstrName[3] = "runs";          //InstrCount[3] will count the number of runs done while the image was created
}

// Macros to simplify accessing instrumentation counters:
#define PIXMEM InstrCount[0]
#define OPERATIONS InstrCount[1]
#define MEMORYUSED InstrCount[2]
#define RUNS InstrCount[3]

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
  assert(first_value == BLACK || first_value == WHITE);
  assert(width % square_edge == 0 && height % square_edge == 0);

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(width, height);
  check(newImage != NULL, "Couldn't create a new image");
  int pixel_value = (int) first_value;

  //For each row of the image, when the color of the square needs to change,
  //We use XOR to do that because when pixel_value = 1, it becommes pixel_value = 0 and vice versa
  for (uint32 i = 0; i < height; i++) {
    if (i % square_edge == 0){
      pixel_value = first_value ^ (i / square_edge % 2);    
    }
    //The number of rows is the same as the number of runs
    //In the length_rle we need to add 2 because of the first_value and the EOR
    uint32 num_rows = (uint32) width / square_edge;
    uint32 length_rle = num_rows + 2;

    //Increase the memory used with the length of the rle of each row
    //Increase the number of runs with the num_rows because it's the number of runs that are done for each line
    MEMORYUSED += length_rle;
    RUNS += num_rows;
  
    //Add the RLE row to the rows of the image previously created
    newImage->row[i] = AllocateRLERowArray(length_rle);
    
    // Each row is represented by an array of 3 elements [first_pixel, length, EOR]
    // Starts the rle row with the value of the color for the first pixel
    // The length is equal to the size of the squares created
    // When the row is done, the EOR is added to the array
    newImage->row[i][0] = pixel_value;
    for (uint32 j = 0; j < num_rows; j++) {
      newImage->row[i][j+1] = square_edge;
    }
    newImage->row[i][num_rows+1] = EOR;
     
  }
  //Multiplies the size of an integer to the memory that was used
  MEMORYUSED *= sizeof(int);
  InstrPrint();                   //Show the values of the counters
  InstrReset();                  //Reset the counters

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

  //Get the heigth and width of the images
  int w_img1 = ImageWidth(img1);
  int h_img1 = ImageHeight(img1);
  int w_img2 = ImageWidth(img2);
  int h_img2 = ImageHeight(img2);

  //When the width or heigth of the images are not the same, they are not equal
  if (w_img1 != w_img2 || h_img1 != h_img2) {
    return 0;
  }

  for (int i = 0; i < h_img1; i++) {
    int* run_img1 = img1->row[i];
    int* run_img2 = img2->row[i];

    uint32 size_run_img1 = GetSizeRLERowArray(run_img1);
    uint32 size_run_img2 = GetSizeRLERowArray(run_img2);

    //When the sizes of the runs are different, the images are not the same
    if (size_run_img1 != size_run_img2) {
      return 0;
    }

    //If the values inside of the runs are differente, the images are not the same
    for (int j = 0; j < (int) size_run_img1; j++) {
      if (run_img1[j] != run_img2[j]) {
        return 0;
      }
    }
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

//Nova versão da função (versão otimizada)
Image ImageAND(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->height == img2->height && img1->width == img2->width);

  //Get the values of the width and height of the images
  int w_imgs = ImageWidth(img1);
  int h_imgs = ImageHeight(img1);

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(w_imgs, h_imgs);
  check(newImage != NULL, "Couldn't create a new image");

  //In every row of the two images, checks if there is any black pixel,
  //In the same position to create a new image that contains that pixel
  for (int i = 0; i < h_imgs; i++) {
    int* run_img1 = img1->row[i];         //Get the RLE rows of image1
    int* run_img2 = img2->row[i];        //Get the RLE rows of image2
    OPERATIONS += 2;                    //Increase the number of operations because of the 2 accesses to the memory

    //Creates an array to add pixels of the new image
    //It's necessary to add 2 because of the initial pixel value and the EOR
    int* arrayRLE = AllocateRLERowArray(w_imgs + 2);

    //Variables that will help to create the arrayRLE
    int index_img1 = 2, index_img2 = 2;
    int rle_index = 1;
    int value_img1 = run_img1[0];
    int value_img2 = run_img2[0];
    int size_color1 = run_img1[1];
    int size_color2 = run_img2[1];
    int pixel = value_img1 && value_img2;
    OPERATIONS++;                     //Increase the number of operations because of the && operator

    //The first pixel of the arrayRLE is the result of the && operator
    arrayRLE[0] = pixel;              
    
    //While the size_color is not the EOR, the arrayRLE will have new pixels
    //The color of the pixel will always be the result of the && operator between the pixels of two images
    while (size_color1 > 0 && size_color2 > 0) {
      int pixel_color = value_img1 && value_img2;
      OPERATIONS += 2;                //Increase the number of operations because of the 2 && operators
      
      //The size of the run is the minimum between the size of the color1 and the color2
      //If the size of one square is smaller than the other, it'll be the size of the run (intersection between runs)
      int lower = (size_color1 < size_color2) ? size_color1 : size_color2;

      //If the pixel color has changed or if it is a new run,
      //The arrayRLE needs to have a new value
      //Increase the number of runs in 2
      //Because the run of the new image is new and the run of one of the images is also new
      if ((pixel_color != pixel) || rle_index == 1) {
        arrayRLE[rle_index++] = lower;
        RUNS+=2;                     
      } else {
        //If it's the same run, the value of the runs is incremented only once
        //Because the run of the new image will change
        //And the index of the arrayRLE is decremented becauses the run didn't end
        arrayRLE[rle_index - 1] += lower;
        PIXMEM += sizeof(pixel);
        RUNS++;
      }

      //Update the values of the runs
      size_color1 -= lower;
      size_color2 -= lower;

      //If the run of image1 ends, the color of the pixel changes (due to the xor operand)
      //And the size of the next run is updated
      if (size_color1 == 0 && run_img1[index_img1] != EOR) {
        value_img1 ^= 1;
        size_color1 = run_img1[index_img1++];
        OPERATIONS++;                         //Increase one due to the && operator
      }

      //If the run of image2 ends, the color of the pixel changes (due to the xor operand)
      //And the size of the next run is updated
      if (size_color2 == 0 && run_img2[index_img2] != EOR) {
        value_img2 ^= 1;
        size_color2 = run_img2[index_img2++];
        OPERATIONS++;                         //Increase one due to the && operator
      }

      //Updates the value of the pixel for the next iteration
      pixel = pixel_color;
    }

    // When the row is done, the EOR is added to the array
    arrayRLE[rle_index++] = EOR;
    RUNS++;                             //Increase the number of runs in one because of the EOR

    //Add the arrayRLE to the rows of the new image
    newImage->row[i] = arrayRLE;
    OPERATIONS++;                     //Increase one due to the memory access
  }

  InstrPrint();                       //Show the values of the counters
  InstrReset();                      //Reset the counters

  return newImage;
}

//Versão Antiga (Não está otimizada)
// Image ImageAND(const Image img1, const Image img2) {
//   assert(img1 != NULL && img2 != NULL);
//   assert(ImageIsEqual(img1, img2) == 0);

//   //Get the values of the width and height of the images
//   int w_imgs = ImageWidth(img1);
//   int h_imgs = ImageHeight(img1);
//   int runs = 0;

//   Image newImage = AllocateImageHeader(w_imgs, h_imgs);

//   //In every row of the two images, checks if there is any black pixel,
//   //In the same position to create a new image that contains that pixel
//   for (int i = 0; i < h_imgs; i++) {
//     int* run_img1 = img1->row[i];           //Get the compressed rows of image1
//     int* run_img2 = img2->row[i];          //Get the compressed rows of image2

//     //Creates an array to add pixels of the new image
//     //And checks if the raw row was created 
//     uint8* RAW_row = malloc(w_imgs * sizeof(uint8));
//     check(RAW_row != NULL, "Couldn't create a new raw row"); 

//     //Uncompress the rows to see the real value of each pixel
//     uint8* uncompRow_img1 = UncompressRow(w_imgs, run_img1);
//     uint8* uncompRow_img2 = UncompressRow(w_imgs, run_img2);

//     //See if every pixel verifies the condition and add it to the raw_row
//     for (int j = 0; j < w_imgs; j++) {
//       RAW_row[j] = uncompRow_img1[j] && uncompRow_img2[j];
//       runs++;
//     }

//     //Compress the raw row to a rle format so it's possible to create a new image
//     //Every row is added to the same image
//     int* newRLE_row = CompressRow(w_imgs, RAW_row);
//     newImage->row[i] = newRLE_row;

//     MEMORYUSED += w_imgs * sizeof(uint8);
//     MEMORYUSED += sizeof(newRLE_row);
    
//     //Eliminate the memory that wasn't used
//     free(RAW_row);
//   }
//   PIXMEM += w_imgs * h_imgs * sizeof(uint8);
//   RUNS = runs;
//   InstrPrint();
//   InstrReset();

//   return newImage;
// }

Image ImageOR(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->height == img2->height && img1->width == img2->width);

  //Get the values of the width and height of the images
  int w_imgs = ImageWidth(img1);
  int h_imgs = ImageHeight(img1);

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(w_imgs, h_imgs);
  check(newImage != NULL, "Couldn't create a new image");

  //In every row of the two images, checks if there is white pixels,
  //In the same position to create a new image that contains that pixel
  for (int i = 0; i < h_imgs; i++) {
    int* run_img1 = img1->row[i];         //Get the RLE rows of image1
    int* run_img2 = img2->row[i];        //Get the RLE rows of image2

    //Creates an array to add pixels of the new image
    //It's necessary to add 2 because of the initial pixel value and the EOR
    int* arrayRLE = AllocateRLERowArray(w_imgs + 2);

    //Variables that will help to create the arrayRLE
    int index_img1 = 2, index_img2 = 2;
    int rle_index = 1;
    int value_img1 = run_img1[0];
    int value_img2 = run_img2[0];
    int size_color1 = run_img1[1];
    int size_color2 = run_img2[1];
    int pixel = value_img1 || value_img2;

    //The first pixel of the arrayRLE is the result of the || operator
    arrayRLE[0] = pixel;                
    
    //While the size_color is not the EOR, the arrayRLE will have new pixels
    //The color of the pixel will always be the result of the || operator between the pixels of two images
    while (size_color1 > 0 && size_color2 > 0) {
      int pixel_color = value_img1 || value_img2;
      
      //The size of the run is the minimum between the size of the color1 and the color2
      //If the size of one square is smaller than the other, it'll be the size of the run
      int lower = (size_color1 < size_color2) ? size_color1 : size_color2;

      //If the pixel color has changed or if it is a new run,
      //The arrayRLE needs to have a new value
      if ((pixel_color != pixel) || rle_index == 1) {
        arrayRLE[rle_index++] = lower;
      } else {
        //If it's the same run, the index of the arrayRLE is decremented
        //Because the run didn't end
        arrayRLE[rle_index - 1] += lower;
      }

      //Update the values of the runs
      size_color1 -= lower;
      size_color2 -= lower;

      //If the run of image1 ends, the color of the pixel changes (due to the xor operand)
      //And the size of the next run is updated
      if (size_color1 == 0 && run_img1[index_img1] != EOR) {
        value_img1 ^= 1;
        size_color1 = run_img1[index_img1++];
      }

      //If the run of image2 ends, the color of the pixel changes (due to the xor operand)
      //And the size of the next run is updated
      if (size_color2 == 0 && run_img2[index_img2] != EOR) {
        value_img2 ^= 1;  // Alterna para o próximo valor de pixel de img2
        size_color2 = run_img2[index_img2++];  // Atualiza o comprimento do próximo run de img2
      }

      //Updates the value of the pixel for the next iteration
      pixel = pixel_color;
    }

    // When the row is done, the EOR is added to the array
    arrayRLE[rle_index++] = EOR;

    //Add the arrayRLE to the rows of the new image
    newImage->row[i] = arrayRLE;
  }

  return newImage;
}

Image ImageXOR(Image img1, Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->height == img2->height && img1->width == img2->width);

  //Get the values of the width and height of the images
  int w_imgs = ImageWidth(img1);
  int h_imgs = ImageHeight(img1);

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(w_imgs, h_imgs);
  check(newImage != NULL, "Couldn't create a new image");

  //In every row of the two images, checks if the pixels are different,
  //In the same position to create a new image that contains a black pixel in that position
  for (int i = 0; i < h_imgs; i++) {
    int* run_img1 = img1->row[i];         //Get the RLE rows of image1
    int* run_img2 = img2->row[i];        //Get the RLE rows of image2

    //Creates an array to add pixels of the new image
    //It's necessary to add 2 because of the initial pixel value and the EOR
    int* arrayRLE = AllocateRLERowArray(w_imgs + 2);

    //Variables that will help to create the arrayRLE
    int index_img1 = 2, index_img2 = 2;
    int rle_index = 1;
    int value_img1 = run_img1[0];
    int value_img2 = run_img2[0];
    int size_color1 = run_img1[1];
    int size_color2 = run_img2[1];
    int pixel = value_img1 ^ value_img2;

    //The first pixel of the arrayRLE is the result of the || operator
    arrayRLE[0] = pixel;
    
    //While the size_color is not the EOR, the arrayRLE will have new pixels
    //The color of the pixel will always be the result of the ^ operator between the pixels of two images
    while (size_color1 > 0 && size_color2 > 0) {
      int pixel_color = value_img1 ^ value_img2;
      
      //The size of the run is the minimum between the size of the color1 and the color2
      //If the size of one square is smaller than the other, it'll be the size of the run
      int lower = (size_color1 < size_color2) ? size_color1 : size_color2;

      //If the pixel color has changed or if it is a new run,
      //The arrayRLE needs to have a new value
      if ((pixel_color != pixel) || rle_index == 1) {
        arrayRLE[rle_index++] = lower;
      } else {
        //If it's the same run, the index of the arrayRLE is decremented
        //Because the run didn't end
        arrayRLE[rle_index - 1] += lower;
      }

      //Update the values of the runs
      size_color1 -= lower;
      size_color2 -= lower;

      //If the run of image1 ends, the color of the pixel changes (due to the xor operand)
      //And the size of the next run is updated
      if (size_color1 == 0 && run_img1[index_img1] != EOR) {
        value_img1 ^= 1;
        size_color1 = run_img1[index_img1++];
      }

      //If the run of image2 ends, the color of the pixel changes (due to the xor operand)
      //And the size of the next run is updated
      if (size_color2 == 0 && run_img2[index_img2] != EOR) {
        value_img2 ^= 1;  // Alterna para o próximo valor de pixel de img2
        size_color2 = run_img2[index_img2++];  // Atualiza o comprimento do próximo run de img2
      }

      //Updates the value of the pixel for the next iteration
      pixel = pixel_color;
    }

    //When the row is done, the EOR is added to the array
    arrayRLE[rle_index++] = EOR;

    //Add the arrayRLE to the rows of the new image
    newImage->row[i] = arrayRLE;
  }

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
  assert(img != NULL);

  uint32 width = img->width;
  uint32 height = img->height;

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(width, height);
  check(newImage != NULL, "Couldn't create a new image");

  //For each row, calculates the reverse index and gets the RLE row 
  //That is in that position in the original image and the row is added to the new image
  for (uint32 i = 0; i < height; i++) {
    uint32 reverseIndex = height - 1 - i;
    uint32 num_elems = GetSizeRLERowArray(img->row[reverseIndex]);
    newImage->row[i] = AllocateRLERowArray(num_elems);

    //Copy the RLE row of the reverse index of the image to the index of the new image
    memcpy(newImage->row[i], img->row[reverseIndex], num_elems * sizeof(int));
  }

  return newImage;
}

/// Mirror an image = flip left-right.
/// Returns a mirrored version of the image.
/// Ensures: The original img is not modified.
///
/// On success, a new image is returned.
/// (The caller is responsible for destroying the returned image!)
Image ImageVerticalMirror(const Image img) {
  assert(img != NULL);

  uint32 width = img->width;
  uint32 height = img->height;

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(width, height);
  check(newImage != NULL, "Couldn't create a new image");

  //For each row, gets the number of runs of the RLE row
  //And calculates the initial value of the run
  //If the number of runs is even, the color of the pixel is changed (XOR operand)
  for (uint32 rowIndex = 0; rowIndex < height; ++rowIndex) {
    int runCount = GetNumRunsInRLERow(img->row[rowIndex]);
    int* newRow = AllocateRLERowArray(runCount + 2);
    newRow[0] = (runCount % 2 == 0) ? (img->row[rowIndex][0] ^ 1) : img->row[rowIndex][0];

    //For each run of the row, the new image will have the same run but in the reverse order (runCount - runIndex)
    for (int runIndex = 0; runIndex < runCount; ++runIndex) {
      newRow[runIndex + 1] = img->row[rowIndex][runCount - runIndex];
    }

    //When the row is done, the EOR is added to the array
    newRow[runCount + 1] = EOR;
    newImage->row[rowIndex] = newRow;
  }

  return newImage;
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

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(new_width, new_height);
  check(newImage != NULL, "Couldn't create a new image");

  //Each row of the first image is copied to the new image
  for (uint32 i = 0; i < img1->height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img1->row[i]);
    newImage->row[i] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[i], img1->row[i], num_elems * sizeof(int));
  }

  //Each row of the second image is copied to the new image
  for (uint32 i = 0; i < img2->height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img2->row[i]);
    newImage->row[img1->height + i] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[img1->height + i], img2->row[i], num_elems * sizeof(int));
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

  //Starts to create a new image with the values of the width and height
  //If the image can't be created, one message saying that will appear 
  Image newImage = AllocateImageHeader(new_width, new_height);
  check(newImage != NULL, "Couldn't create a new image");

  //For each row, gets the number of runs of each image in that row
  for (uint32 i = 0; i < new_height; i++) {
    uint32 nruns1 = GetNumRunsInRLERow(img1->row[i]);
    uint32 nruns2 = GetNumRunsInRLERow(img2->row[i]);

    //In case the number of runs of the images change but the color of the pixel is the same
    if ((nruns1 % 2 != 0 && img1->row[i][0] != img2->row[i][0]) || (nruns2 % 2 == 0 && img1->row[i][0] == img2->row[i][0])) {
      uint32 runstotal = nruns1 + nruns2;
      newImage->row[i] = AllocateRLERowArray(runstotal + 2);
      //Defines the value of the first pixel of the new image
      newImage->row[i][0] = img1->row[i][0];

      //Copy the runs of the first image to the new image
      for (uint32 j = 1; j <= nruns1; j++) {
        newImage->row[i][j] = img1->row[i][j];
      }
      //After the run of the first image end, it starts the run of the second image
      newImage->row[i][nruns1 + 1] = img2->row[i][1];

      //Copy the runs of the second image to the new image
      for (uint32 j = 2; j <= nruns2; j++) {
        newImage->row[i][nruns1 + j] = img2->row[i][j];
      }
      //When the row is done, the EOR is added to the array
      newImage->row[i][runstotal + 1] = EOR;

    //For cases that the last run of the first image and the first run of the second image are the same
    } else {      
      uint32 runstotal = nruns1 + nruns2 - 1;
      newImage->row[i] = AllocateRLERowArray(runstotal + 2);
      //Defines the value of the first pixel of the new image
      newImage->row[i][0] = img1->row[i][0];
      
      //Copy the runs of the first image to the new image
      for (uint32 j = 1; j <= nruns1; j++) {
        newImage->row[i][j] = img1->row[i][j];
      }
      //Adds the last run of the first image with the first run of the second image
      newImage->row[i][nruns1] += img2->row[i][1];

      //After the run of the first image end, it starts the run of the second image
      for (uint32 j = 1; j <= nruns2; j++) {
        newImage->row[i][nruns1 + j] = img2->row[i][j];
      }
      //When the row is done, the EOR is added to the array
      newImage->row[i][runstotal + 1] = EOR;
    }
  }
  return newImage;
}
