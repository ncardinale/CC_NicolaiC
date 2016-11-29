//Player 1: Choose W,S, or D. Player 2: Choose I,J,K. Space to find out who won! 0 to restart.

// When function is Choose, make it so when three seconds pass it goes to function Shoot. number 0 when pressed
// will make function choose play gagin.

// choice = 0 (skip turn)
// choice = 1 (reload)
// choice = 2 (shoot)
// choice = 3 (duck)
var Skip = 0;
var Rel = 1;
var Sht = 2;
var Dck = 3;
var menuFont;
var currentTime = 0;
var saveTime = 0;



var currentTime = 0;
var savedTime = 0;

var p1Choice = 0;
var p2Choice = 0;

function preload(){
  menuFont = loadFont('libraries/BroshK.ttf');
}

function setup() {
  createCanvas(1000, 600);
  time();
}

function draw() {
  console.log("Player 1:" + p1Choice);
  console.log("Player 2:" + p2Choice);
  console.log ("ct" + currentTime);
  console.log ("st" + saveTime);
  
  currentTime = millis();
}

function MainMenu(){

  
  fill('#ED225D');
  textFont(menuFont);
  textSize(150);
  text('GUITAR BATTLE', 140, 141);
  
  fill('#ED225D');
  textFont(menuFont);
  textSize(120);
  text('PLAY', 405, 265);
  
  fill('#ED225D');
  textFont(menuFont);
  textSize(90);
  text('INSTRUCTIONS', 299, 355);

  fill('#ED225D');
  textFont(menuFont);
  textSize(90);
  text('OPTIONS', 385, 450);

  fill('#ED225D');
  textFont(menuFont);
  textSize(69);
  text('EXIT', 450, 525);


}

function time(){
  currentTime = millis();
  saveTime = currentTime;
  choose();
}

function choose(){
  background(200);
  fill(0);
  rect(0, 500, width, 500);
  //Player1
  rect(200, 400, 100, 100);
  //Player2
  rect(700, 400, 100, 100);
  if ((currentTime - saveTime) > 3000){
  shoot();
}
}

function P1Win(){
  //Player1
  fill(0, 255, 0);
  rect(200, 400, 100, 100);
  //Player2
  fill(255, 0, 0);
  rect(700, 400, 100, 100);
}

function P2Win(){
    //Player1
  fill(255, 0, 0);
  rect(200, 400, 100, 100);
  //Player2
  fill(0, 255, 0);
  rect(700, 400, 100, 100);
  //fill(0);
  //textAlign(CENTER);
  //textSize(100);
  //text("Player 2 Wins", width/2 height/4);
}

function noWin(){
  fill(255, 0, 0);
  rect(200, 400, 100, 100);
  fill(255, 0, 0);
  rect(700, 400, 100, 100);
}

function noDie(){
  fill(0, 255, 0);
  rect(200, 400, 100, 100);
  fill(0, 255, 0);
  rect(700, 400, 100, 100);
}

// choice = 0 (skip turn)
// choice = 1 (reload)
// choice = 2 (shoot)
// choice = 3 (duck)

function shoot(){
  if ((p1Choice == Skip) && (p2Choice == Skip)){
    noDie();
  }
  if ((p1Choice == Skip) && (p2Choice == Rel)){
    noDie();
  }
  if ((p1Choice == Skip) && (p2Choice == Sht)){
    P2Win();
  }
  if ((p1Choice == Skip) && (p2Choice == Dck)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Skip)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Rel)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Sht)){
    P2Win();
  }
  if ((p1Choice == Rel) && (p2Choice == Dck)){
    noDie();
  }
  if ((p1Choice == Sht) && (p2Choice == Skip)){
    P1win();
  }
  if ((p1Choice == Sht) && (p2Choice == Rel)){
    P1Win();
  }
  if ((p1Choice == Sht) && (p2Choice == Sht)){
    noWin();
  }
  if ((p1Choice == Sht) && (p2Choice == Dck)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Skip)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Rel)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Sht)){
    noDie();
  }
  if ((p1Choice == Dck) && (p2Choice == Dck)){
    noDie();
  }
}

function keyTyped(){

// Player 1 choice
   if (key=='w'){
     p1Choice = 1;
   }
   if (key=='d'){
     p1Choice = 2;
   }
   if (key=='s'){
     p1Choice = 3;
   }
   
// Player 2 choice
   if (key=='i'){
     p2Choice = 1;
   }
    if (key=='j'){
     p2Choice = 2;
   }
    if (key=='k'){
     p2Choice = 3;
   }
   
//shoot!
    if (key==' '){
      shoot();
    }
    if (key== '0'){
      p1Choice = 0;
      p2Choice = 0;
      choose();
    }
}



