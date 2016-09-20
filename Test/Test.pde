
//Runs one time
void setup () {
  size (700, 700);
  background (255);
}

//Runs continously
void draw (){
  for (int i=1; i<=10; i=i+1){
    println (1);
  }
  for (int q=0; q <= 700; q=q+50){
    line (q, 0, q, height);
  }
   for (int q=0; q <= 700; q=q+50){
    line (0, q, width, q);
}
}