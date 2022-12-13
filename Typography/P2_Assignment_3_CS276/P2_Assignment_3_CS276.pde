PFont font;
String s = "AREA";
float angle = 0.0;
float n1 = 0;

void setup () {
  size (100, 100);
  font = createFont ("SourceCodePro-Light.otf", 48);
  textFont (font);
  fill(0);
  frameRate(30);
}

void draw() {
  background (204);
  float noice = noise(n1);
  angle += noice;
  for (int i = 0; i < s.length(); i++) {
    float c = sin(angle + i/PI);
    textSize((c + 1.0) * 15 + 10);
    text (s.charAt(i), i*20, 60);
  }
  n1 += 0.03;
}
