var words;
var rankCol = 0;
var wordCol = 1;
var partOfSpeechCol = 2;
var freqCol = 3;


function preload() {
words = loadTable("Word_Freq_Top_100.csv", "csv", "header");
}

function setup() {
  
  createCanvas(1000,500);
  background(200);
  console.log(words.getRowCount() + " total rows in table");
  console.log(words.getColumnCount() + " total columns in table");
  console.log(words.columns);
  //row = words.getRow(1);
  for (var c = 0; c < 10; c++){
    textAlign(LEFT, TOP);
    textSize(150-c*12);
    text(words.getString(c, wordCol), random(10,800), random(10,350));
  }
  //console.log(row.getString(c));
  
}

function draw() {

}

function keyTyped(){
  console.log(key);
  
  var rowsSelect = words.findRows(key, wordCol);
  console.log(rowsSelect);
  for (var c = 0; c < 10; c++){
    //;
    //console.log(rowsSelect.getString(c, wordCol));
    
    //textAlign(LEFT, TOP);
    //textSize(150-c*12);
    //text(words.getString(c, wordCol), random(10,800), random(10,350));
  }
}