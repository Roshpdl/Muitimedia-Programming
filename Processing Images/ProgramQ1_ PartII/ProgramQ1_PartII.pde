/**
* Author - Roshan Poudel
* Created Sept 22
**/

PImage laposterize, laposterize_2;

int[] array_of_rgb = {23, 150, 225, 40}; //for posterize_2

void setup() {
  size(100,100);
  surface.setResizable(true);
  
  laposterize = loadImage("laferrari.jpg");
  laposterize_2 = loadImage("laferrari.jpg");
  
  posterize(laposterize);
  posterize_2(laposterize_2, array_of_rgb);
  
  surface.setSize(laposterize.width*2, laposterize.height);
  
  noLoop();
}

void draw() {
  
  image(laposterize, 0, 0);
  image(laposterize_2, laposterize.width, 0);
  
  noLoop();
}
