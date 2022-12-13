/* Roshan Poudel
 * Improved Charcoal Effect
 * Homework #6 Part 1
 */

PImage img1, img2;

void setup()
{
  size(1000, 800);
  img1 = loadImage("mayur.jpg");
  img2 = loadImage("tree.jpg");
  img1.resize(width/3, height/2);
  img2.resize(width/3, height/2);
  
}

void draw()
{
  image(img1, 0, 0);
  image(charcoalish(img1), img1.width + 10, 0); //just charcoal without blur
  image(charcoalish(blurr(img1)), img1.width*2 + 20, 0); // blurring the image and then converting it to charcoalish
  
  image(img2, 0, img1.height + 10);
  image(charcoalish(img2), img2.width+ 10, img2.height + 10);
  image(charcoalish(blurr(img2)), img2.width*2 + 20, img2.height + 10);
  
  
}
