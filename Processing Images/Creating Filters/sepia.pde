/*
 * sepia -  "ages" images by modifying pixels to give it a faded yellowish tint.  
 *   First the image is convertd to grayscale, then varying luminance ranges are modified 
 *   until a pleasing effect is achieved.
 */
 
void sepia(PImage img) {
  img.loadPixels();
 
  // convert the picture to grayscale
  grayscale(img);
 
  // determine intensity of the red value (do same for green and blue)
  //   for low intensity (shadow, red<60) make the pixel darker
  //   in the mid-range (red<190), reduce the blue to make it a light brown
  //   in the upper range, reduce the blue a little less to make it a light yellow
 
  for(int col = 0; col < img.width; col++) {
    for(int row = 0; row < img.height; row++) {
      color p = img.get(col, row);
 
      if (red(p) < 60) {
        img.set(col, row, color(0.9 * red(p), 0.9 * green(p), 0.9 * blue(p)));
      } 
      else if (red(p) < 190) {
        img.set(col, row, color(red(p), green(p), 0.8 * blue(p)));
      } 
      else {
        img.set(col, row, color(red(p), green(p), 0.9 * blue(p)));
      }
 
      img.updatePixels();
    }
  }
}
