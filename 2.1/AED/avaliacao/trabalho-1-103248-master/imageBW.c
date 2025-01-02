
/// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
/// 2024

// Student authors (fill in below):
// NMec:103248
// Name:José Miguel Guardado Silva
//
// Date:04/12/2024
//
/////////////////////////////// Includes ///////////////////////////////////////

#include "imageBW.h"
#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "instrumentation.h"

/////////////////////////////// Constants  and Structures //////////////////////////////////////

const int EOR = -1;  // Stored as the last element of a RLE row

// Internal structure for storing RLE BW images
struct image {
  uint32 width;
  uint32 height;
  int** row; 
};

// Check a condition and if false, print failmsg and exit.
static void check(int condition, const char* failmsg) {
  if (!condition) {
    perror(failmsg);
    exit(errno || 255);
  }
}

// Init Image library.  (Call once!)
// Currently, simply calibrate instrumentation and set names of counters.
void ImageInit(void) {
  InstrCalibrate();
  InstrName[0] = "pixmem"; 
}

// Macros to simplify accessing instrumentation counters:
#define PIXMEM InstrCount[0]


/////////////////////////////// Auxiliary Functions //////////////////////////////////////

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
  uint32 num_runs = GetNumRunsInRAWRow(image_width, RAW_row);

  int* RLE_row = malloc((num_runs + 2) * sizeof(int));
  check(RLE_row != NULL, "malloc");

  RLE_row[0] = (int)RAW_row[0];
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
  RLE_row[index] = EOR; 

  return RLE_row;
}

static uint8* UncompressRow(uint32 image_width, const int* RLE_row) {
  assert(image_width > 0);
  assert(RLE_row != NULL);

  uint8* row = (uint8*)malloc(image_width * sizeof(uint8));
  check(row != NULL, "malloc");

  int pixel_value = RLE_row[0];
  uint32 i = 1;
  uint32 dest_i = 0;
  while (RLE_row[i] != EOR) {
    for (int aux = 0; aux < RLE_row[i]; aux++) {
      row[dest_i++] = (uint8)pixel_value;
    }
    i++;
    pixel_value ^= 1;
  }

  return row;
}

// Check if an Image is all the same color
static int  is_all(const Image img, uint8 val) {
  for(uint32 i = 0; i < img->height; i++){

    // If the first pixel value is different from the expected value, return 0
    // If the number of pixels is different from the width, return 0
    // If the third position is not EOR, return 0
    if (*img->row[0] != val || (uint32)*img->row[1] != img->width || *img->row[2] != EOR) {
      return 0;
    }
  }
  return 1;
}

// Makes a copy of an image
static Image ImageCopy(const Image img){

  Image newImage = AllocateImageHeader(img->width, img->height);

  for (uint32 i = 0; i < img->height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img->row[i]); // Gets the size of the row
    newImage->row[i] = AllocateRLERowArray(num_elems); // Allocates the new row
    memcpy(newImage->row[i], img->row[i], num_elems * sizeof(int)); // Copy old row to new row
  }

  return newImage;
}

/////////////////////////////// Image Management Functions //////////////////////////////////////

/// Create a new BW image, either BLACK or WHITE. width, height : the dimensions of the new image. val: the pixel color (BLACK or WHITE).
Image ImageCreate(uint32 width, uint32 height, uint8 val) {
  assert(width > 0 && height > 0); // Requires: width and height must be non-negative
  assert(val == WHITE || val == BLACK); // Requires: val is either BLACK or WHITE.

  Image newImage = AllocateImageHeader(width, height);

  int pixel_value = (int)val;

  for (uint32 i = 0; i < height; i++) {
    newImage->row[i] = AllocateRLERowArray(3);
    newImage->row[i][0] = pixel_value;
    newImage->row[i][1] = (int)width;
    newImage->row[i][2] = EOR;
  }

  return newImage;
}

