PImage img;

void setup() {
  background(255);
  size(100,100);
  surface.setResizable(true);
  img = loadImage("brothers.png");
  surface.setSize(img.width, img.height);
  
  
}

void draw() {
  img = loadImage("brothers.png");
  tint(0, 153, 204, 126);
  image(img, 0, 0);
  
  tint(255, 0, 0, 100);
  img.resize((int)(img.width/1.1),(int)(img.height/1.1));
  rotate(-PI/8);
  image(img, -50, -100);
  
  img = loadImage("brothers.png");
  tint(200, 100);
  img.resize((int)(img.width/2), (int)(img.height/2));
  rotate(PI/7);
  image(img, -20, 200);
  
  img = loadImage("brothers.png");
  tint(255,100);
  img.resize((int)(img.width/2), (int)(img.height/2));
  rotate(PI/9);
  image(img, 300, 50);

}
