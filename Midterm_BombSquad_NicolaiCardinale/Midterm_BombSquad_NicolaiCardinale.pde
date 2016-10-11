//Help escape the room

PImage bombAssemble1;
PImage bombAssemble2;
PImage bombAssemble3;
PImage bombCase3;
PImage wires1;
PImage wires2;
PImage wires3;
PImage codex;

int millsToBoom = 240000;
int wordHeight = 670;
int currentTime = 0;
int savedTime = 0;
int scene=1;
int timer=0;
int bombTimer=0;
boolean boom = false;
int puzzleOne=int(random(32,34));
int puzzleTwo=int(random(68, 70));
void setup (){
  size(2000, 1200);

}

void draw () {
  currentTime = millis();
  //scene 23 is end of intro
  //scene 32 is main game
  
 

  //Detects if game is over.
  if(scene >= 31 && scene<100 && currentTime-bombTimer>millsToBoom) boom = true; 
  
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
        break;
      case 32:
        drawScene32();
        break;
      case 33:
        drawScene33();
        break;
      case 34:
        drawScene34();
        break;
      case 35:
        drawScene35();
        break;
      case 36:
        drawScene36();
        break;
      case 37:
        drawScene37();
        break;
      case 38:
        drawScene38();
        break;
      case 39:
        drawScene39();
        break;
      case 40:
        drawScene40();
        break;
      case 41:
        drawScene41();
        break;
      case 42:
        drawScene42();
        break;
      case 43:
        drawScene43();
        break;
      case 44:
        drawScene44();
        break;
      case 45:
        drawScene45();
        break;
      case 46:
        drawScene46();
        break;
      case 47:
        drawScene47();
        break;
      case 48:
        drawScene48();
        break;
      case 49:
        drawScene49();
        break;
      case 50:
        drawScene50();
        break;
      case 51:
        drawScene51();
        break;
      case 52:
        drawScene52();
        break;
      case 53:
        drawScene53();
        break;
      case 54:
        drawScene54();
        break;
      case 55:
        drawScene55();
        break;
      case 56:
        drawScene56();
        break;
      case 57:
        drawScene57();
        break;
      case 58:
        drawScene58();
        break;
      case 59:
        drawScene59();
        break;
      case 60:
        drawScene60();
        break;
      case 61:
        drawScene61();
        break;
      case 62:
        drawScene62();
        break;
      case 63:
        drawScene63();
        break;
      case 64:
        drawScene64();
        break;
      case 65:
        drawScene65();
        break;
      case 66:
        drawScene66();
        break;
      case 67:
        drawScene67();
        break;
      case 68:
        drawScene68();
        break;
      case 69:
        drawScene69();
        break;
      case 70:
        drawScene70();
        break;
      case 71:
        drawScene71();
        break;
      case 72:
        drawScene72();
        break;
      case 73:
        drawScene73();
        break;
      case 74:
        drawScene74();
        break;
      case 75:
        drawScene75();
        break;
      case 76:
        drawScene76();
        break;
      case 77:
        drawScene77();
        break;
        
      case 100:
        drawScene100();
        break;
      case 101:
        drawScene101();
        break;
      case 102:
        drawScene102();
        break;
      case 103:
        drawScene103();
        break;
      case 104:
        drawScene104();
        break;
      case 105:
        drawScene105();
        break;
      case 106:
        drawScene106();
        break;
        

    
  }
    if(scene >= 31) drawBombTimer();
  }
  
  if(scene==30){
     if(currentTime-savedTime>2000){
         bombTimer=currentTime;
         savedTime=currentTime;
         scene=31;
       }
}

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
    text("in exacly four minutes. we have to", 120, wordHeight-400);
    text("defuse the bomb by then, or i'll get", 120, wordHeight-300);
    text("blown sky high. I hope you know what", 120, wordHeight-200);
    text("your doing.", 120, wordHeight-100);
    text("Lets do this.", 120, wordHeight);
  if(scene==31 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=puzzleOne;
  }
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
   if(scene==-1){
    background(0, 0, 0);
    fill(255);
    textAlign(CENTER);
    textSize(150);
    text("Game over", width/2, 300);
    textSize(100);
    text("Try again?", width/2, 500);
    text("Credits", width/2, 650); 
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
  rect(1790, 10, 200, 100);
  fill(255,0,0);
  int numSecLeft = (millsToBoom-(currentTime-bombTimer))/1000;
  text(numSecLeft, 1840, 85);
   if(scene>=100){rectMode(CORNER);
  fill(0);
  strokeWeight(1);
  rect(1790, 10, 200, 100);
  fill(255,0,0);
  textSize(30);
  text("DISSARMED", 1800, 75);
   timer=(millis()/500)%2;
        if(timer==0){fill(0);}
        if(timer==1){fill(255,0,0);}
   }
}