/// Create a new BW image, with a perfect CHESSBOARD pattern. width, height : the dimensions of the new image. val: the color (BLACK or WHITE) of the first image pixel.
/// square_edge : the lenght of the edges of the sqares making up the chessboard pattern.
Image ImageCreateChessboard(uint32 width, uint32 height, uint32 square_edge,uint8 first_value) {
  assert(width > 0 && height > 0); //Requires: width and height must be non-negative
  assert(first_value == WHITE || first_value == BLACK); // Requires: val is either BLACK or WHITE.
  assert(width % square_edge == 0 && height % square_edge == 0); //Requires: width and height must be multiples of the lenght of the squares

  Image newImage = AllocateImageHeader(width, height);
  int pixel_value = (int)first_value;

  for(uint32 i = 0; i < height; i++){

    // Allocate the row array with number of squares + 2 for EOR and first color
    newImage->row[i] = AllocateRLERowArray(width / square_edge + 2); 
    // Initialize the first color of the row based on square number
    newImage->row[i][0] = pixel_value ^ ((i / square_edge) % 2);
    uint32 index = 1;

    // Loop through each square in the row
    for(uint32 j = 0; j < width; j += square_edge){
      newImage->row[i][index++] = square_edge;
    }

    // Mark the end of the row with EOR
    newImage->row[i][index] = EOR;
  }


  return newImage;
}

/// Destroy the image allocated in the memory pointed to by (*imgp).
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

/// Prints the image in RAW format
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
      pixel_value ^= 1; // Switch (XOR) to the pixel value for the next run, if any
    }
    printf("\n");
  }
  printf("\n");
}

/// Prints the image in RLE format
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

/////////////////////////////// PBM BW File Operations //////////////////////////////////////

static void unpackBits(int nbytes, const uint8 bytes[], uint8 raw_row[]) {
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

static void packBits(int nbytes, uint8 bytes[], const uint8 raw_row[]) {
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

// Match and skip comment lines in file f. Returns the number of comments skipped.
static int skipComments(FILE* f) {
  char c;
  int i = 0;
  while (fscanf(f, "#%*[^\n]%c", &c) == 1 && c == '\n') {
    i++;
  }
  return i;
}

/// Load a raw PBM file.
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

/////////////////////////////// Information Queries //////////////////////////////////////

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

/// Image Equality
int ImageIsEqual(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);

  // Check if the images have the same dimensions
  if (img1->width != img2->width || img1->height != img2->height) {
    return 0;
  }

  for (uint32 i = 0; i < img1->height; i++) {

    // Check if the rows have the same number of runs
    if (GetNumRunsInRLERow(img1->row[i]) != GetNumRunsInRLERow(img2->row[i])) {
      return 0;
    }
    for (uint32 j = 0; img1->row[i][j] != EOR; j++) {
      // Check if the elements of the rows are the same
      if (img1->row[i][j] != img2->row[i][j]) {
        return 0;
      }
    }
  }

  return 1;
}

/// Image Difference
int ImageIsDifferent(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  return !ImageIsEqual(img1, img2);
}

/////////////////////////////// Boolean Operations on Image Pixels //////////////////////////////////////
/// Operand images are left untouched and must be of the same size.

/// Negate the color of the Image
Image ImageNEG(const Image img) {
  assert(img != NULL);

  uint32 width = img->width;
  uint32 height = img->height;

  Image newImage = AllocateImageHeader(width, height);

  for (uint32 i = 0; i < height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img->row[i]);
    newImage->row[i] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[i], img->row[i], num_elems * sizeof(int));
    newImage->row[i][0] ^= 1; 
  }

  return newImage;
}


