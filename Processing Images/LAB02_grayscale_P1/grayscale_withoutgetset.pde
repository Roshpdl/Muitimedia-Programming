void grayscale_nested(PImage pi) {
   // for each pixel in pixels array
   float t1 = millis();
   pi.loadPixels();
   for (int col = 0; col < pi.width; col++) {
     for (int row = 0; row < pi.height; row ++) {
       // grab the color
       color c = pi.pixels[row*pi.width +col];   //you can also use pi.get(col, row)
       // grayscale intensity is average of RGB values
       float gray = red(c) + green(c) + blue(c);
       gray /= 3;
       c = color(gray, gray, gray);
       pi.pixels[row*pi.width + col] = c;  //You can also use pi.set(col, row, c)
     }
   }
   float t2 = millis();
   println(t2-t1);

   pi.updatePixels();
}
