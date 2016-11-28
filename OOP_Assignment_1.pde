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
PImage view;
PImage view2;
PImage view3;
PImage view4;
PImage view5;
PImage view6;
PFont font;
int time = 0;
int y;
float cx, cy;
float trailLength =50;
float theta = 0;
float radius = 100;
float speed = 0.01;
float power = 99.99;
color overshield = color(255,100,220,100);
int op =0;
boolean overshield_sound = false;
boolean shutdown_sound = false;
boolean beep_sound = false;
boolean testbool = true;

void draw()
{
     
     font = createFont("Halo.ttf", 32);
     textFont(font);
     textSize(50);