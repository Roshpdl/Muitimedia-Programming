
AudioSample changePitch(SoundFile file)
{
  AudioSample dest;
  int initialSize = file.frames();
  float[] samples = new float[initialSize];
    float[] copy = new float [initialSize/2];
 
  // read SoundFile's sample buffer into array
  file.read(samples);
 
  // copy every other sample from the original AudioSample to the (first half) of the copy
  for (int j = 0, i = 0; j < initialSize/2; j++, i+=2) {
     // copy every other sample from original's sound buffer
     copy[j] = samples[i];
  }
 
   dest = new AudioSample(this, copy);
   return dest;
  
}
