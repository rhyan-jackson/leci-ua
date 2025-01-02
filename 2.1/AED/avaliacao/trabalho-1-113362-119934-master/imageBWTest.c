// imageBWTest - A program that performs some image processing.
//
// This program is an example use of the imageBW module,
// a programming project for the course AED, DETI / UA.PT
//
// You may freely use and modify this code, NO WARRANTY, blah blah,
// as long as you give proper credit to the original and subsequent authors.
//
// The AED Team <jmadeira@ua.pt, jmr@ua.pt, ...>
// 2024

#include <assert.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "imageBW.h"
#include "instrumentation.h"

int main(int argc, char* argv[]) {
  if (argc != 1) {
    fprintf(stderr, "Usage: %s  # no arguments required (for now)\n", argv[0]);
    exit(1);
  }

  // To initalize operation counters
  ImageInit();

  // Creating and displaying some images
  printf("White Image");
  Image white_image = ImageCreate(8, 8, WHITE);
  ImageRAWPrint(white_image);

  printf("Black Image");
  Image black_image = ImageCreate(8, 8, BLACK);
  ImageRAWPrint(black_image);

  printf("Negative of White Image");
  Image image_1 = ImageNEG(white_image);
  ImageRAWPrint(image_1);

  printf("Negative of Black Image");
  Image image_2 = ImageNEG(black_image);
  ImageRAWPrint(image_2);

  printf("Chessboard Image");
  Image image_13 = ImageCreateChessboard(8, 8, 2, 1);
  ImageRAWPrint(image_13);

   //UNCOMMENT TO TEST THE NEXT FUNCTIONS

  printf("Replicate At Bottom: White -> Black\n");
  Image image_3 = ImageReplicateAtBottom(white_image, black_image);
  ImageRAWPrint(image_3);

  printf("image_1 AND image_1\n");
  Image image_4 = ImageAND(image_1, image_1);
  ImageRAWPrint(image_4);

  //printf("image_1 AND image_2\n");
  //Image image_5 = ImageAND(image_1, image_2);
  //ImageRAWPrint(image_5);

  printf("white image AND black image\n");
  Image image_5 = ImageAND(white_image, black_image);
  ImageRAWPrint(image_5);
  
  printf("black image OR white image\n");
  Image image_6 = ImageOR(image_1, image_2);
  ImageRAWPrint(image_6);

  
  printf("image_1 XOR image_1\n");
  Image image_7 = ImageXOR(image_1, image_1);
  ImageRAWPrint(image_7);
  
  printf("image_1 XOR image_2\n");
  Image image_8 = ImageXOR(image_1, image_2);
  ImageRAWPrint(image_8);

  printf("Replicate at right image_6 -> image_7\n");
  Image image_9 = ImageReplicateAtRight(image_6, image_7);
  ImageRAWPrint(image_9);

  printf("Replicate at right image_6 -> image_6\n");
  Image image_10 = ImageReplicateAtRight(image_6, image_6);
  ImageRAWPrint(image_10);

  printf("Horizontal Mirror image_13\n");
  Image image_11 = ImageHorizontalMirror(image_13);
  ImageRAWPrint(image_11);

  printf("Vertical Mirror image_13\n");
  Image image_12 = ImageVerticalMirror(image_13);
  ImageRAWPrint(image_12);

  // Saving in PBM format
  ImageSave(image_7, "image7.pbm");
  ImageSave(image_8, "image8.pbm");


  // Housekeeping
  ImageDestroy(&white_image);
  ImageDestroy(&black_image);
  ImageDestroy(&image_1);

  //UNCOMMENT IF YOU CREATE THOSE IMAGES

  ImageDestroy(&image_2);
  ImageDestroy(&image_3);
  ImageDestroy(&image_4);
  ImageDestroy(&image_5);
  ImageDestroy(&image_6);
  ImageDestroy(&image_7);
  ImageDestroy(&image_8);
  ImageDestroy(&image_9);
  ImageDestroy(&image_10);
  ImageDestroy(&image_11);
  ImageDestroy(&image_12);
  ImageDestroy(&image_13);


  return 0;
}