void drawGameOver(){
    background(0, 0, 0);
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
    text("in exacly four minutes. we have to", 120, wordHeight-300);
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
    text("Here is the bomb. I dont know how to", 120, wordHeight-400);
    text("get it open. There is some info on the", 120, wordHeight-300);
    text("side of the bomb. It says '20, 15, 16,", 120, wordHeight-200);
    text("6, 15, 21, 18, 19, 3, 18, 5, 23, 19.'", 120, wordHeight-100);
    text("Do you know what that means?", 120, wordHeight);
    if (currentTime-savedTime>2000){
       text("Take out the top four screws.", 120, wordHeight+100);
       text("Take out the middle four screws.", 120, wordHeight+200);
       text("Take out the bottom four screws.", 120, wordHeight+300);
    }
}

void drawScene35(){
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
    text("get it open. There is some info on the", 120, wordHeight-400);
    text("side of the bomb. It says '20, 15, 16,", 120, wordHeight-300);
    text("6, 15, 21, 18, 19, 3, 18, 5, 23, 19.'", 120, wordHeight-200);
    text("Do you know what that means?", 120, wordHeight-100);
    text("Take out the top four screws.", 120, wordHeight);
    if(scene==35 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=36;
    }
}

void drawScene36(){
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
    text("okay! the bomb is open.", 120, wordHeight-400);
    text("6, 15, 21, 18, 19, 3, 18, 5, 23, 19.'", 120, wordHeight-300);
    text("Do you know what that means?", 120, wordHeight-200);
    text("Take out the top four screws.", 120, wordHeight-100);
    text("Okay! the bomb is open.", 120, wordHeight);
     if(scene==36 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=37;
    }
}

//victory scene puzzle 1,2 & 3

void drawScene37(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    text("Okay! the bomb is open.", 120, wordHeight-400);
    text("Oh jesus, this bomb looks deadly as", 120, wordHeight-300);
    text("hell... There are way to many wires", 120, wordHeight-200);
    text("and gadgets to fiddle with. But we", 120, wordHeight-100);
    text("dont have time!", 120, wordHeight);
     if(scene==37 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=53;
     }
}



void drawScene38(){
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
    text("okay! the bomb is open.", 120, wordHeight-400);
    text("6, 15, 21, 18, 19, 3, 18, 5, 23, 19.'", 120, wordHeight-300);
    text("Do you know what that means?", 120, wordHeight-200);
    text("Take out the top four screws.", 120, wordHeight-100);
    text("Shit! That wasn't right!", 120, wordHeight);
     if(scene==38 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=39;
     }
}

void drawScene39(){
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
    text("6, 15, 21, 18, 19, 3, 18, 5, 23, 19.'", 120, wordHeight-400);
    text("Do you know what that means?", 120, wordHeight-300);
    text("Take out the top four screws.", 120, wordHeight-200);
    text("Shit! That wasn't right!", 120, wordHeight-100);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight);
     if(scene==39 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=40;
     }
}

