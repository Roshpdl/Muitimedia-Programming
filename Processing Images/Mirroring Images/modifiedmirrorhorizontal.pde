// Function to mirror an image around a horizontal line 
 
void modmirrorHorizontal(PImage pi, float width_, float mirrorPoint) {
  color topPixel;
 
  pi.loadPixels();
  // loop through all columns
  for (int col = 50; col < width_; col++) {
    // loop from 0 to just before the mirrorPoint
    for (int row = 50; row < mirrorPoint; row++) {
      topPixel = pi.get(col, row);
      // put the color into the pixel at (height-1) - y
      pi.set(col, pi.height - 1 - row, topPixel);
      }
  }
  pi.updatePixels();
}
