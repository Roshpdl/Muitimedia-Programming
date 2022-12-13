/*
 * Charcoal - reduce the colors to black or white based on the luminance values
 *   luminance < 128 is black, otherwise white 
 */
 
PImage charcoalish(PImage img) {
  img.loadPixels();
  
  //creating a new image of the exact same dimensions as the image to be processed
  PImage charcoalImg = createImage(img.width, img.height, RGB);
 
  for(int row = 0; row < img.height; row++) {
    for(int col = 0; col < img.width; col++) {
      color c = img.get(col, row);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
 
      float luminance = (r + g + b) / 3.0;
 
      if (luminance < 128) {
        charcoalImg.set(col, row, color(0, 0, 0));
      } else {
        charcoalImg.set(col, row, color(255, 255, 255));
      }
    }
  }
 
  charcoalImg.updatePixels();
  return charcoalImg;
}
