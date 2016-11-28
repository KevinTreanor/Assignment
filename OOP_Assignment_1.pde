import processing.sound.*;



void setup()
{
  size(1536,713);
  
  view = loadImage("view.jpg");
  view2 = loadImage("ring.png");
  view3 = loadImage("cliff.png");
  view4 = loadImage("bush.png");
  view5 = loadImage("river.png");
  view6 = loadImage("unsc.png");
  cx = width / 2;
  cy = height / 2;
  smooth();
  
  Recharge = new SoundFile(this, "Shield Recharge.mp3");
  Recharge.play();
  OvShield = new SoundFile(this,"Overshield Power-Up1.mp3");
  Shutdown = new SoundFile(this, "shutdown.mp3");
  Beep = new SoundFile(this, "beep.mp3");
  
  
}

SoundFile Recharge;
SoundFile OvShield;
SoundFile Shutdown;
SoundFile Beep;