
AudioSample changeVolume(SoundFile file, int percent){
  AudioSample dest;
  int initialSize = file.frames();
  float[] samples = new float[initialSize];
  float[] copy = new float [initialSize];
 
  // read SoundFile's sample buffer into array
  file.read(samples);
 
  for (int j = 0, i = 0; j < initialSize; j++, i++) {
     // copy every other sample from original's sound buffer
     copy[j] = samples[i] * (1+(percent/100));
  }
 
   dest = new AudioSample(this, copy);
   return dest;
}
