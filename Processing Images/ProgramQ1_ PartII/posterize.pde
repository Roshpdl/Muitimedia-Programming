/* This was the original posterize code that was in LAB03
 * Posterize - reduce the number of reds, greens, blues to 4 each.
 */
 
void posterize(PImage img) {
  img.loadPixels();
  for (int row = 0; row < img.height; row++) {
    for(int col = 0; col < img.width; col++) {
      color c = img.get(col, row);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
 
      if (r < 64) {
         r = 31;
      }  else if (r < 128) {
         r = 95;
      } else if (r < 192) {
         r = 159;
      } else {
         r = 223;
      }
 
      if (g < 64) {
        g = 31;
      } else if (g < 128) {
        g = 95;
      } else if (g < 192) {
        g = 159;
      } else {
        g = 223;
      }
 
      if (b < 64) {
        b = 31;
      } else if (b < 128) {
        b = 95;
      } else if (b < 192) {
        b = 159;
      } else {
        b = 223;
      }
 
     img.set(col, row, color(r, g, b));
    }
  }
 
  img.updatePixels();
}
