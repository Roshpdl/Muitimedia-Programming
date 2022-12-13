/* Roshan Poudel
 * Blur effect
 * created on Nov 26
 */

PImage blurr(PImage img){
  
  img.loadPixels(); //<>//
  PImage blurrImg = createImage(img.width, img.height, RGB);
  color c;
  // Loop through every pixel in the image
  for (int row = 1; row < img.height-1; row++) {   // Skipping top and bottom rows
    for (int col = 1; col < img.width-1; col++) {  // Skipping leftmost and rightmost coloumns
    
      float r = 0, g = 0, b = 0;
      
    // Calculate the average of adjacent pixels for this point
      for (int y = -1; y <= 1; y++) {
        for (int x = -1; x <= 1; x++) {
          int pos = (row + y)*img.width + (col + x);
          //c = img.get(col + x, row + y);
          c = img.pixels[pos];
          r += red(c);
          g += green(c);
          b += blue(c);
        }
      }
      c = color(r/9, g/9, b/9); //average of the colors of adjacent pixels
      // For this pixel in the new image, set the output value based on the average
      blurrImg.pixels[row*blurrImg.width + col] = c;
    }
  }
  blurrImg.updatePixels();
  return blurrImg;
}
