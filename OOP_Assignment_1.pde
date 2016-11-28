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
       
       stroke(254,255,23);
       fill(254,255,23,150);
       triangle(150,540,140,560,160,560);
       
         
       
        stroke(0, 255, 240,200);
        line(0, y, width, y);
        
        y++;
       
        fill(0, 255, 240, 200);
        
       
        
     
        
        textSize(15);
         if(y>=100)
          {
            ellipse(975,100,10,10);
            
            if(965<= mouseX&& mouseX<= 985 && 90<=mouseY&& mouseY <= 110)
            {
              if(mousePressed ==true)
              {
                image(view2,250,100);
                fill(0, 235, 220,120);
                rect(950,100,400,400);
                fill(30,0,30);
                text("The Halo Array, Halos,\n alternatively known as the Sacred\n Rings by the Covenant, \n Fortress Worlds by their creators,\n Installations by the A.I. Monitors\n that run them, and the Great Wheels\n by prehistoric humans, are seven\n (originally there were twelve) massive\n ring-shaped installations constructed by the\n Forerunners throughout the galaxy over \n one hundred thousand years ago as a \nlast resort when combating the parasite known\n as the Flood. When nothing else\n could be done, they activated\n the rings which killed all sentient life\n forms within three radii of the\n galactic center. Not only are they weapons\n of last resort, but the Halo installations\n are also research facilities, \nmainly for the study of the Flood.",951,110);
                
              
              }
            }
           }
        if(y>=230)
        {
          ellipse(600,230,10,10);
           if(590<= mouseX&& mouseX<= 610 && 220<=mouseY&& mouseY <= 240)
            {
              if(mousePressed ==true)
              {
                image(view3,250,100);
                fill(0, 235, 220,120);
                rect(950,100,400,400);
                fill(30,0,30);
                text("Vantage point. Ideal for scouting,\n gathering intel of surroundings. \n Could be used as a sniper nest. ",951,110);
                
              }  
            }
        }
      
        if(y>=500)
        {
          ellipse(350,500,10,10);
          if(340<= mouseX&& mouseX<= 360 && 490<=mouseY&& mouseY <= 510)
            {
              
              if(mousePressed ==true)
              {
                image(view4,250,100);
                fill(0, 235, 220,120);
                 rect(950,100,400,400);
                fill(30,0,30);
                text("Holly brush line.\n Camoflague rate 80%. \n Ideal for recharging suit. ",951,110);
              
              }  
            }
        }