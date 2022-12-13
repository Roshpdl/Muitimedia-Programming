
// Angle of rotation around sun and planets
float theta = 0;

void setup() {
  size(650, 700);
}

void draw() {
  background(255);
  stroke(0);

  // Translate to center of window to draw the sun.
  translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, 70, 70);

  // The earth rotates around the sun
  pushMatrix();
  rotate(theta);
  translate(150, 0);
  fill(0, 0, 255);
  ellipse(0, 0, 32, 32);
  
  // The moon rotates around earth
  pushMatrix();
  rotate(theta * 2);
  translate(24, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  popMatrix();
  popMatrix();
  
  //The red planet rotates around the sun
  pushMatrix();
  rotate(theta * 0.5);
  translate(250, 0);
  fill(255, 0, 0);
  ellipse(0, 0, 32, 32);
  
  // Moon #1 rotates around the red planet
  // pushMatrix() is called to save the transformation state before drawing moon #1. 
  // This way we can pop and return to earth before drawing moon #2. 
  // Both moons rotate around the earth (which itself is rotating around the sun).
  pushMatrix(); 
  rotate(-theta*4);
  translate(36, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 12, 12);
  popMatrix();

  // Moon #2 also rotates around the red planet
  pushMatrix();
  rotate(theta*2);
  translate(24, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  popMatrix();

  popMatrix();
  theta += 0.01;
}
