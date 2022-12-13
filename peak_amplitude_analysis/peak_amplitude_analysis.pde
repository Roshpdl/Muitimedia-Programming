/**
 * This sketch shows how to use the Amplitude class to analyze the changing
 * "loudness" of a stream of sound. In this case an audio sample is analyzed.
 */

import processing.sound.*;

// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;
int x = 0;

// Declare a smooth factor to smooth out sudden changes in amplitude.
// With a smooth factor of 1, only the last measured amplitude is used for the
// visualisation, which can lead to very abrupt changes. As you decrease the
// smooth factor towards 0, the measured amplitudes are averaged across frames,
// leading to more pleasant gradual changes
float smoothingFactor = 0.35;

// Used for storing the smoothed amplitude value
float sum;

public void setup() {
  size(640,360);

  //Load and play a soundfile and loop it
  sample = new SoundFile(this, "goldn.mp3");
  sample.loop();

  // Create and patch the rms tracker
  rms = new Amplitude(this);
  rms.input(sample);
}      

public void draw() {
  // Set background color, noStroke and fill color
  background(0);
  noStroke();
  fill(200, 20, 10);

  // smooth the rms data by smoothing factor
  sum += (rms.analyze() - sum) * smoothingFactor;

  // rms.analyze() return a value between 0 and 1. It's
  // scaled to height/2 and then multiplied by a fixed scale factor
  float rms_scaled = sum * (height/4) * 4;

  // We draw a circle whose size is coupled to the audio analysis
  ellipse(width/2, height/2, rms_scaled, rms_scaled);
  rectMode(CENTER);
  rect(width/2, height/2, 10, rms_scaled + 50);
  rect(width/2, height/2, rms_scaled + 50, 10);
  translate(width/2, height/2);
  rotate(PI/3 + x);
  fill(0, 0, 255);
  rect(width/5, height/5, rms_scaled, rms_scaled);
  ellipse(width/9, height/9, rms_scaled * 0.5, rms_scaled * 0.5);

  x += 2;
  if (x > 360){
    x = 0;
  }
  
}
