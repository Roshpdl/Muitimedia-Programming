/**

* Thresholding function for Programming Part of HW1
* Created by Roshan Poudel
* Sept 22
*

**/


void threshold(PImage pi, float a){
  
  if (0 <= a && a <= 255) {
    pi.loadPixels();
    for (int col = 0; col < pi.width; col++) {
     for (int row = 0; row < pi.height; row ++) {
       // grab the color
       color c = pi.get(col, row);
       // grayscale intensity is average of RGB values
       float gray = red(c) + green(c) + blue(c);
       gray /= 3;
       if (gray > a) {
       c = 225; //white color
       }
       else {
         c = 0; //black color
       }
       pi.set(col, row, c);
     }
   }
   pi.updatePixels();
  }
  else {
    println("Please use the value of the second argument between 0 and 225\n");
  }
}
