/* negativize(myImage)
 *  reverse the image by subtracting each color value from max color value
 *  (assume 255).
 */
void negativize_single(PImage myImage) {
   myImage.loadPixels();
   
   for (int i = 0; i < (width*height/2)-width/2; i++) {
       color c = myImage.pixels[i];
       // this is all there is to it
       c = color(255 - red(c), 255 - green(c), 255 - blue(c));
       myImage.pixels[i] = c;
     }  
  myImage.updatePixels();
}
