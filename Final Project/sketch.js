// choice = 0 (skip turn)
// choice = 1 (reload)
// choice = 2 (shoot)
// choice = 3 (duck)

var p1Choice = 0;
var p2Choice = 0;

function setup() {
  createCanvas(1000, 600);
  choose();
}

function draw() {
  console.log("Player 1:" + p1Choice);
  console.log("Player 2:" + p2Choice);
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
  if ((p1Choice == 0) && (p2Choice == 0)){
    noDie();
  }
  if ((p1Choice == 0) && (p2Choice == 1)){
    noDie();
  }
  if ((p1Choice == 0) && (p2Choice == 2)){
    P2Win();
  }
  if ((p1Choice == 0) && (p2Choice == 3)){
    noDie();
  }
  if ((p1Choice == 1) && (p2Choice == 0)){
    noDie();
  }
  if ((p1Choice == 1) && (p2Choice == 1)){
    noDie();
  }
  if ((p1Choice == 1) && (p2Choice == 2)){
    P2Win();
  }
  if ((p1Choice == 1) && (p2Choice == 3)){
    noDie();
  }
  if ((p1Choice == 2) && (p2Choice == 0)){
    P1win();
  }
  if ((p1Choice == 2) && (p2Choice == 1)){
    P1Win();
  }
  if ((p1Choice == 2) && (p2Choice == 2)){
    noWin();
  }
  if ((p1Choice == 2) && (p2Choice == 3)){
    noDie();
  }
  if ((p1Choice == 3) && (p2Choice == 0)){
    noDie();
  }
  if ((p1Choice == 3) && (p2Choice == 1)){
    noDie();
  }
  if ((p1Choice == 3) && (p2Choice == 2)){
    noDie();
  }
  if ((p1Choice == 3) && (p2Choice == 3)){
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