void drawScene40(){
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
    text("Do you know what that means?", 120, wordHeight-400);
    text("Take out the top four screws.", 120, wordHeight-300);
    text("Shit! That wasn't right!", 120, wordHeight-200);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight-100);
    fill(0);
    text("Lets try that again...", 120, wordHeight);
     if(scene==40 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=32;
     }
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
    text("Here is the bomb. I dont know how to", 120, wordHeight-400);
    text("get it open. There is some info on the", 120, wordHeight-300);
    text("side of the bomb. It says '19, 9, 4, 5, 20", 120, wordHeight-200);
    text("15, 14, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-100);
    text("Do you know what that means?", 120, wordHeight);
    if (currentTime-savedTime>2000){
       text("Unscrew the ten top screws.", 120, wordHeight+100);
       text("Unscrew the ten side screws.", 120, wordHeight+200);
       text("Unscrew the twenty side screws.", 120, wordHeight+300);
    }
}

void drawScene41(){
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
    text("get it open. There is some info on the", 120, wordHeight-400);
    text("side of the bomb. It says '19, 9, 4, 5, 20", 120, wordHeight-300);
    text("15, 14, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-200);
    text("Do you know what that means?", 120, wordHeight-100);
    text("Unscrew the ten side screws.", 120, wordHeight);
     if(scene==41 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=42;
     }
}

void drawScene42(){
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
    text("side of the bomb. It says '19, 9, 4, 5, 20", 120, wordHeight-400);
    text("15, 14, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-300);
    text("Do you know what that means?", 120, wordHeight-200);
    text("Unscrew the ten side screws.", 120, wordHeight-100);
    text("Okay! the bomb is open.", 120, wordHeight);
     if(scene==42 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=37;
     }
}


void drawScene43(){
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
    text("side of the bomb. It says '19, 9, 4, 5, 20", 120, wordHeight-400);
    text("15, 14, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-300);
    text("Do you know what that means?", 120, wordHeight-200);
    text("Unscrew the ten side screws.", 120, wordHeight-100);
    text("Shit! That wasn't right!", 120, wordHeight);
    if(scene==43 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=44;
     }
}

void drawScene44(){
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
    text("15, 14, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-400);
    text("Do you know what that means?", 120, wordHeight-300);
    text("Unscrew the ten side screws.", 120, wordHeight-200);
    text("Shit! That wasn't right!", 120, wordHeight-100);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight);
    fill(0);
     if(scene==44 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=45;
     }
}

void drawScene45(){
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
    text("Do you know what that means?", 120, wordHeight-400);
    text("Unscrew the ten side screws.", 120, wordHeight-300);
    text("Shit! That wasn't right!", 120, wordHeight-200);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight-100);
    fill(0);
    text("Lets try that again...", 120, wordHeight);
     if(scene==45 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=33;
     }
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
     text("Here is the bomb. I dont know how to", 120, wordHeight-400);
    text("get it open. There is some info on the", 120, wordHeight-300);
    text("side of the bomb. It says '5, 9, 7, 8,", 120, wordHeight-200);
    text("20, 19, 9, 4, 5, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-100);
    text("Do you know what that means?", 120, wordHeight);
    if (currentTime-savedTime>2000){
       text("Take out seven top screws.", 120, wordHeight+100);
       text("Take out eighteen side screws.", 120, wordHeight+200);
       text("Take out eight side screws.", 120, wordHeight+300);
    }
    
}
   
void drawScene46(){
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
    text("get it open. There is some info on the", 120, wordHeight-400);
    text("side of the bomb. It says '5, 9, 7, 8,", 120, wordHeight-300);
    text("20, 19, 9, 4, 5, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-200);
    text("Do you know what that means?", 120, wordHeight-100);
    text("Take out eight side screws.", 120, wordHeight);
     if(scene==46 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=47;
     }
}

void drawScene47(){
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
    text("side of the bomb. It says '5, 9, 7, 8,", 120, wordHeight-400);
    text("20, 19, 9, 4, 5, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-300);
    text("Do you know what that means?", 120, wordHeight-200);
    text("Take out eight side screws.", 120, wordHeight-100);
    text("Okay! The bomb is open.", 120, wordHeight);
     if(scene==47 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=37;
     }
}

   
void drawScene48(){
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
    text("get it open. There is some info on the", 120, wordHeight-400);
    text("side of the bomb. It says '5, 9, 7, 8,", 120, wordHeight-300);
    text("20, 19, 9, 4, 5, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-200);
    text("Do you know what that means?", 120, wordHeight-100);
    text("Take out eighteen side screws.", 120, wordHeight);
     if(scene==48 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=49;
     }
}

void drawScene52(){
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
    text("get it open. There is some info on the", 120, wordHeight-400);
    text("side of the bomb. It says '5, 9, 7, 8,", 120, wordHeight-300);
    text("20, 19, 9, 4, 5, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-200);
    text("Do you know what that means?", 120, wordHeight-100);
    text("Take out seven top screws.", 120, wordHeight);
     if(scene==52 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=49;
     }
}

void drawScene49(){
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
    text("side of the bomb. It says '5, 9, 7, 8,", 120, wordHeight-400);
    text("20, 19, 9, 4, 5, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-300);
    text("Do you know what that means?", 120, wordHeight-200);
    text("Take out eighteen side screws.", 120, wordHeight-100); 
    text("Shit! That wasn't right!", 120, wordHeight);
     if(scene==49 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=50;
     }
}
   
void drawScene50(){
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
    text("20, 19, 9, 4, 5, 19, 3, 18, 5, 23, 19'.", 120, wordHeight-400);
    text("Do you know what that means?", 120, wordHeight-300);
    text("Take out eighteen side screws.", 120, wordHeight-200);
    text("Shit! That wasn't right!", 120, wordHeight-100);
     fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight);
    fill(0);
     if(scene==50 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=51;
     }
}

void drawScene51(){
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
    text("Do you know what that means?", 120, wordHeight-400);
    text("Take out eighteen side screws.", 120, wordHeight-300);
    text("Shit! That wasn't right!", 120, wordHeight-200);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight-100);
    fill(0);
    text("Lets try that again...", 120, wordHeight);
     if(scene==51 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=34;
     }
}

void drawScene53(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    text("Oh jesus, this bomb looks deadly as", 120, wordHeight-400);
    text("hell... There are way to many wires", 120, wordHeight-300);
    text("and gadgets to fiddle with. But we", 120, wordHeight-200);
    text("dont have time!", 120, wordHeight-100);
    text("Here. Check this out.", 120, wordHeight);
     if(scene==53 && currentTime-savedTime>3000){
       savedTime=currentTime;
  scene=54;
     }
}

void drawScene54(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("and gadgets to fiddle with. But we", 120, wordHeight-400);
    text("dont have time!", 120, wordHeight-300);
    text("Here. Check this out.", 120, wordHeight-200);
    text("I found this piece of paper in the", 120, wordHeight-100);
    text("bomb. Do you think it will help?", 120, wordHeight);
     if(scene==54 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=55;
     }
}

void drawScene55(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("bomb. Do you think it will help?", 120, wordHeight-400);
    text("Inside the bomb says '<-0, <-U, <-T,", 120, wordHeight-300);
    text("T->, L->, <-Z, J->, <-M, k->, <-O,", 120, wordHeight-200);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-100);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight);
    if(scene==55 && currentTime-savedTime>2000){
       text("Unplug wires seven and ten.", 120, wordHeight+100);
       text("Unplug wires six and eight.", 120, wordHeight+200);
       text("Unplug wires eight and two.", 120, wordHeight+300);
     }
}

void drawScene56(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("Inside the bomb says '<-0, <-U, <-T,", 120, wordHeight-400);
    text("T->, L->, <-Z, J->, <-M, k->, <-O,", 120, wordHeight-300);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-200);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-100);
    text("Unplug wires six and eight.", 120, wordHeight);
  if(scene==56 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=57;
  }
}

void drawScene59(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("Inside the bomb says '<-0, <-U, <-T,", 120, wordHeight-400);
    text("T->, L->, <-Z, J->, <-M, k->, <-O,", 120, wordHeight-300);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-200);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-100);
    text("Unplug wires seven and ten.", 120, wordHeight);
  if(scene==59 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=60;
  }
}
void drawScene60(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("T->, L->, <-Z, J->, <-M, k->, <-O,", 120, wordHeight-400);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-300);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-200);
    text("Unplug wires seven and ten.", 120, wordHeight-100);
    text("Damn! Something went wrong!", 120, wordHeight);
  if(scene==60 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=61;
  }
}
void drawScene61(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-400);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-300);
    text("Unplug wires seven and ten.", 120, wordHeight-200);
    text("Damn! Something went wrong!", 120, wordHeight-100);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight);
    fill(0);
  if(scene==61 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=62;
  }
}

