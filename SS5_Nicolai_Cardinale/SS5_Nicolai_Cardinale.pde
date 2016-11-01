PImage crossbow;
PImage arrow;
import processing.sound.*;
SoundFile file;

int white=255;
int blue=#0C92C1;
int red=#D61313;
int gold=#F2F247;

HLine h1 = new HLine(20, 2.0); 
HLine h2 = new HLine(50, 2.5); 
HLine h3 = new HLine(80, 3.0);
float mouseYSaved = mouseY;
 
void setup(){
size(1000, 1000);
 
frameRate(60);
}


void draw() { 
 background(white);
 h1.update(); 
 fill(blue);
 rect(850, 0 ,150, 300);
 rect(850, 700 ,150, 300);
 fill(red);
 rect(850, 300 ,150, 150);
 rect(850, 550 ,150, 150);
 fill(gold);
 rect(850, 450 ,150, 100);
 
crossbow = loadImage("crossbow.png");
crossbow.resize(300, 200);
imageMode(CENTER);
image(crossbow, 0, mouseY);
} 
 
class HLine { 
  float ypos, speed; 
  HLine (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    
    if (ypos > width+100) { 
      ypos = -40; 

    } 
    if(mousePressed){
    ypos=ypos+35; 
    mouseYSaved = mouseY;
    arrow=loadImage("Arrow.png");
    arrow.resize(100, 50);
    imageMode(CENTER);
    image(arrow, ypos, mouseYSaved);
    
    file = new SoundFile(SS5_Nicolai_Cardinale.this, "BowString.wav");
    file.play();
    }
    else{
      ypos = 0;
    }
  } 
} 