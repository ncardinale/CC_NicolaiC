//Help escape the room


int currentTime = 0;
int savedTime = 0;
int scene=1;
int timer=0;
void setup (){
  size(2000, 1200);

}

void draw () {
  
  currentTime = millis();
  
   if(scene==3){
      currentTime=0;
    background(0,0,200);
    fill(180);
    rectMode(CORNER);
    stroke(0);
    strokeWeight(5);
    rect(0, height-200, width, 200);
    fill(255);
    rect(50, height-150, 400, 100);
    fill(0);
    textSize(50);
    textAlign(CORNER);
    text("Johnathan443", 75, height-80);
    fill(255);
    rect(100, 100, 1000, 800);
    rect(100, 700, 1000, 300);
    fill(180);
    rect(100, 100, 1000, 100);
    fill(0);
    text("Johnathan443", 140, 170);
    text("Hello?", 120, 680);
     if (currentTime-savedTime>2000){
       text("Hello?", 120, 780);
     }
   }
    
    
  
  if(scene==1){
    background(0,0,200);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("help Escape The Room", width/2, height/4);
    textSize(70);
    text("Start", width/2, 500);
    text("Credits", width/2, 600);
    text("Quit", width/2, 700);
    noFill();
    rectMode(CENTER);
    stroke(0, 0, 200);
    rect(width/2, 470, 200, 100);
    rect(width/2, 575, 250, 100);
    rect(width/2, 680, 200, 100);
    
     if(mouseX>900 && mouseX<1100 && mouseY>430 && mouseY<530){
    fill(0);
    rect(width/2, 470, 200, 100);
    fill(255);
     textSize(70);
     text("Start", width/2, 500);
  }
  
  
   if(mouseX>875 && mouseX<1125 && mouseY>535 && mouseY<635){
    fill(0);
    rect(width/2, 575, 250, 100);
    fill(255);
    textSize(70);
    text("Credits", width/2, 600);
  }
  
   if(mouseX>900 && mouseX<1100 && mouseY>640 && mouseY<740){
    fill(0);
    rect(width/2, 680, 200, 100);
    fill(255);
    textSize(70);
    text("Quit", width/2, 700);
   }
   
  }
  
  
  
  if(scene==2){
    background(0,0,200);
    fill(180);
    rectMode(CORNER);
    stroke(0);
    strokeWeight(5);
    rect(0, height-200, width, 200);
    fill(255);
    rect(50, height-150, 400, 100);
        timer=(millis()/500)%2;
        if(timer==0){fill(0);}
        if(timer==1){fill(255,0,0);}
    textSize(50);
    textAlign(CORNER);
    text("Johnathan443", 75, height-80);
    
   
         
  }
  
  
  
  if(scene==0){
    background(255);
    fill(0);
    textAlign(CENTER);
    textSize(100);
    text("Ignore the credits! play the GAME!", width/2, height/2);
    textSize(50);
    text("Main Menu", width/2, height/1.5);
    
    if(mouseX>width/2-150 && mouseX<width/2+150 &&
    mouseY>height/1.5-100 && mouseY<height/1.5+100){
    fill(0);
    rectMode(CENTER);
    rect(width/2, height/1.5, 300, 100);
    fill(255);
    text("Main Menu", width/2, height/1.5);
    }
    
    
  }
}

void mousePressed() {
   if(scene==1 && mouseX>900 && mouseX<1100 && mouseY>430 && mouseY<530){
     scene=2;
  }
  if(scene == 0 && mouseX>width/2-150 && mouseX<width/2+150 &&
    mouseY>height/1.5-100 && mouseY<height/1.5+100){
    scene=1;
  }
   if(scene == 1 && mouseX>900 && mouseX<1100 && mouseY>640 && mouseY<740){
   exit();
    }
   if(scene == 1 && mouseX>875 && mouseX<1125 && mouseY>535 && mouseY<635){
   scene=0;
   }
    if(scene==2 && mouseX>50 && mouseX<450 && mouseY>height-150 &&mouseY<height-50){
     scene=3;
   }
}