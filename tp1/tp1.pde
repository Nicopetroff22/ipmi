PImage miImagen;


void setup(){
  size(800,400);
  miImagen= loadImage("foto.jpg");

}

void draw(){
  background(10);
  image(miImagen,0, 0, 400, 400);
  
  fill(255,224,186);
  stroke(255,224,186);
  rect(580,240,30,50);
  fill(255,224,186);
  circle(591,167, 150);  
  fill(240,172,63);
  stroke(198,134,66);
  ellipse(625,61,95,25);
  fill(198,134,66);
  stroke(198,134,66);
  circle(613,100, 80);
  fill(0,0,150);
  stroke(0,0,150);
  ellipse(590, 113, 150, 60);
  fill(255);
  rect(545,279, 125,30);
  fill(198,134,66);
  stroke(198,134,66);
  square(542,295,160);
  fill(255,3,32);
  stroke(255,3,32);
  ellipse(557,212,40,10);
  fill(255);
  stroke(255);
  ellipse(546,162,40,20);
  fill(255);
  ellipse(605,162,40,20);
  fill(0);
  circle(556,162,15);
  fill(0);
  circle(615,162,15);
  fill(24,95,242);
  stroke(24,95,242);
  triangle(667,82,692,200,720,200);
  fill(242,181,66);
  stroke(242,181,66);
  triangle(661,56,677,218,711,199);
  fill(24,95,242);
  stroke(24,95,242);
  square(673,205,25);
  rect(698,200,20,25);
  fill(216,146,39);
  stroke(216,146,39);
  triangle(574,166,574,199,558,199);
 
 
}
