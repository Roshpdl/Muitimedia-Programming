/**
* Modified by Roshan Poudel
**/


void posterize_2(PImage img, int[] arr) {
  img.loadPixels();
  for (int row = 0; row < img.height; row++) {
    for(int col = 0; col < img.width; col++) {
      color c = img.get(col, row);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
 
      if (r < 64) {
         r = arr[0];
      }  else if (r < 128) {
         r = arr[1];
      } else if (r < 192) {
         r = arr[2];
      } else {
         r = arr[3];
      }
 
      if (g < 64) {
        g = arr[0];
      } else if (g < 128) {
        g = arr[1];
      } else if (g < 192) {
        g = arr[2];
      } else {
        g = arr[3];
      }
 
      if (b < 64) {
        b = arr[0];
      } else if (b < 128) {
        b = arr[1];
      } else if (b < 192) {
        b = arr[2];
      } else {
        b = arr[3];
      }
 
     img.set(col, row, color(r, g, b));
    }
  }
 
  img.updatePixels();
}
