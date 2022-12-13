/*
 *  Grayscale
 *
 *  Convert image to grayscale.
 *
 *  Whenever R=G=B, you get gray;  to get the intensity of the gray, 
 *  average the rgb values.  Output the old and new RGB values and 
 *  display a grayscaled image
 *
 *  Implements the Processing function filter(GRAY);
 *
 *  Created May 2007 by rtomlinson
 *  Modified 24 Sep 2007 by spc
 */

PImage myImage;

void setup() {
  size(100,100);
  surface.setResizable(true);
  myImage = loadImage("large.jpg");  // or other image file of your choice...use Add File... menu item
  // make room for two images side by side
  surface.setSize(myImage.width*2, myImage.height);

  noLoop();
}

void draw() {
  image(myImage, 0, 0);
  grayscale_single(myImage);
  image(myImage, myImage.width, 0);
}
