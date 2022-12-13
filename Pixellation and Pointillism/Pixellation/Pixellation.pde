/*
Author: Roshan Poudel
Program to demonstrate Pixellation
Nov 07, 2022
*/


PImage img;

void setup(){
  size(100, 100);
  surface.setResizable(true);
  img = loadImage("tom.jpg");
  surface.setSize(img.width, img.height);
  stroke(0);
}

void draw(){
  background(255);
  img.loadPixels();
  for (int x = 0; x < img.width; x+= 8){
    for (int y = 0; y < img.height; y+=8) {
      int loc = y * img.width + x;
      color c = img.pixels[loc];
      fill(c);
      rect(x, y, 8, 8);  
    }
  }
  //img.updatePixels();
}
