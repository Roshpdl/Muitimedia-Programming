void grayscale(PImage pi) {
   // for each pixel in pixels array
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
   pi.updatePixels();
}
