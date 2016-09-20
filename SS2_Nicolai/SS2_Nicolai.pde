
//Nicolai Cardinale
//Drawing Program

//Instructions
//1 = black
//2-8 = colors
//9 = eraser
//0 = clear screen 
//q-r = stroke weight
//z = star
//Mouse = Draw!!

int white = 255;


void setup () {
  size (800, 800);
  background (255);
}
void draw () {
  //Level 1: Star
  if (key == 'z') {
    line (200, 600, 300, 400);
    line (200, 600, 400, 500);
    line (400, 500, 600, 600);
    line (600, 600, 500, 400);
    line (500, 400, 650, 300);
    line (650, 300, 470, 300);
    line (470, 300, 400, 150);
    line (400, 150, 330, 300);
    line (330, 300, 150, 300);
    line (150, 300, 300, 400);
  }
  //Level 2: tree
  if (key == 'x') {
   ellipse (200, 810, 100, 50);
   ellipse (100, 810, 50, 30);
   line (260, 800, 280, 790);
   line (280, 790, 290, 780);
   line (290, 780, 300, 760);
   line (300, 760, 310, 720);
   line (310, 720, 320, 650);
   line (320, 650, 330, 530);
   line (330, 530, 335, 430);
   line (335, 430, 330, 330);
   line (330, 330, 320, 260);
   line (320, 260, 280, 270);
   line (280, 270, 270, 265);
   line (270, 265, 255, 260);
  }
}


void keyPressed () {
if (key == '0'){
  background (white);
}

//Line Color
if (key == '1') {
  stroke (0);
}
if (key == '2') {
  stroke (140, 30, 30);
}
if (key == '3') {
  stroke (100, 100, 30);
}
if (key == '4') {
  stroke (30, 100, 30);
}
if (key == '5') {
  stroke (30, 100, 100);
}
if (key == '6') {
  stroke (30, 30, 150);
}
if (key == '6') {
  stroke (250, 200, 200);
}
if (key == '7') {
  stroke (150, 250, 150);
}
if (key == '8') {
  stroke (50, 250, 250);
}
if (key == '9') {
  stroke (255, 255, 255);
}



//Line Thickness
if (key == 'q') {
  strokeWeight (1); 
}
if (key == 'w') {
  strokeWeight (5); 
}
if (key == 'e') {
  strokeWeight (10); 
}
if (key == 'r') {
  strokeWeight (20); 
}

}

void mouseDragged () {

 line (mouseX, mouseY, pmouseX, pmouseY);
 
}
