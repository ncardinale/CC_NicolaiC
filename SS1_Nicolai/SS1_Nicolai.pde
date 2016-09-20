//Bowman
//Nicolai Cardinale

void setup ()

{
  
size (1080, 720);

background (10, 10, 115);
stroke (10, 10, 130);
fill (10, 10, 130);
triangle (0, 0, 0, 720, 800, 720);
stroke (10, 10, 170);
fill (10, 10, 170);
triangle (0, 0, 0, 720, 600, 720);
stroke (10, 10, 200);
fill (10, 10, 200);
triangle (0, 0, 0, 720, 400, 720);
stroke (10, 10, 230);
fill (10, 10, 230);
triangle (0, 0, 0, 720, 200, 720);

stroke (10, 10, 100);
fill (10, 10, 100);
triangle (0, 0, 1080, 0, 1080, 100);

fill(77, 70, 70);
arc (700, 300, 500, 400, 10, 20);

//used to make bow shape
fill (10, 10, 115);
stroke (10, 10, 115);

arc (680, 310, 500, 400, 10, 20);

fill (100, 150, 50);
quad (300, 100, 400, 100, 400, 200, 300, 200);
quad (350, 50, 450, 50, 300, 200, 300, 100);
quad (300, 220, 350, 220, 350, 240, 300, 240);
rect (300, 260, 70, 20);
rect (300, 300, 60, 20);
rect (300, 340, 50, 20);
rect (300, 380, 45, 20);

//Arrows
stroke ( 170, 0, 0);
strokeWeight (5);
line (250, 200, 245, 160);
line (258, 200, 255, 156);
line (266, 200, 265, 144);
line (275, 200, 274, 135);

//Quiver
strokeWeight (1);
stroke (0);
fill (40, 40, 10);
quad (245, 200, 280, 200, 295, 600, 290, 600);
fill (10, 10, 115);

//Bow String
stroke (0);
line (562, 133, 500, 400);
line (830, 470, 500, 400);

//feather
fill( 100, 150, 50);
triangle (500, 400, 550, 380, 485, 385);
triangle (500, 400, 550, 380, 500, 420);

//Knotched Arrow
stroke ( 200, 0, 0);
strokeWeight (9);
line (500, 400, 1000, 178);

//Broadhead arrow
fill( 200, 0, 0);
strokeWeight (1);
triangle (1020, 170, 950, 185, 980, 190);
triangle (1020, 170, 960, 210, 980, 190);



}
