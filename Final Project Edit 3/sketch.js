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

var countDown = false;
var endScreen = false;

var currentTime = 0;
var saveTime = 0;
var timer = 3;
var gifTime;
var secLeft;
var endTime;
var TimerOptions = 3;

var winTime;

var stageSelect = 0;

var p1Choice = 0;
var p2Choice = 0;
var redChords = 0;
var blueChords = 0;

//Image Varubles
var Inst;

var redG;
var redAmp;
var redGAttack;
var redGDuck;
var redGLose;
var redGTune;

var blueG;
var blueAmp;
var blueGAttack;
var blueGDuck;
var blueGLose;
var blueGTune;

function preload(){
  menuFont = loadFont('libraries/BroshK.ttf');
}

function setup() {
  createCanvas(1000, 600);
  Inst = loadImage('images/Instructions.jpg');
  
  redG = loadGif('images/Red-Guitarist.gif');
  redAmp = loadImage('images/Red-Amp.gif');
  redGAttack = loadGif('images/Red-Guitarist-Attack.gif');
  redGDuck = loadGif('images/Red-Guitarist-Duck.gif');
  redGLose = loadGif('images/Red-Guitarist-Lose.gif');
  redGTune = loadGif('images/Red-Guitarist-Tuning.gif');
  redGLost = loadGif('images/Red-Guitarist-Lost.gif');
  
  blueG = loadGif('images/Blue-Guitarist.gif');
  blueAmp = loadImage('images/Blue-Amp.gif');
  blueGAttack = loadGif('images/Blue-Guitarist-Attack.gif');
  blueGDuck = loadGif('images/Blue-Guitarist-Duck.gif');
  blueGLose = loadGif('images/Blue-Guitarist-Lose.gif');
  blueGTune = loadGif('images/Blue-Guitarist-Tuning.gif');
  blueGLost = loadGif('images/Blue-Guitarist-Lost.gif');

  MainMenu();
}

function draw() {
  
   currentTime = millis();
   
   if(stageSelect !== 0){
     //Stage
     background(200);
     fill(0);
     rect(0, 500, width, 500);
     //Amps
     image(redAmp, 190, 200, 300, 300);
     image(blueAmp, 500, 200, 300, 300);
   }
   
 if (redChords < 0){
   redChords = 0;
 }
 if (blueChords < 0){   
   blueChords = 0;
 }
 if (redChords > 6){
   redChords = 6;
 }
 if (blueChords > 6){   
   blueChords = 6;
 }
  
  console.log("Player 1:" + p1Choice + ": " + redChords);
  console.log("Player 2:" + p2Choice + ": " + blueChords);
  //console.log ("ct: " + currentTime);
  //console.log ("st: " + saveTime);
  //console.log ("Red Tune: " + redChords);
  //console.log ("Blue Tune: " + blueChords);
  console.log("SS: " + stageSelect);

//count down is a boolean, john would write left and right sides as booleans. 
 
 
 if(endScreen === false){
  if(stageSelect !== 0){
   if(countDown){
   secLeft = Math.ceil(((TimerOptions * 1000) - (currentTime - saveTime)) / 1000);
   //console.log("Time Left: " + (secLeft));
   //Countdown Timer
   textFont(menuFont);
   textSize(120);
   text(secLeft, width/2-25, height/4);
   if(currentTime - saveTime > 3000){
    //console.log("Shoot");
    saveTime = currentTime;
    shoot();
    adjustBullets();
    gifTime = currentTime;
    countDown=false;
   }
} else { text("ACTION!", width/2-150, height/4);
  if(currentTime- gifTime > 3000){
    startCountDown();
      }
    }
  }
} else {
  if(currentTime - endTime > 3000){
   if(stageSelect == 3){
     p1Win();
   }
  } else {
    text("ACTION!", width/2-150, height/4);
  }
}


 
if(!endScreen){

  if(stageSelect == 2 || stageSelect == 1){ //Skip and Skip
  //Player 1
  image(redG, 25, 100, 320, 400);
  //Player 2
  image(blueG, 650, 100, 320, 400);
  }
  
  if(stageSelect == 3){ //Red Win
  //Player1
  image(redGAttack, 25, 100, 320, 400);
  //Player2
  image(blueGLose, 650, 100, 320, 400);
  endScreen = true;
  }
  
  if(stageSelect == 4){ //Blue Win
  //Player1
  image(redGLose, 25, 100, 320, 400);
  //Player2
  image(blueGAttack, 650, 100, 320, 400);
  endScreen = true;
  }
  
  if(stageSelect == 5){
     rect(0, 500, width, 500);
  //Player 1
  image(redGLose, 25, 100, 320, 400);
  //Player 2
  image(blueGLose, 650, 100, 320, 400);
  }
  
  if(stageSelect == 6){
  //Player 1
  image(redGTune, 25, 100, 320, 400);
  //Player 2
  image(blueG, 650, 100, 320, 400);
  }
  
  if(stageSelect == 7){
  //Player 1
  image(redG, 25, 100, 320, 400);
  //Player 2
  image(blueGTune, 650, 100, 320, 400);
  }
  
  if(stageSelect == 8){
  //Player 1
  image(redGTune, 25, 100, 320, 400);
  //Player 2
  image(blueGTune, 650, 100, 320, 400);
  }
  
  if(stageSelect == 9){
  //Player 1
  image(redGAttack, 25, 100, 320, 400);
  //Player 2
  image(blueGAttack, 650, 100, 320, 400);
  }
  
  if(stageSelect == 10){
  //Player 1
  image(redG, 25, 100, 320, 400);
  //Player 2
  image(blueGDuck, 650, 100, 320, 400);
  }
  
    if(stageSelect == 11){
  //Player 1
  image(redGDuck, 25, 100, 320, 400);
  //Player 2
  image(blueG, 650, 100, 320, 400);
  }
  
   if(stageSelect == 12){
  //Player 1
  image(redGDuck, 25, 100, 320, 400);
  //Player 2
  image(blueGDuck, 650, 100, 320, 400);
  }
  
  if(stageSelect == 13){
  //Player 1
  image(redGTune, 25, 100, 320, 400);
  //Player 2
  image(blueGDuck, 650, 100, 320, 400);
  }
  
  if(stageSelect == 14){
  //Player 1
  image(redGDuck, 25, 100, 320, 400);
  //Player 2
  image(blueGTune, 650, 100, 320, 400);
  }
  
  if(stageSelect == 15){
  //Player 1
  image(redGDuck, 25, 100, 320, 400);
  //Player 2
  image(blueGAttack, 650, 100, 320, 400);
  }
  
  if(stageSelect == 16){
  //Player 1
  image(redGAttack, 25, 100, 320, 400);
  //Player 2
  image(blueGDuck, 650, 100, 320, 400);
  }
  
 }

}
function adjustBullets(){
  if(p1Choice == 1){
    redChords = redChords + 1;
  }
  if(p2Choice == 1){
    blueChords = blueChords + 1;
  }
  if(p1Choice == 2){
      redChords = redChords - 1;
    }
    if(p2Choice == 2){
      blueChords = blueChords - 1;
    }
}



