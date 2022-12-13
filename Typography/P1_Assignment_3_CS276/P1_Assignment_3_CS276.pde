PFont font;
float x1 = 0.0;
float x2 = 300.0;
float y1 = 0.0;
float y2 = 300;
String[] lines;

void setup() {
  size (300, 300);
  font = createFont("SourceCodePro-Light.otf", 54);
  lines = loadStrings("LRUD.txt");
  printArray(lines);
  textFont(font);

}

void draw() {
  background (0);
  fill(255, 0, 0);
  text(lines[1], x1, 130);
  fill(0, 0, 255);
  text(lines[0], x2, 200);
  fill(0, 255, 0);
  textAlign(CENTER);
  text(lines[2], width/4.3, y2-20);
  fill(126);
  text(lines[3], width/1.3, y1+50);
  x1 += 2;
  y1 += 2;
  if (x1 > 350) {
    x1 = -50;
  }
  if (y1 > 350) {
    y1 = -100;
  }
  x2 -= 2;
  y2 -= 2;
  if (x2 < -50) {
    x2 = 350;
  }
  if (y2 < -50){
    y2 = 400;
  }
  
}