void drawScene62(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-400);
    text("Unplug wires seven and ten.", 120, wordHeight-300);
    text("Damn! Something went wrong!", 120, wordHeight-200);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight-100);
    fill(0);
    text("lets try that again...", 120, wordHeight);
  if(scene==62 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=55;
  }
}

void drawScene63(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("Inside the bomb says '<-0, <-U, <-T,", 120, wordHeight-400);
    text("T->, L->, <-Z, J->, <-M, k->, <-O,", 120, wordHeight-300);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-200);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-100);
    text("Unplug wires eight and two.", 120, wordHeight);
  if(scene==63 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=64;
  }
}
void drawScene64(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("T->, L->, <-Z, J->, <-M, k->, <-O,", 120, wordHeight-400);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-300);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-200);
    text("Unplug wires eight and two.", 120, wordHeight-100);
    text("Damn! Something went wrong!", 120, wordHeight);
  if(scene==64 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=65;
  }
}
void drawScene65(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-400);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-300);
    text("Unplug wires eight and two.", 120, wordHeight-200);
    text("Damn! Something went wrong!", 120, wordHeight-100);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight);
    fill(0);
  if(scene==65 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=66;
  }
}

void drawScene66(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-400);
    text("Unplug wires eight and two.", 120, wordHeight-300);
    text("Damn! Something went wrong!", 120, wordHeight-200);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight-100);
    fill(0);
    text("lets try that again...", 120, wordHeight);
  if(scene==66 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=55;
  }
}