function p1Win(){
    //player 1
  image(redG, 25, 100, 320, 400);
  //Player2
  image(blueGLost, 650, 100, 320, 400);
  text('Player 1 Wins', width/2 - 275, height/4);
}

function p2Win(){
  stageSelect = 100;
  //Player1
  image(redGLost, 25, 100, 320, 400);
  //Player2
  image(blueG, 650, 100, 320, 400);
  text('Player 2 Wins', width/2 - 200, height/4);
}

function Stalemate(){
  //player 1
  image(redGlose, 25, 100, 320, 400);
  //Player2
  image(blueGLose, 650, 100, 320, 400);
  text('Stalemate', width/2 - 200, height/4);
}

function MainMenu(){
  stageSelect = 0;
  
  background(200);
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

function choose(){
  stageSelect = 1;
  gifTimer = currentTime;
}

// choice = 0 (skip turn)
// choice = 1 (reload)
// choice = 2 (shoot)
// choice = 3 (duck)

function Instr(){
  stageSelect = 0;
  image(Inst,0,0);
  text("Menu", width/2-100, height - 50);
}

function shoot(){
  
  //check if blueG is out of tune  
  
  if (p2Choice == Sht && blueChords <= 0){
      p2Choice = Skip;
  }
  if (p1Choice == Sht && redChords <= 0){
      p1Choice = Skip;
  }
  
  
  if ((p1Choice == Skip) && (p2Choice == Skip)){
    stageSelect = 2;
  }
  if ((p1Choice == Skip) && (p2Choice == Rel)){
    stageSelect = 7;
  }
  if ((p1Choice == Skip) && (p2Choice == Sht)){
    stageSelect = 4;
  }
  if ((p1Choice == Skip) && (p2Choice == Dck)){
    stageSelect = 10;
  }
  if ((p1Choice == Rel) && (p2Choice == Skip)){
    stageSelect = 6;
  }
  if ((p1Choice == Rel) && (p2Choice == Rel)){
    stageSelect = 8;
  }
  if ((p1Choice == Rel) && (p2Choice == Sht)){
    stageSelect = 4;
  }
  if ((p1Choice == Rel) && (p2Choice == Dck)){
    stageSelect = 13;
  }
  if ((p1Choice == Sht) && (p2Choice == Skip)){
    endTime = currentTime;
    stageSelect = 3;
  }
  if ((p1Choice == Sht) && (p2Choice == Rel)){
    stageSelect = 3;
  }
  if ((p1Choice == Sht) && (p2Choice == Sht)){
    stageSelect = 9;
  }
  if ((p1Choice == Sht) && (p2Choice == Dck)){
    stageSelect = 16;
  }
  if ((p1Choice == Dck) && (p2Choice == Skip)){
    stageSelect = 11;
  }
  if ((p1Choice == Dck) && (p2Choice == Rel)){
    stageSelect = 14;
  }
  if ((p1Choice == Dck) && (p2Choice == Sht)){
    stageSelect = 15;
  }
  if ((p1Choice == Dck) && (p2Choice == Dck)){
    stageSelect = 12;
  }
  
  gifTime = 3000;
  winTime = currentTime + 3000;
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
    if (key== '0'){
      startCountDown();
    }
    
}

function startCountDown(){
   countDown = true;
      p1Choice = 0;
      p2Choice = 0;
      saveTime = currentTime;
      //stageSelect = 2;
      choose();
}

function mousePressed() {
  if (stageSelect === 0 && mouseX>405 && mouseX<600 && mouseY>205 && mouseY<265){
      startCountDown();
  }
  if (stageSelect == 1 && mouseX>285 && mouseX<709 && mouseY>300 && mouseY<350){
    Instr();
  }
  if (stageSelect == 1 && mouseX>380 && mouseX<630 && mouseY>404 && mouseY<445){
    choose();
  }
  if (stageSelect == 1 && mouseX>446 && mouseX<540 && mouseY>480 && mouseY<530){
    //exit();
  }
  if (stageSelect === 0 && mouseX>446 && mouseX<540 && mouseY>500 && mouseY<550){
    MainMenu();
  }
}

