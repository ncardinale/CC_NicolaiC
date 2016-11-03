//Arrays for ellipses
var stampedX = [];
var stampedY = [];
var stampNum = []; 

var img;
var paper;
var img2
//Counter for ellipse numb.
var numStamped = 0;
var imgNum = 1;

function preload(){
  // load image
  img = loadImage("approved.png");
  paper = loadImage("paper.jpg");
  img2 = loadImage("rejected.png")
}
//create size
function setup() {createCanvas(500,700);}

function draw() {
  imageMode(CORNER);
    image(paper, 0, 0, 500, 700); 
    imageMode(CENTER);
  for(var cnt = 0; cnt < numStamped; cnt++){
    console.log("[" + cnt + "] [" + stampedX[cnt] + ", " + stampedY[cnt] + "]");
    //stamp of circle
    if (stampNum[cnt] == 1){
    image(img, stampedX[cnt], stampedY[cnt], 150, 60);
    }
    if (stampNum[cnt] == 2){
    image(img2, stampedX[cnt], stampedY[cnt], 150, 80);
    }
  }
  //Main stamp
  if (imgNum == 1){
  imageMode(CENTER);
  image(img, mouseX, mouseY,150,60); 
  }
  if (imgNum == 2){
  imageMode(CENTER);
  image(img2, mouseX, mouseY,150,80); 
  }
}
function mousePressed(){
  numStamped++;
  stampedX[numStamped-1] = mouseX;
  stampedY[numStamped-1] = mouseY;
  stampNum[numStamped-1] = imgNum;
}
function keyPressed(){
  //console.log(UP_ARROW);
  //change from approve to denied
  if(keyCode == UP_ARROW){imgNum = 1;}
  if(keyCode == DOWN_ARROW){imgNum = 2;}
  if(key == ' '){
    numStamped=0;
    stampedX=[];
    stampedY=[];
    stampNum=[];
  }
}