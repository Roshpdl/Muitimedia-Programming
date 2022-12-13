/*Author: Roshan Poudel
*Project 2
CS276
*/

import oscP5.*;
import netP5.*;

OscP5 oscP5;

//For peak amplitude analysis
import processing.sound.*;
SoundFile sample;
Amplitude rms;
int x = 0;

// Declare a smooth factor to smooth out sudden changes in amplitude.
// A smooth factor of 1 can lead to very abrupt changes. As we decrease the
// smooth factor towards 0, the measured amplitudes are averaged across frames,
// leading to more pleasant gradual changes
float smoothingFactor = 0.35;

// Used for storing the smoothed amplitude value
float sum;

//For Rasterization
PImage img;
int pixpos; //location of the pixel

void setup()
{
  //For rasterization
  size(1000, 1000, P3D);
  img = loadImage("dodge.jpg");
  img.resize(1000, 1000);
  img.loadPixels();
  
  //For beatsync
  sample  = new SoundFile(this, "hourglass.mp3");
  sample.loop();
  rms = new Amplitude(this);
  rms.input(sample);
  
  smooth(4);
  frameRate(60);
  sphereDetail(3);
  //background(0);
  noStroke();
  
  oscP5 = new OscP5(this, 9001);
  oscP5.plug(this, "test", "/test");
  
  
}

void draw()
{
  //Laying out environment for rasterization
  background(0);
  fill(255);
  //noStroke();
  //sphereDetail(3);
  float num_tiles = map(mouseX, 0, width, 20, 250); //You can also use mouse x or mouse y to determine the number of tiles
  float tileSize = width/num_tiles;
  
  //Again, laying out environment for audiosync
  //smoothing rs by smoothing factor
  sum += (rms.analyze() - sum) * smoothingFactor;
  
  // rms.analyze() return a value between 0 and 1. It's
  // scaled to height/4 and then multiplied by a fixed scale factor
  float rms_scaled = sum * (height/3) * 4;
  
  push();
  //translate(tileSize/2, tileSize/2); //2D
  translate(width/2, height/2); //3D
  rotateY(radians(frameCount));
  
  //tiles in the x axis of the image
  for (int x = 0; x < num_tiles; x++){
    //tiles in the y-axis of the image
    for (int y = 0; y < num_tiles; y ++){
      //getting the color of the pixel
      pixpos = int(x*tileSize) + int(y*tileSize) * width;
      color c = img.pixels[pixpos];
      //color c = img.get(int(x* tileSize), int(y*tileSize));
      //Now the trick is to get the brightness of the pixel and use it to determine the displaytileSize
      float b = map(brightness(c), 0, 255, 1, 0);
      
      //variable for the depth in z-axis. Also gotten by mapping brightness from -100 to 100 in z-axis
      float z = map(b, 0, 1, -100, 100);
      
      push();
      //translate(x*tileSize, y*tileSize);//2D
      translate(x*tileSize - width/2, y*tileSize - height/2, z);//3D
      //ellipse(0, 0, tileSize*b, tileSize*b);
      //box(tileSize*b*(rms_scaled/800));
      //fill(c);
      sphere(tileSize*b*(rms_scaled/800));
      pop();     
    }
  } 
  pop();
}

void test(int i) {
  if (i == 0){
  noLoop();
  sample.pause();
  
  }
  else loop();
  sample.play();
}

void oscEvent(OscMessage m) {
  println("Received an osc message");
  println(", address pattern: " + m.addrPattern());
  println(", typetag: " + m.typetag());
  println(", " + m.get(0).intValue());
}