void drawScene57(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("T->, L->, <-Z, J->, <-M, k->, <-O,", 120, wordHeight-400);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-300);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-200);
    text("Unplug wires six and eight.", 120, wordHeight-100);
    text("Well i'm not dead yet..", 120, wordHeight);
  if(scene==57 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=58;
  }
}

void drawScene58(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("<-G, <-G, X->, 0->, F->, <-U, <-S, A->,", 120, wordHeight-400);
    text("<-M, <-Z, H->, Y->'.", 120, wordHeight-300);
    text("Unplug wires six and eight.", 120, wordHeight-200);
    text("Well i'm not dead yet..", 120, wordHeight-100);
    text("So those must have been right!", 120, wordHeight);
  if(scene==58 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=67;
  }
}

void drawScene67(){
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
    bombCase3 = loadImage("Bomb Case 3.jpg");
    bombCase3.resize(800, 500);
    image(bombCase3, 1150, 130);
    codex = loadImage("Codex.jpg");
    codex.resize(600, 700);
    image(codex, 1200, 200);
    text("Unplug wires six and eight.", 120, wordHeight-400);
    text("Well i'm not dead yet..", 120, wordHeight-300);
    text("So those must have been right!", 120, wordHeight-200);
    text("last thing we need to do is cut the", 120, wordHeight-100);
    text("wires to the detonator.", 120, wordHeight);
  if(scene==67 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=68;
  }
}
void drawScene68(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("last thing we need to do is cut the", 120, wordHeight-400);
    text("wires to the detonator.", 120, wordHeight-300);
    text("Here are the wires. The wires lead to", 120, wordHeight-200);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-100);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight);
  if(scene==68 && currentTime-savedTime>2000){
        text("Cut the Red, Green, and Black wires.", 120, wordHeight+100);
        text("Cut the Blue, Green, and White wires.", 120, wordHeight+200);
        text("Cut the Green, Brown, and Blue wires.", 120, wordHeight+300);
  }
}

