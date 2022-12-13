void grayscale_single(PImage pi) {
   // for each pixel in pixels array
   float t1 = millis();
   pi.loadPixels();
   
   for (int i = 0; i < (width*height/2)-width/2; i++) {
       // grab the color
       color c = pi.pixels[i];
       // grayscale intensity is average of RGB values
       float gray = red(c) + green(c) + blue(c);
       gray /= 3;
       c = color(gray, gray, gray);
       pi.pixels[i] = c;
   }
   float t2 = millis();
   println(t2-t1);

   pi.updatePixels();
}
