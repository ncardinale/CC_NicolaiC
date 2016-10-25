PImage crossbow;
PImage arrow;


HLine h1 = new HLine(20, 2.0); 
HLine h2 = new HLine(50, 2.5); 
HLine h3 = new HLine(80, 3.0);
int mouseYSaved = mouseY;
 
void setup(){
size(1000, 1000);
 
frameRate(20);
}


void draw() { 
background(255);
  h1.update(); 
 


 fill(#0C92C1);
 rect(850, 0 ,150, 300);
 rect(850, 700 ,150, 300);
 fill(#D61313);
 rect(850, 300 ,150, 150);
 rect(850, 550 ,150, 150);
 fill(#F2F247);
 rect(850, 450 ,150, 100);
 
crossbow = loadImage("Crossbow.png");
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
    ypos=ypos+35; 
    if (ypos > width+100) { 
      ypos = -100; 
    } 
    if(mousePressed){
    int mouseYSaved = mouseY;
    println("MouseYSaved = " + mouseYSaved);
    arrow=loadImage("Arrow.png");
    arrow.resize(100, 50);
    imageMode(CENTER);
    image(arrow, ypos, mouseYSaved);
    }
    else{
      ypos = 0;
      
      
    }
  } 
} 