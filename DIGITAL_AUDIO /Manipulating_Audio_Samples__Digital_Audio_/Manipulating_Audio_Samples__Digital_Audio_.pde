/*
Author: Roshan Poudel
Manupulating Audio Samples using different functions
Digital Audio HW#5 Qno.4
Nov 7, 2022

Press key 1, 2, or 3 to listen to original sounds and keys 4, 5, or 6 to hear manipulated version of respective sounds.
*/

import processing.sound.*;

//All the major functions in next tabs return AudioSamples

SoundFile file1, file2, file3;
AudioSample pitchChanged, volumeChanged, normalized;

void setup()
{
  size(300, 200);
  background(255);
  //loading audio files
  file1 = new SoundFile(this, "guitarshorttest.wav");
  file2 = new SoundFile(this, "pow.wav");
  file3 = new SoundFile(this, "sitar.wav");
  
  //implementing manipulation functions
  pitchChanged = changePitch(file1);
  volumeChanged = changeVolume(file2, 200); //second parameter denotes the percent increase in volume
  normalized = normalize(file3);
  noLoop();
  
}

void keyPressed() {
switch (key) {
   case '1':
   file1.play();
   break;
   case '2':
     file2.play();
     break;
   case'3':
     file3.play();
     break;
   case '4':
     pitchChanged.play();
     break;
   case '5':
     volumeChanged.play();
     break;
   case'6':
     normalized.play();
     break;
}
}

void draw(){ 
}
 
