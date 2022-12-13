PFont font;
String[] headline;
float x = 0;
float text_width;

void setup() {
  size(800, 200);
  font = createFont("Arial", 20);
  textFont(font);
  headline = loadStrings("headline.txt");
   x = width;
}


void draw() {
  
 background(0);
 fill(126);
 rect(0, 160, 800, 50); //(1st and 2nd params: left corner coordinate) (3rd &4th: width & height) (5th; border radius)
 fill(0, 255, 0);
 textAlign(LEFT);
 //following code is for left to right flow of headline
 //text_width = textWidth(headline[0]);
 //text(headline[0], x, 190);
 //x += 2;
 //if (x > 800) {
 //  x = -width;
 //}
 
 //following code is for right to left flow of headline
 text_width = textWidth(headline[0]);
 text(headline[0], x, 190);
 x -= 2;
 if ( x < -text_width) {
   x = width;
 }
 
 
 
}
