//Options Menu
//Created by: K.C. and Nico

//Varubles For Slider
var slider1;
var slider3;
var slider4;
var slider5;
var slider6;
var black=0;

//Putting in Images
function preload(){
  img1 = loadImage("pigeon.png");
  img2 = loadImage("Dog.png")
}

function setup() {
  createCanvas(600, 800);
  
  var sliderWidth = 300;

//Creating main sliders

  slider1 = createSlider(0, 255, 0, 1);
  slider1.position(width/2 - sliderWidth/2, 200);
  slider1.style('width', '300px');

  slider3 = createSlider(0, 3, 0, 1);
  slider3.position(width/2-60, 300);
  
  slider4 = createSlider(0, 255, 0);
  slider4.position(width/2-100, 400);
  slider4.style('width', '200px');

  slider5 = createSlider(0, 8, 0, 1);
  slider5.position(width/2-60, 500);

  slider6 = createSlider(0, 1, 0, 1);
  slider6.position(width/2-60, 600);
}

function draw() {
  
//Slider For background  
var val1 = slider1.value();
background(val1);

//More Varubles
var numOptions = slider3.value();
var numPidgeon = slider5.value();
var dogOpp = slider4.value();
var Slide6 = slider6.value();

if(Slide6=1){
  noSyrup();
}

//Dog
tint(255, dogOpp);
image(img2, width/2-100, height-180, 200, 200);

//Case Statement for shown sliders
switch(numOptions){
  case 0:
    slider4.hide();
    slider5.hide();
    slider6.hide();
    break;
  case 1:
    slider4.show();
    text("Dog Opacity", width/2, 380);
    slider5.hide();
    slider6.hide();
    break;
  case 2:
    slider4.show();
    text("Dog Opacity", width/2, 380);
    slider5.show();
    text("Quantity of Pidgeons", width/2, 480);
    slider6.hide();
    break;
  case 3:
    slider4.show();
    text("Dog Opacity", width/2, 380);
    slider5.show();
    text("Quantity of Pidgeons", width/2, 480);
    slider6.show();
    text("Maple Syrup Density", width/2, 580);
    break;
}

tint(255, 255);

//image(img1, 10, 10, 100, 100);

//Case statement for num of pidgeons
switch(numPidgeon){
  case 0:
    break;
  case 1:
    image(img1, 10, 10, 100, 100);
    break;
  case 2:
    image(img1, 10, 10, 100, 100);
    image(img1, 10, 260, 100, 100);
    break;
  case 3:
    image(img1, 490, 320, 100, 100);
    image(img1, 10, 10, 100, 100);
    image(img1, 10, 260, 100, 100);
    break;
  case 4:
    image(img1, 490, 30, 100, 100);
    image(img1, 490, 320, 100, 100);
    image(img1, 10, 10, 100, 100);
    image(img1, 10, 260, 100, 100);
    break;
  case 5:
    image(img1, 10, 670, 100, 100);
    image(img1, 490, 30, 100, 100);
    image(img1, 490, 320, 100, 100);
    image(img1, 10, 10, 100, 100);
    image(img1, 10, 260, 100, 100);
    break;
  case 6:
    image(img1, 490, 640, 100, 100);
    image(img1, 10, 670, 100, 100);
    image(img1, 490, 30, 100, 100);
    image(img1, 490, 320, 100, 100);
    image(img1, 10, 10, 100, 100);
    image(img1, 10, 260, 100, 100);
    break;
  case 7:
    image(img1, 10, 670, 100, 100);
    image(img1, 490, 640, 100, 100);
    image(img1, 490, 200, 100, 100);
    image(img1, 490, 30, 100, 100);
    image(img1, 490, 320, 100, 100);
    image(img1, 10, 10, 100, 100);
    image(img1, 10, 260, 100, 100);
    break;
  case 8:
    image(img1, 10, 460, 100, 100);
    image(img1, 490, 200, 100, 100);
    image(img1, 490, 640, 100, 100);
    image(img1, 10, 670, 100, 100);
    image(img1, 490, 30, 100, 100);
    image(img1, 490, 320, 100, 100);
    image(img1, 10, 10, 100, 100);
    image(img1, 10, 260, 100, 100);
    break;
}

textAlign(CENTER);

//Main Text
textSize(100);
fill(255, 0, 0);
text("Options", width/2, 80);

textSize(50);
fill(255, 0, 0);
text("Background Hue",width/2, 180);

fill(255, 0, 0);
text("More Options", width/2, 280);



//Dog Oppacity
//Amount Of Pidgons
//Maple Syrup Density
}


function noSyrup(){
  console.log("No Syrup")
 // fill(0, 0, 255);
//  text("NO SYRUP AVALABLE", width/2, 580);
}

