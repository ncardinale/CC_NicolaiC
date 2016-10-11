//Help escape the room

PImage bombAssemble1;
PImage bombAssemble2;
PImage bombAssemble3;


int millsToBoom = 5000;
int wordHeight = 670;
int currentTime = 0;
int savedTime = 0;
int scene=10;
int timer=0;
int bombTimer=0;
boolean boom = false;
int puzzleOne=int(random(32,34));
void setup (){
  size(2000, 1200);

}

void draw () {
  currentTime = millis();
  //scene 23 is end of intro
  //scene 32 is main game
  
  //Game Scenes
  if(scene==31){
    println("in scene 31");
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
    text("in exacly three minutes. we have to", 120, wordHeight-400);
    text("defuse the bomb by then, or i'll get", 120, wordHeight-300);
    text("blown sky high. I hope you know what", 120, wordHeight-200);
    text("your doing.", 120, wordHeight-100);
    text("Lets do this.", 120, wordHeight);
  if(scene==31 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=puzzleOne;
  }
}

  //Detects if game is over.
  if(scene>=32 && scene<=34 && currentTime-bombTimer>millsToBoom) boom = true;
   
  println("currentTime = " + currentTime);
  println("bombTimer = " + bombTimer);
  println("scene = " + scene);
   
   //Scene/draw switch   
   if(boom){
     drawGameOver();
   } else {
    switch(scene){
      case 30:
        drawScene30();
        if(currentTime-savedTime>2000){
         bombTimer=currentTime;
         savedTime=currentTime;
         scene=31;
       }
      case 32:
        drawScene32();
      case 33:
        drawScene33();
      case 34:
        drawScene34();
    }
    if(scene >= 31) drawBombTimer();
  }
    
  //First Scenes
   if(scene==3){  
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
    text("Hello?", 120, wordHeight);
    
     if (currentTime-savedTime>2000){
       text("Hello?", 120, wordHeight+100);
       text("Who are you?", 120, wordHeight+200);
       text("Whats up?", 120, wordHeight+300);
     }
     
   }
    if(scene==4){
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
    text("Hello?", 120, wordHeight-100);
    text("Hello?", 120, wordHeight);
    }   
    if(scene==4 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=7;
}
    if(scene==7){
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
    text("Hello?", 120, wordHeight-200);
    text("Hello?", 120, wordHeight-100);
    text("Oh thank god, someones there.", 120, wordHeight);
    }
    if(scene==7 && currentTime-savedTime>5000){
       savedTime=currentTime;
  scene=10;
}
//Yes or No to help defuse bomb
 if(scene==10){
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
    text("Listen, there's no time to explain. Right", 120, wordHeight-400);
    text("now, there is a bomb in the room I am", 120, wordHeight-300);
    text("in. I need your help defusing this bomb.", 120, wordHeight-200);
    text("I cant do this alone. Are you willing to", 120, wordHeight-100);
    text("help me?", 120, wordHeight);
    if (currentTime-savedTime>4000){
       text("Yes.", 120, wordHeight+100);
       text("No.", 120, wordHeight+200);
    }
    }
    //Answer Yes
 if(scene==11){
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
    text("now, there is a bomb in the room I am", 120, wordHeight-400);
    text("in. I need your help defusing this bomb.", 120, wordHeight-300);
    text("I cant do this alone. Are you willing to", 120, wordHeight-200);
    text("help me?", 120, wordHeight-100);
    text("Yes.", 120, wordHeight);
 }
 if(scene==11 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=13;
 }
  if(scene==13){
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
    text("in. I need your help defusing this bomb.", 120, wordHeight-400);
    text("I cant do this alone. Are you willing to", 120, wordHeight-300);
    text("help me?", 120, wordHeight-200);
    text("Yes.", 120, wordHeight-100);
    text("Good", 120, wordHeight);
  }
     if(scene==13 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=30;
 }
 
 //Answer No
 if(scene==12){
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
    text("now, there is a bomb in the room I am", 120, wordHeight-400);
    text("in. I need your help defusing this bomb.", 120, wordHeight-300);
    text("I cant do this alone. Are you willing to", 120, wordHeight-200);
    text("help me?", 120, wordHeight-100);
    text("No.", 120, wordHeight);
 }
 if(scene==12 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=14;
 }
 if(scene==14){
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
    text("in. I need your help defusing this bomb.", 120, wordHeight-400);
    text("I cant do this alone. Are you willing to", 120, wordHeight-300);
    text("help me?", 120, wordHeight-200);
    text("No.", 120, wordHeight-100);
    text("Wait.. What?", 120, wordHeight);
 }
  if(scene==14 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=15;
 }
  if(scene==15){
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
    text("I cant do this alone. Are you willing to", 120, wordHeight-400);
    text("help me?", 120, wordHeight-300);
    text("No.", 120, wordHeight-200);
    text("Wait.. What?", 120, wordHeight-100);
    text("Stop messing around and help me.", 120, wordHeight);
    if (currentTime-savedTime>2000){
       text("Ok.", 120, wordHeight+100);
       text("Dont wanna.", 120, wordHeight+200);
    }
 }
 if(scene==16){
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
    text("help me?", 120, wordHeight-400);
    text("No.", 120, wordHeight-300);
    text("Wait.. What?", 120, wordHeight-200);
    text("Stop messing around and help me.", 120, wordHeight-100);
    text("Ok.", 120, wordHeight);
 }
  if(scene==16 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=17;
  }
  if(scene==17){
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
    text("No.", 120, wordHeight-400);
    text("Wait.. What?", 120, wordHeight-300);
    text("Stop messing around and help me.", 120, wordHeight-200);
    text("Ok.", 120, wordHeight-100);
    text("Good", 120, wordHeight);
 }
  if(scene==17 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=30;
  }
 
 if(scene==18){
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
    text("help me?", 120, wordHeight-400);
    text("No.", 120, wordHeight-300);
    text("Wait.. What?", 120, wordHeight-200);
    text("Stop messing around and help me.", 120, wordHeight-100);   
    text("Dont wanna.", 120, wordHeight);
 }
  if(scene==18 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=19;
  }
   if(scene==19){
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
    text("No.", 120, wordHeight-400);
    text("Wait.. What?", 120, wordHeight-300);
    text("Stop messing around and help me.", 120, wordHeight-200);   
    text("Dont wanna.", 120, wordHeight-100);
    text("Seriously..?", 120, wordHeight);
   }
   if(scene==19 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=20;
  }
  if(scene==20){
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
    text("Wait.. What?", 120, wordHeight-400);
    text("Stop messing around and help me.", 120, wordHeight-300);   
    text("Dont wanna.", 120, wordHeight-200);
    text("Seriously..?", 120, wordHeight-100);
    text("I'm gonna die in an explosion...", 120, wordHeight);
   }
    if(scene==20 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=21;
  } 
  if(scene==21){
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
    text("Dont wanna.", 120, wordHeight-400);
    text("Seriously..?", 120, wordHeight-300);
    text("I'm gonna die in an explosion...", 120, wordHeight-200);
    text("Because your not in the mood to" , 120, wordHeight-100);
    text("help me..?", 120, wordHeight);
    if (currentTime-savedTime>2000){
       text("Im kidding, lets do this.", 120, wordHeight+100);
       text("E'yup.", 120, wordHeight+200);
    }
   }
   
   if(scene==25){
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
    text("Seriously..?", 120, wordHeight-400);
    text("I'm gonna die in an explosion...", 120, wordHeight-300);
    text("Because your not in the mood to" , 120, wordHeight-200);
    text("help me..?", 120, wordHeight-100);
    text("E'yup.", 120, wordHeight);
   }
    if(scene==25 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=26;
  } 
  
   if(scene==26){
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
    text("I'm gonna die in an explosion...", 120, wordHeight-400);
    text("Because your not in the mood to" , 120, wordHeight-300);
    text("help me..?", 120, wordHeight-200);
    text("E'yup.", 120, wordHeight-100);
    text("You're the worst.", 120, wordHeight);
   }
     if(scene==26 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=27;
  } 
 
  if(scene==27){
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
    text("Because your not in the mood to" , 120, wordHeight-400);
    text("help me..?", 120, wordHeight-300);
    text("E'yup.", 120, wordHeight-200);
    text("You're the worst.", 120, wordHeight-100);
    text("Fine, ill do this myself.", 120, wordHeight);
   }
     if(scene==27 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=-1;
  } 
   
   
    if(scene==22){
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
    text("Seriously..?", 120, wordHeight-400);
    text("I'm gonna die in an explosion...", 120, wordHeight-300);
    text("Because your not in the mood to" , 120, wordHeight-200);
    text("help me..?", 120, wordHeight-100);
    text("Im kidding, lets do this.", 120, wordHeight);
    }
     if(scene==22 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=23;
  } 
  
  if(scene==23){
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
    text("I'm gonna die in an explosion...", 120, wordHeight-400);
    text("Because your not in the mood to" , 120, wordHeight-300);
    text("help me..?", 120, wordHeight-200);
    text("Im kidding, lets do this.", 120, wordHeight-100);
    text("this bomb has a timer on it!", 120, wordHeight);
    }
    if(scene==23 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=24;
  } 
  
  if(scene==24){
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
    text("Because your not in the mood to" , 120, wordHeight-400);
    text("help me..?", 120, wordHeight-300);
    text("Im kidding, lets do this.", 120, wordHeight-200);
    text("this bomb has a timer on it!", 120, wordHeight-100);
    text("Now is not the time to fool around!", 120, wordHeight);
    }
    if(scene==24 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=30;
    }
  
    
     if(scene==5){
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
    text("Hello?", 120, wordHeight-100);
    text("Who are you?", 120, wordHeight);
    }
     if(scene==5 && currentTime-savedTime>2000){
  scene=8;
}

if(scene==8){
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
    text("Hello?", 120, wordHeight-200);
    text("Who are you?", 120, wordHeight-100);
    text("Now is not the time for introductions.", 120, wordHeight);
}
 if(scene==8 && currentTime-savedTime>5000){
       savedTime=currentTime;
  scene=10;
 }
  
   if(scene==6){
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
    text("Hello?", 120, wordHeight-100);
    text("Whats up?", 120, wordHeight);
    }
     if(scene==6 && currentTime-savedTime>2000){
  scene=9;
     }
     if(scene==9){
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
    text("Hello?", 120, wordHeight-200);
    text("Whats up?", 120, wordHeight-100);
    text("..Whats up...? Really?", 120, wordHeight);
     }
      if(scene==9 && currentTime-savedTime>5000){
       savedTime=currentTime;
  scene=10;
 }
  
  //title screen
  if(scene==1){
    background(0,0,200);
    textAlign(CENTER);
    textSize(100);
    fill(255);
    text("Bomb Squad", width/2, height/4);
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
  
  //Game Over Screen
  
  
  //First Page
  
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
  
  //credit scene
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


//draw box with amount of time left before game over
void drawBombTimer(){
  rectMode(CORNER);
  fill(0);
  strokeWeight(1);
  rect(1750, 50, 200, 100);
  fill(255,0,0);
  int numSecLeft = (millsToBoom-(currentTime-bombTimer))/1000;
  text(numSecLeft, 1750, 150);
}

void drawGameOver(){
   background(0);
    fill(255);
    textAlign(CENTER);
    textSize(150);
    text("Game over", width/2, 300);
    textSize(100);
    text("Try again?", width/2, 500);
    text("Credits", width/2, 650);
}

void drawScene30(){
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
    text("The bomb has a timer and will go off", 120, wordHeight-400);
    text("in exacly three minutes. we have to", 120, wordHeight-300);
    text("defuse the bomb by then, or i'll get", 120, wordHeight-200);
    text("blown sky high. I hope you know what", 120, wordHeight-100);
    text("your doing.", 120, wordHeight);
    println("in scene 30");
}


void drawScene32(){
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
    bombAssemble1 = loadImage("Bomb Assemble 1.jpg");
    bombAssemble1.resize(800, 500);
    image(bombAssemble1, 1150, 130);
    println("In Scene 32");
}

void drawScene33(){
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
    bombAssemble2 = loadImage("Bomb Assemble 2.jpg");
    bombAssemble2.resize(800, 500);
    image(bombAssemble2, 1150, 130);
}

 void drawScene34(){
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
    bombAssemble3 = loadImage("Bomb Assemble 3.jpg");
    bombAssemble3.resize(800, 500);
    image(bombAssemble3, 1150, 130);
}
   
   

void mousePressed() {
  if (boom) {
   if(mouseX>900 && mouseX<1100 && mouseY>430 && mouseY<530) scene=2;
   if(mouseX>800 && mouseX<1200 && mouseY>580 && mouseY<680) scene=1;
  }
  
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
      savedTime=currentTime;
   }
   if(scene==3 && mouseX>120 && mouseX<280 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=4;
}
 if(scene==3 && mouseX>120 && mouseX<350 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
scene=5;
 savedTime=currentTime;
}
if(scene==3 && mouseX>120 && mouseX<300 && mouseY>wordHeight+250 && mouseY<wordHeight+320 && currentTime-savedTime>2000){
  scene=6;
 savedTime=currentTime;
}
if(scene==10 && mouseX>120 && mouseX<220 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=11;
}
if(scene==10 && mouseX>120 && mouseX<200 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=12;
}
if(scene==15 && mouseX>120 && mouseX<220 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=16;
}
if(scene==15 && mouseX>120 && mouseX<400 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=18;
}
if(scene==21 && mouseX>120 && mouseX<420 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=22;
}
if(scene==21 && mouseX>120 && mouseX<220 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=25;
}

}