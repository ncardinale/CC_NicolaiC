var words;
var displayWords = [];

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
  //console.log(words.getRowCount() + " total rows in table");
  //console.log(words.getColumnCount() + " total columns in table");

  // Setup the first array
  for (var c = 0; c < 10; c++){
    row = words.getRow(c)
    displayWords[c] = [row.getString(wordCol), row.getString(freqCol)];
  }
  
  drawWords();
}

function draw() {

}

function drawWords(){
  for (var c = 0; c < 10; c++){
    textAlign(LEFT, TOP);
    textSize(150-c*12);
    fill(0,250-c*20,0);
    text(displayWords[c][0], random(10,800), random(10,350));
  }
}

function keyTyped(){

  if (key==' '){
    // Get 10 random words
    for (var c = 0; c < 10; c++){
      randomWordNum = random(0, words.getRowCount()-1);
      randomWordNum = round(randomWordNum);
      row = words.getRow(randomWordNum);
      displayWords[c] = [row.getString(wordCol), row.getString(freqCol)];
    }
    
    // Sort the displayWords in order of frequency
    
    background(200);
    displayWords = displayWords.sort(sortFunction);
    drawWords();
  }
  
}

function sortFunction(a, b) {
  //parseInt takes string and makes it into intiger
    if (parseInt(a[1]) === parseInt(b[1])) {
        rtn = 0;
    }
    else {
      // ?  : = turrnary operator. Mushed If statement
        rtn = (parseInt(a[1]) < parseInt(b[1])) ? 1 : -1;
    }
    console.log("A = " + a + " B = " + b + " RTN = " + rtn);
    return rtn;
}