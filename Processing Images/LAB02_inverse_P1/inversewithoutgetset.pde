/* negativize(myImage)
 *  reverse the image by subtracting each color value from max color value
 *  (assume 255).
 */
void negativize_nested(PImage myImage) {
   myImage.loadPixels();
   
   for (int col = 0; col < myImage.width; col++) {
     for (int row = 0; row < myImage.height; row ++) {
       color c = myImage.pixels[row*myImage.width+col];
       // this is all there is to it
       c = color(255 - red(c), 255 - green(c), 255 - blue(c));
       myImage.pixels[row*myImage.width+col] = c;
     }
   }  

   myImage.updatePixels();
}
