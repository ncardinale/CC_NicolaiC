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

var currentTime = 0;
var saveTime = 0;
var timer = 3;

var stageSelect = 0;

var p1Choice = 0;
var p2Choice = 0;
var redChords = 0;
var blueChords = 0;

//Image Varubles
var redGuy;

function preload(){
  menuFont = loadFont('libraries/BroshK.ttf');
}

function setup() {
  createCanvas(1000, 600);
  choose();
}

function draw() {
  //console.log("Player 1:" + p1Choice);
  //console.log("Player 2:" + p2Choice);
  console.log ("ct: " + currentTime);
  console.log ("st: " + saveTime);
  console.log ("Red Tune: " + redChords);
  console.log ("Blue Tune: " + blueChords);

 if(countDown){
   if(currentTime - saveTime > 3000){
  console.log("Shoot");
  saveTime = currentTime;
  shoot();
  countDown=false;
  }
 }
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



function choose(){
  background(200);
  fill(0);
  rect(0, 500, width, 500);
  //Player1
  rect(200, 400, 100, 100);
  //Player2
  rect(700, 400, 100, 100);
  
}
    
 //Check if Red/Blue Chords are 0

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
  if ((p1Choice == Skip) && (p2Choice == Sht) && (blueChords > 0)){
    P2Win();
  } else {noDie();}
  
  if ((p1Choice == Skip) && (p2Choice == Dck)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Skip)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Rel)){
    noDie();
  }
  if ((p1Choice == Rel) && (p2Choice == Sht) && (blueChords > 0)){
    P2Win();
  } else {noDie();}
  
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
}
  
 //if (redChords>0){
 //}
 //if (blueChords>0){
 //}
 //if (redChords=0){
 //}
 //if (blueChords=0){
 //}
 

function keyTyped(){

// Player 1 choice
   if (key=='w'){
     p1Choice = 1;
     redChords = redChords + 1;
     
   }
   if (key=='d'){
     p1Choice = 2;
     redChords = redChords - 1;

   }
   if (key=='s'){
     p1Choice = 3;
   }
   
// Player 2 choice
   if (key=='i'){
     p2Choice = 1;
     blueChords = blueChords + 1;
     
   }
    if (key=='j'){
     p2Choice = 2;
     blueChords = blueChords - 1;

   }
    if (key=='k'){
     p2Choice = 3;
   }
   
//shoot!
    if (key==' '){
      shoot();
      
    }
    if (key== '0'){
      countDown = true;
      p1Choice = 0;
      p2Choice = 0;
      saveTime = currentTime;
      //stageSelect = 2;
      choose();
    }
    
}

