// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 5-6: Bouncing Ball
float x = 0;
float speed = 1;
int keypresscount;
PFont font;

void setup() {
  size(500,200);
  smooth();
  font = createFont("Arial", 20);
  textFont(font);
}

void draw() {
  background(255);
  fill(0);
  text("Coordinates of the ball: x = ", 20, 30);
  text(str(x), 280, 30);
  text("y = 100", 400, 30);


  // Add the current speed to the x location.
  x = x + speed;
  
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    speed = speed * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x,100,32,32);
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      speed *= 1.2;
    }
    else if (keyCode == DOWN) {
      speed /= 1.2;
    }
  }
}
