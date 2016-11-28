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
            background(0,0,0);
       image(view6,500,5);
       fill(255,255,255,op);
       text("Loading....",575,650);
       op  = op+5;
       
     
     
     
     if(time>100)
     {
       
       background(view);
       if(keyPressed==true)
        {
          overshield_sound = true;
          fill(overshield);
           noStroke();
          rect(0,0,2000,2000);
          power = power - 1.01;
          
        }
        textSize(30);
         fill(0, 255, 240, 200);
        if(y<=712)
        {
          text("Scanning....",1000,50);
        }
         else
        {
          text("Scanning Complete", 1000,50);
        }
         
       
       stroke(0,0,0);
       fill(100,255,100,200);
       
       beginShape();
       vertex(1200,600);
       vertex(1300,600);
       vertex(1300,595);
       vertex(1305,595);
       vertex(1305,585);
       vertex(1300,585);
       vertex(1300,580);
       vertex(1200,580);
       endShape(CLOSE);
       fill(0,0,0);
       textSize(10);
       text(power,1225,590);
       
       stroke(0, 255, 240,200);
       fill(0, 255, 240, 50);
       
       ellipse(150,550,200,200);
       ellipse(150,550,150,150);
       ellipse(150,550,100,100);
       