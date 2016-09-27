
float R=random(100, 800);
float R2=random(0, 600);
float R3=random(0, 400);
float R4=random(0, 400);
float R5=random(0, 200);
float R6=random(0, 50);
float nbm=0;
float nbm2=random(0, 1000);
//float nbm3=random(0, 1000);


float midRed=230;
float rCnt;
float midGrn=130;
float gCnt;
float midBlu=130;
float bCnt;


String direction = "up";

void setup (){
  size (1200, 1000);
 rCnt=midRed;
}

void draw () {
   background (rCnt, gCnt, bCnt);
   
 


//For Red Color
if(direction == "up" && rCnt<255)
  { rCnt+=1; 
}
if(direction == "down" && rCnt>0)
  { rCnt-=1; 
}
if (rCnt>=midRed+20 || rCnt>=255)
  { direction = "down";
}
if (rCnt<=midRed-20 || rCnt<=0){
  direction = "up";
}
//println(rCnt);

//For Green Color
if(direction == "up" && gCnt<255)
  { gCnt+=1; 
}
if(direction == "down" && gCnt>0)
  { gCnt-=1; 
}
if (gCnt>=midGrn+20 || gCnt>=255)
  { direction = "down";
}
if (gCnt<=midGrn-20 || gCnt<=0){
  direction = "up";
}

//For Blue Color
if(direction == "up" && bCnt<255)
  { bCnt+=1; 
}
if(direction == "down" && bCnt>0)
  { bCnt-=1; 
}
if (bCnt>=midBlu+20 || bCnt>=255)
  { direction = "down";
}
if (bCnt<=midBlu-20 || bCnt<=0){
  direction = "up";
}

//Overlay function
 if(mouseY>height/2){
     for(int I=0; I<1000; I=I+300){
      fill(240, 130, 130);
      stroke(240, 130, 130);
      rect(I+50, height, 200, random(-R));
    }
   }
 
 
  if(mouseY<height/2){
   for(int I=0; I<width; I=I+300){
      fill(240, 130, 130);
      stroke(240, 130, 130);
      rect(I+50, 0, 200, random(R));
   }
  }
     if(mousePressed && mouseX<width && mouseY <height){
        nbm=nbm+1;
        fill(rCnt+50, gCnt-50, bCnt+50);
        stroke(rCnt+50, gCnt-50, bCnt+50);
    ellipse(mouseX, mouseY, nbm,nbm);
        fill(0);
        ellipse(mouseX, mouseY,random(1,nbm),random(1,nbm));
        fill(155);
        ellipse(mouseX, mouseY,random(1,nbm),random(1,nbm));
     }else{nbm=0;
   }
  
     //side circles
     
     //Can I make a for statement of a for statement?

if(mouseY>height/2){
for(int C=30; C<random(100,1000); C=C+60){
  fill(0);
 ellipse (C, 30, 50, 50); 
}
for(int C=30; C<random(100,1000); C=C+60){
  fill(0);
 ellipse (C, 90, 50, 50); 
}
for(int C=30; C<random(10,600); C=C+60){
  fill(0);
 ellipse (C, 150, 50, 50); 
}
for(int C=30; C<random(10,600); C=C+60){
  fill(0);
 ellipse (C, 210, 50, 50); 
}
for(int C=30; C<random(10,200); C=C+60){
  fill(0);
 ellipse (C, 270, 50, 50); 
}
for(int C=30; C<random(10,200); C=C+60){
  fill(0);
 ellipse (C, 330, 50, 50); 
}
for(int C=30; C<random(10,200); C=C+60){
  fill(0);
 ellipse (C, 390, 50, 50); 
}
for(int C=1170; C>random(random(1100,100)); C=C-60){
  fill(0);
 ellipse (C, 30, 50, 50); 
}
for(int C=1170; C>random(random(1100,100)); C=C-60){
  fill(0);
 ellipse (C, 90, 50, 50); 
}
for(int C=1170; C>random(random(1100,500)); C=C-60){
  fill(0);
 ellipse (C, 150, 50, 50); 
}
for(int C=1170; C>random(700,1000); C=C-60){
  fill(0);
 ellipse (C, 210, 50, 50); 
}
for(int C=1170; C>random(700,1000); C=C-60){
  fill(0);
 ellipse (C, 270, 50, 50); 
}
for(int C=1170; C>random(1000,1200); C=C-60){
  fill(0);
 ellipse (C, 330, 50, 50); 
}
for(int C=1170; C>random(1000,1200); C=C-60){
  fill(0);
 ellipse (C, 390, 50, 50); 
}
}


if(mouseY<height/2){
for(int C=30; C<random(100,1000); C=C+60){
  fill(0);
 ellipse (C,970, 50, 50); 
}
for(int C=30; C<random(100,1000); C=C+60){
  fill(0);
 ellipse (C, 910, 50, 50); 
}
for(int C=30; C<random(10,600); C=C+60){
  fill(0);
 ellipse (C, 850, 50, 50); 
}
for(int C=30; C<random(10,600); C=C+60){
  fill(0);
 ellipse (C, 790, 50, 50); 
}
for(int C=30; C<random(10,200); C=C+60){
  fill(0);
 ellipse (C, 730, 50, 50); 
}
for(int C=30; C<random(10,200); C=C+60){
  fill(0);
 ellipse (C, 670, 50, 50); 
}
for(int C=30; C<random(10,200); C=C+60){
  fill(0);
 ellipse (C, 610, 50, 50); 
}
for(int C=1170; C>random(random(1100,100)); C=C-60){
  fill(0);
 ellipse (C, 970, 50, 50); 
}
for(int C=1170; C>random(random(1100,100)); C=C-60){
  fill(0);
 ellipse (C, 910, 50, 50); 
}
for(int C=1170; C>random(random(1100,500)); C=C-60){
  fill(0);
 ellipse (C, 850, 50, 50); 
}
for(int C=1170; C>random(700,1000); C=C-60){
  fill(0);
 ellipse (C, 790, 50, 50); 
}
for(int C=1170; C>random(700,1000); C=C-60){
  fill(0);
 ellipse (C, 730, 50, 50); 
}
for(int C=1170; C>random(1000,1200); C=C-60){
  fill(0);
 ellipse (C, 670, 50, 50); 
}
for(int C=1170; C>random(1000,1200); C=C-60){
  fill(0);
 ellipse (C, 610, 50, 50); 
}


   }

}
  
void keyPressed () {
 if(key == ' '){
    
      rCnt=random(0,255);
      midRed=rCnt;
      gCnt=random(0,255);
      midGrn=gCnt;
      bCnt=random(0,255);
      midBlu=bCnt;
  }
  
}