/// Logical AND of two images pixels
/// A trial funtion of using RLE encoding was implemented, but it was not functional. However, the function is commented in the end of the file for visualisation.
Image ImageAND(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width && img1->height == img2->height);

  uint32 width = img1->width;
  uint32 height = img1->height;

  // If one of the images is all white, return a white image
  if(is_all(img1, WHITE) || is_all(img2, WHITE)){
    return ImageCreate(width, height, WHITE);
  }

  // If one of the images is all black, return the other image
  if(is_all(img1, BLACK)){
    return ImageCopy(img2);
  }

  if(is_all(img2, BLACK)){
    return ImageCopy(img1);
  }

  // If the images are equal, return one of them
  if (ImageIsEqual(img1, img2)) {
    return ImageCopy(img1);
  }
  
  // If none of the above conditions are met, we need to compare the images
  Image newImage = AllocateImageHeader(width, height);

  for (uint32 i = 0; i < height; i++){
    
    uint8* row1 = UncompressRow(width, img1->row[i]); //Create a raw row from the compressed row of image 1
    uint8* row2 = UncompressRow(width, img2->row[i]); //Create a raw row from the compressed row of image 2

    // Allocate a new row to store the result of the AND operation
    uint8* new_row = (uint8*)malloc(width * sizeof(uint8));
    check(new_row != NULL, "malloc");

    // Perform the AND operation on the raw rows
    for (uint32 j = 0; j < width; j++){
      new_row[j] = row1[j] & row2[j];
    }

    // Compress the new row and store it in the new image
    newImage->row[i] = CompressRow(width, new_row);


    // Clean up
    free(row1);
    free(row2);
    free(new_row);
  }
  
  return newImage;
}

Image ImageOR(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width && img1->height == img2->height);

  uint32 width = img1->width;
  uint32 height = img1->height;

  // If one of the images is all black, return a black image
  if(is_all(img1, BLACK) || is_all(img2, BLACK)){
    return ImageCreate(width, height, WHITE);
  }

  // If one of the images is all white, return the other image
  if(is_all(img1, WHITE)){
    return ImageCopy(img2);
  }

  if(is_all(img2, WHITE)){
    return ImageCopy(img1);
  }

  // If the images are equal, return one of them
  if (ImageIsEqual(img1, img2)) {
    return ImageCopy(img1);
  }
  
  // If none of the above conditions are met, we need to compare the images
  Image newImage = AllocateImageHeader(width, height);
  
  for (uint32 i = 0; i < height; i++){
    
    uint8* row1 = UncompressRow(width, img1->row[i]); //Create a raw row from the compressed row of image 1
    uint8* row2 = UncompressRow(width, img2->row[i]); //Create a raw row from the compressed row of image 2

    // Allocate a new row to store the result of the OR operation
    uint8* new_row = (uint8*)malloc(width * sizeof(uint8));
    check(new_row != NULL, "malloc");

    // Perform the OR operation on the raw rows
    for (uint32 j = 0; j < width; j++){
      new_row[j] = row1[j] | row2[j];
    }

    newImage->row[i] = CompressRow(width, new_row); // Compress the new row and store it in the new image

    // Clean up
    free(row1);
    free(row2);
    free(new_row);
  }
  

  return newImage;
}

Image ImageXOR(Image img1, Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width && img1->height == img2->height);

  uint32 width = img1->width;
  uint32 height = img1->height;
  
  // Check if the images are equal , if so, return a white image
  if (ImageIsEqual(img1, img2)) {
    return ImageCreate(width, height, WHITE);
  }

  // If none of the above conditions are met, we need to compare the images
  Image newImage = AllocateImageHeader(width, height);
  for (uint32 i = 0; i < height; i++){
    
    uint8* row1 = UncompressRow(width, img1->row[i]); //Create a raw row from the compressed row of image 1
    uint8* row2 = UncompressRow(width, img2->row[i]); //Create a raw row from the compressed row of image 2

    // Allocate a new row to store the result of the XOR operation
    uint8* new_row = (uint8*)malloc(width * sizeof(uint8));
    check(new_row != NULL, "malloc");

    // Perform the XOR operation on the raw rows
    for (uint32 j = 0; j < width; j++){
      new_row[j] = row1[j] ^ row2[j];
    }

    newImage->row[i] = CompressRow(width, new_row); // Compress the new row and store it in the new image

    // Clean up
    free(row1);
    free(row2);
    free(new_row);
  }
  return newImage;
}

/////////////////////////////// Geometric Transformations //////////////////////////////////////
/// The original images are not modified.

/// Mirror an image = flip top-bottom.
Image ImageHorizontalMirror(const Image img) {
  assert(img != NULL);

  uint32 width = img->width;
  uint32 height = img->height;
  Image newImage = AllocateImageHeader(width, height);

  for(uint32 i = 0; i < height; i++){
    uint32 num_elems = GetSizeRLERowArray(img->row[height - i - 1]); // Gets the size of the mirrored row of the original image
    newImage->row[i] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[i], img->row[height - i - 1], num_elems * sizeof(int)); // Copy the mirrored row of the original image

  }
  return newImage;
}

