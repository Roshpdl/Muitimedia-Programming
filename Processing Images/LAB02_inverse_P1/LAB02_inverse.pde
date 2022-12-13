/*
 *  Invert Image
 *
 *  Create a negative of the given picture.
 *  Implementation of the Processing filter(INVERT)
 *
 *  Created May 2007 by rtomlinson
 *  Modified Sep 24 2007 by spc
 */

PImage myImage;

void setup() {
  size(100,100);
  surface.setResizable(true);
  myImage = loadImage("med.jpg");
  surface.setSize(myImage.width*2, myImage.height);
  noLoop();
}

void draw() {
  image(myImage, 0, 0);
  float t1 = millis();
  negativize_single(myImage);
  float t2 = millis();
  println(t2-t1);
  image(myImage, myImage.width, 0);
}
