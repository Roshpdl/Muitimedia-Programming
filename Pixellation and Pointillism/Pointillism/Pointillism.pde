/*
Author: Roshan Poudel
Program to demonstrate Pointillism. Screenshot attached to DokuWiki Page
As you drag the mouse across the window, the points get enlarged.
Nov 7, 2022
Image Manipulation: Qno.1 HW#4
*/



PImage img;
float ellipseSize = 10;

void setup(){
  size(500, 500);
  surface.setResizable(true);
  img = loadImage("tom.jpg");
  surface.setSize(img.width, img.height);
  background(255);
  noStroke();
}


void draw(){
  ellipseSize = map(mouseX, 0, width, 5, 30);
  img.loadPixels(); //loads pixels[] array of the image
  int randx = int(random(img.width));
  int randy = int(random(img.height));
  int pixelnum = randx + (randy * img.width); //getting the pixelnumber in our pixels[] array
  color c = img.pixels[pixelnum];
  fill(c);
  ellipse(randx, randy, ellipseSize, ellipseSize);
  smooth();
}
