/*Roshan Poudel
 * ECHO
 * HW#6 Part 1 Question number 2
 */


SoundFile s1, s2, s3;
int delayTime = 800; //in ms

void setup()
{
  background(255);
  size(100, 100);
  s1 = new SoundFile(this, "example.wav");
  s2 = new SoundFile(this, "ay.wav");
  s3 = new SoundFile(this, "square440.wav");  
 
}


void keyPressed()
{
  switch (key) {
    case '1':
    echo(s1, delayTime);
    break;
    
    case '2':
    echo(s2, delayTime);
    break;
    
    case '3':
    echo(s3, delayTime);
    break;
    
    default:
    break;
  }
}

void draw()
{
}
