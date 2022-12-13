PImage img;

void setup() {
  size(100,100);
  surface.setResizable(true);
  img = loadImage("image.jpg");
  surface.setSize(img.width, img.height);
  noLoop();
}

void draw() {
  
  modmirrorHorizontal(img, img.width/2, img.height/2);
  image(img, 0, 0);
  save("LAB#4Q4.jpg");
}
