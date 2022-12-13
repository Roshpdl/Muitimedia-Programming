/**

* Homework 1 CS276 
* Question number 2 Part II
* Sept 22
* Author - Roshan Poudel


**/


PImage myImage;
float movement;

void setup() { 
  // make room for two images side by side
  size(2048, 576);
  myImage = loadImage("sonicboom.jpg");
  image(myImage, 0, 0);
}

void draw() {
  movement = map(mouseX, 0, width, 0, 225);
  myImage = loadImage("sonicboom.jpg");
  threshold(myImage, movement);
  image(myImage, myImage.width, 0);
}




/** Convert to Grayscale

void grayscale(PImage pi) {
   // for each pixel in pixels array
   float t1 = millis();
   pi.loadPixels();
   for (int col = 0; col < pi.width; col++) {
     for (int row = 0; row < pi.height; row ++) {
       // grab the color
       color c = pi.get(col, row);
       // grayscale intensity is average of RGB values
       float gray = red(c) + green(c) + blue(c);
       gray /= 3;
       c = color(gray, gray, gray);
       pi.set(col, row, c);
     }
   }
   float t2 = millis();
   println(t2-t1);

   pi.updatePixels();
}

**/