/// Mirror an image = flip left-right.
Image ImageVerticalMirror(const Image img) {
  assert(img != NULL);

  uint32 width = img->width;
  uint32 height = img->height;

  Image newImage = AllocateImageHeader(width, height);

  for(uint32 i = 0; i < height; i++){
    uint32 num_elems = GetSizeRLERowArray(img->row[i]);
    newImage->row[i] = AllocateRLERowArray(num_elems);

    // Checks the last pixel of the row and sets it as the first pixel of the new row
    if(GetNumRunsInRLERow(img->row[i]) % 2 != 0){
      newImage->row[i][0] = img->row[i][0]; // If the number of runs in the row is odd, the first pixel is the same
    }else{
      newImage->row[i][0] = img->row[i][0] ^ 1; // If the number of runs in the row is even, the first pixel is the opposite
    }

    // Copy the rest of the elements in reverse order
    for (uint32 j = 1; j < num_elems-1; j++){
      newImage->row[i][j] = img->row[i][num_elems - j - 1];
    }

    // Mark the end of the row with EOR
    newImage->row[i][num_elems - 1] = EOR;
  }

  return newImage;
}

/// Replicate img2 at the bottom of imag1, creating a larger image
Image ImageReplicateAtBottom(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width); /// Requires: the width of the two images must be the same.

  uint32 new_width = img1->width;
  uint32 new_height = img1->height + img2->height;

  Image newImage = AllocateImageHeader(new_width, new_height);

  /// Copy the rows of the first image to the new image
  for (uint32 i = 0; i < img1->height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img1->row[i]);
    newImage->row[i] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[i], img1->row[i], num_elems * sizeof(int));
  }
  
  /// Copy the rows of the second image to the new image, after the rows of the first image
  for (uint32 i = 0; i < img2->height; i++) {
    uint32 num_elems = GetSizeRLERowArray(img2->row[i]);
    newImage->row[i+ img1->height] = AllocateRLERowArray(num_elems);
    memcpy(newImage->row[i + img1->height], img2->row[i], num_elems * sizeof(int));
  }

  return newImage;
}