void drawScene69(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("wires to the detonator.", 120, wordHeight-400);
    text("Here are the wires. The wires lead to", 120, wordHeight-300);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-200);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-100);
    text("Cut the Red, Green, and Black wires.", 120, wordHeight);
      if(scene==69 && currentTime-savedTime>4000){
       savedTime=currentTime;
       boom = false;
  scene=100;
  }
}
void drawScene100(){
    boom=false;

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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("Here are the wires. The wires lead to", 120, wordHeight-400);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-300);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-200);
    text("Cut the Red, Green, and Black wires.", 120, wordHeight-100);
    text("...", 120, wordHeight);
      if(scene==100 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=101;
  }
}
void drawScene101(){
    boom=false;

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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-400);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-300);
    text("Cut the Red, Green, and Black wires.", 120, wordHeight-200);
    text("...", 120, wordHeight-100);
    text("We.. We did it...", 120, wordHeight);
      if(scene==101 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=102;
  }
}
void drawScene102(){
    boom=false;

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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-400);
    text("Cut the Red, Green, and Black wires.", 120, wordHeight-300);
    text("...", 120, wordHeight-200);
    text("We.. We did it...", 120, wordHeight-100);
    text("WE F*****G DID IT! AHAHA!", 120, wordHeight);
      if(scene==102 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=103;
  }
}
void drawScene103(){
    boom=false;

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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("Cut the Red, Green, and Black wires.", 120, wordHeight-400);
    text("...", 120, wordHeight-300);
    text("We.. We did it...", 120, wordHeight-200);
    text("WE F*****G DID IT! AHAHA!", 120, wordHeight-100);
    text("I cant believe im alive!", 120, wordHeight);
      if(scene==103 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=104;
  }
}
void drawScene104(){
    boom=false;

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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("...", 120, wordHeight-400);
    text("We.. We did it...", 120, wordHeight-300);
    text("WE F*****G DID IT! AHAHA!", 120, wordHeight-200);
    text("I cant believe im alive!", 120, wordHeight-100);
    text("Thank you stranger. Thank you", 120, wordHeight);
      if(scene==104 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=105;
  }
}
void drawScene105(){
    boom=false;

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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("We.. We did it...", 120, wordHeight-400);
    text("WE F*****G DID IT! AHAHA!", 120, wordHeight-300);
    text("I cant believe im alive!", 120, wordHeight-200);
    text("Thank you stranger. Thank you", 120, wordHeight-100);
    fill(255, 0, 0);
    text("*Johnathan443 has logged out*", 120, wordHeight);
      if(scene==105 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=106;
  }
}

void drawScene106(){
  boom=false;
 background(255);
 textAlign(CENTER);
 textSize(150);
 text("CONGRATULATIONS!", width/2, height/4);
 textSize(70);
 text("Play Again?", width/2, 500);
 text("Main Menu", width/2, 650);
 
 
}

void drawScene70(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("wires to the detonator.", 120, wordHeight-400);
    text("Here are the wires. The wires lead to", 120, wordHeight-300);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-200);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-100);
    text("Cut the Blue, Green, and White wires", 120, wordHeight);
      if(scene==70 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=71;
  }
}

void drawScene74(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("wires to the detonator.", 120, wordHeight-400);
    text("Here are the wires. The wires lead to", 120, wordHeight-300);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-200);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-100);
    text("Cut the Green, Brown, and Blue wires", 120, wordHeight);
      if(scene==74 && currentTime-savedTime>4000){
       savedTime=currentTime;
  scene=75;
  }
}
void drawScene75(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("Here are the wires. The wires lead to", 120, wordHeight-400);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-300);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-200);
    text("Cut the Green, Brown, and Blue wires", 120, wordHeight-100);
    text("That didn't work!", 120, wordHeight);
      if(scene==75 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=76;
  }
}
void drawScene76(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-400);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-300);
    text("Cut the Green, Brown, and Blue wires", 120, wordHeight-200);
    text("That didn't work!", 120, wordHeight-100);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight);
    fill(0);
      if(scene==76 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=77;
  }
}

