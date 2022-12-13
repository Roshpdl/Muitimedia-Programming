
/* Echo function
 * Roshan Poudel
 * HW#6
 */

import processing.sound.*;

float ampl = 1.0;

void echo(AudioSample file, int ms)
{
  AudioSample dest;
  int sizeOfSample = file.frames(); //total frames in a sample
  float[] sampleContents = new float[sizeOfSample];
  file.read(sampleContents);
  dest = new AudioSample(this, sampleContents);
  while (ampl > 0.01)
  {
    dest.amp(ampl);
    ampl *= 0.5;
    delay(ms);
    dest.play();
  } 
}
