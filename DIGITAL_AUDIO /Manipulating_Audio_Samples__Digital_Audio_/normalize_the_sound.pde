
float maxSample(float[] samples) {
  float largest = 0;
  for (int i = 0; i < samples.length; i++) {
    float absolute = abs(samples[i]);
    if (largest < absolute)
      largest = absolute;
  }
  return largest;
}
 
AudioSample normalize(AudioSample chan) {
  float largest;
  float[] samples = new float [chan.frames()];
 
  // read samples from AudioSample into samples array
  chan.read(samples);  
 
  // draw each sample (as many as the window can hold)
  for (int i = 0; i < samples.length; i++) {
    set(i, (int) (height/2 - samples[i]*(height/2-1)), 0);
  }
 
  // find the largest amplitude in the sample buffer
  largest = maxSample(samples);
  println(largest);
 
  // compute a multiplier
  float mult = 1.0 / largest;
 
  // apply the multiplier to every sample
  for (int i = 0; i < samples.length; i++) {
    samples[i] *= mult;
  }
 
  // create new AudioSample object from the samples
  return new AudioSample(this, samples, chan.sampleRate());
}