/// Replicate img2 to the right of imag1, creating a larger image
Image ImageReplicateAtRight(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->height == img2->height); /// Requires: the height of the two images must be the same.

  uint32 new_width = img1->width + img2->width;
  uint32 new_height = img1->height;

  Image newImage = AllocateImageHeader(new_width, new_height);

  for(uint32 i = 0; i < new_height; i++){
    uint32 num_elems = GetNumRunsInRLERow(img1->row[i]) + GetNumRunsInRLERow(img2->row[i]) + 2; // Gets the size of the new row by joining the runs of the two rows, plus 2 for the first pixel and EOR
    newImage->row[i] = AllocateRLERowArray(num_elems);

    // First pixel is equal to the first pixel of the first image
    newImage->row[i][0] = img1->row[i][0];
    
    // Copy the runs of the first image to the new row
    for (uint32 j = 1; j <= GetNumRunsInRLERow(img1->row[i]); j++)
    {
      newImage->row[i][j] = img1->row[i][j];
    }

    // When starting the runs of the second image, checks to see if the first pixel of the row is the same as the last pixel of the first image
    // In order to continue the last color, or change it
    for (uint32 j = GetNumRunsInRLERow(img1->row[i]); j <= GetNumRunsInRLERow(img1->row[i]) + GetNumRunsInRLERow(img2->row[i]); j++)
    {
      /// Checks the color of the last pixel of the first image in comparisson to the last(pixel is the same color)
      if(GetNumRunsInRLERow(img1->row[i]) % 2 != 0){
        /// If the last color is the not same as the start of the second image
        if(img1->row[i][0] != img2->row[i][0]){ 
          // Skips the first run, and adds the rest of the runs of the second image
          if(j > GetNumRunsInRLERow(img1->row[i])){
            newImage->row[i][j] = img2->row[i][j - GetNumRunsInRLERow(img1->row[i])];
          }
        /// If the last color is the same as the start of the second image
        }else{
          // On the first run, adds the number of pixels to the last run of the first image
          if(j == GetNumRunsInRLERow(img1->row[i])){
            newImage->row[i][j] += img2->row[i][j - GetNumRunsInRLERow(img1->row[i]) + 1];
          // On the rest of the runs, adds the runs of the second image
          }else{
            newImage->row[i][j] = img2->row[i][j - GetNumRunsInRLERow(img1->row[i]) + 1];
          }
        }
      /// Checks the color of the last pixel of the first image in comparisson to the last(pixel is not the same color)
      }else{
        /// If the last color is the not same as the start of the second image
        if(img1->row[i][0] == img2->row[i][0]){
          // Skips the first run, and adds the rest of the runs of the second image
          if(j > GetNumRunsInRLERow(img1->row[i])){
            newImage->row[i][j] = img2->row[i][j - GetNumRunsInRLERow(img1->row[i])];
          }
        /// If the last color is the not same as the start of the second image
        }else{
          // On the first run, adds the number of pixels to the last run of the first image
          if(j == GetNumRunsInRLERow(img1->row[i])){
            newImage->row[i][j] += img2->row[i][j - GetNumRunsInRLERow(img1->row[i]) + 1];
          // On the rest of the runs, adds the runs of the second image
          }else{
            newImage->row[i][j] = img2->row[i][j - GetNumRunsInRLERow(img1->row[i]) + 1];
          }
        }
      }  
    }
    // Mark the end of the row with EOR
    newImage->row[i][num_elems - 1] = EOR;
  }

  return newImage;
}


/*
Image ImageAND(const Image img1, const Image img2) {
  assert(img1 != NULL && img2 != NULL);
  assert(img1->width == img2->width && img1->height == img2->height);

  uint32 width = img1->width;
  uint32 height = img1->height;

  // Check for special cases where optimizations are possible
  if (is_all(img1, WHITE)) {
    return ImageCopy(img2);
  }
  if (is_all(img2, WHITE)) {
    return ImageCopy(img1);
  }
  if (is_all(img1, BLACK) || is_all(img2, BLACK)) {
    return ImageCreate(width, height, BLACK);
  }
  if (ImageIsEqual(img1, img2)) {
    return ImageCopy(img1);
  }

  // Create a new image to store the result
  Image newImage = AllocateImageHeader(width, height);

  for (uint32 i = 0; i < height; i++) {
    int* row1 = img1->row[i];
    int* row2 = img2->row[i];
    int color1 = row1[0], color2 = row2[0];
    int index1 = 1, index2 = 1;
    int run1 = row1[index1], run2 = row2[index2];

    int* newRow = AllocateRLERowArray(width + 2);  // Worst-case allocation
    int newIndex = 0;

    int currentColor = color1 & color2;
    newRow[newIndex++] = currentColor;  // First pixel's color
    int currentRun = 0;

    // Process rows using RLE
    while (run1 != EOR && run2 != EOR) {
      int minRun = (run1 < run2) ? run1 : run2;
      currentRun += minRun;

      // Transition when runs are exhausted
      run1 -= minRun;
      run2 -= minRun;

      if (run1 == 0) {
        index1++;
        if (row1[index1] != EOR) {
          color1 ^= 1;
          run1 = row1[index1];
        }
      }
      if (run2 == 0) {
        index2++;
        if (row2[index2] != EOR) {
          color2 ^= 1;
          run2 = row2[index2];
        }
      }

      // Check if the new color changes
      if ((color1 & color2) != currentColor) {
        newRow[newIndex++] = currentRun;  // Store current run
        currentColor = color1 & color2;  // Update current color
        currentRun = 0;  // Reset run counter
      }
    }

    // Finalize the last run
    if (currentRun > 0) {
      newRow[newIndex++] = currentRun;
    }
    newRow[newIndex] = EOR;  // End of row

    newImage->row[i] = newRow;
  }

  return newImage;
}
*/