void drawScene77(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-400);
    text("Cut the Green, Brown, and Blue wires", 120, wordHeight-300);
    text("That didn't work!", 120, wordHeight-200);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight-100);
    fill(0);
     text("Lets try that again...", 120, wordHeight);
      if(scene==77 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=68;
  }
}

void drawScene71(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("Here are the wires. The wires lead to", 120, wordHeight-400);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-300);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-200);
    text("Cut the Blue, Green, and White wires", 120, wordHeight-100);
    text("That didn't work!", 120, wordHeight);
      if(scene==71 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=72;
  }
}
void drawScene72(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("a box that says '255, 0, 0','0, 255,", 120, wordHeight-400);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-300);
    text("Cut the Blue, Green, and White wires", 120, wordHeight-200);
    text("That didn't work!", 120, wordHeight-100);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight);
    fill(0);
      if(scene==72 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=73;
  }
}
void drawScene73(){
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
    wires1 = loadImage("Bomb Wires.jpg");
    wires1.resize(700, 500);
    image(wires1, 1200, 200);
    text("0', and '0, 0, 0'. What do I do?", 120, wordHeight-400);
    text("Cut the Blue, Green, and White wires", 120, wordHeight-300);
    text("That didn't work!", 120, wordHeight-200);
    fill(255, 0, 0);
    text("The timer went down by a minute!", 120, wordHeight-100);
    fill(0);
    text("Lets try that again...", 120, wordHeight);
      if(scene==73 && currentTime-savedTime>2000){
       savedTime=currentTime;
  scene=68;
  }
}




void mousePressed() {
  if (scene==-1) {
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


if(scene==32 && mouseX>120 && mouseX<720 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=35;
}
if(scene==32 && mouseX>120 && mouseX<720 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=38;  
}
if(scene==32 && mouseX>120 && mouseX<720 && mouseY>wordHeight+250 && mouseY<wordHeight+320 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=38;  
}


if(scene==33 && mouseX>120 && mouseX<720 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=43;
}
if(scene==33 && mouseX>120 && mouseX<720 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=41;  
}
if(scene==33 && mouseX>120 && mouseX<720 && mouseY>wordHeight+250 && mouseY<wordHeight+320 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=43;  
}


if(scene==34 && mouseX>120 && mouseX<720 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=52;
}
if(scene==34 && mouseX>120 && mouseX<720 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=48;  
}
if(scene==34 && mouseX>120 && mouseX<720 && mouseY>wordHeight+250 && mouseY<wordHeight+320 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=46;  
}


if(scene==55 && mouseX>120 && mouseX<720 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=59;
}
if(scene==55 && mouseX>120 && mouseX<720 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=56;  
}
if(scene==55 && mouseX>120 && mouseX<720 && mouseY>wordHeight+250 && mouseY<wordHeight+320 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=63;  
}

if(scene==68 && mouseX>120 && mouseX<820 && mouseY>wordHeight+50 && mouseY<wordHeight+120 && currentTime-savedTime>2000){
     savedTime=currentTime;
     scene=69;
}
if(scene==68 && mouseX>120 && mouseX<820 && mouseY>wordHeight+150 && mouseY<wordHeight+220 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=70;  
}
if(scene==68 && mouseX>120 && mouseX<820 && mouseY>wordHeight+250 && mouseY<wordHeight+320 && currentTime-savedTime>2000){
     savedTime=currentTime;
     bombTimer=bombTimer-60*1000;
     scene=74;  
}
if(scene == 106){
if(mouseX>900 && mouseX<1100 && mouseY>430 && mouseY<530) scene=2;
if(mouseX>800 && mouseX<1200 && mouseY>580 && mouseY<680) scene=1;
}

}