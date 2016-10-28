//Flowing shapes 

//question how can I do to don't occupied the whole background?
//How can I make that starts with void mousePressed?

float r;
float g;
float b;
float a;
 
float diam;
float x;
float y;
float background;


void setup(){
 size(1280, 720);

}
 

 
void draw() {
 
  frameRate (15);
  background = int (random(0, 255));
  r = random(1, 255);
  g = random (1, 255);
  b = random (1, 255);
  a = random (1, 150);
  diam= random (50, 240);
  
  int width = int (random(1,300));
  int height = int (random(1, 300));
  
  x = random(800);
  y = random(800);
  
  
  stroke(0);
  strokeWeight(2);
  fill( r-50, g +20, b, a);
  rect(x,y, width, height);
 
  stroke(0);
  strokeWeight(2); 
  fill(r,g,b,a);
  ellipse(x, y, diam, diam);
}
  
   void mousePressed(){
      if( mouseButton ==LEFT){
    background(0);
    noStroke();
    } else if (mouseButton ==RIGHT){
      background(255);
      noStroke();
   }else{ 
     background(175);
     noStroke();
   }
   }
  void keyPressed() {
  background(r,g,b);
   }
 