

int circleX = 100;
int circleY = 100;


void setup() {
  size (500,500);
  
  background(0, 0,255);
}

 void mousePressed() {
   
   background(0, 0,255);
   
 }
void draw() {
  
  stroke(0, 0,255);
  
  strokeWeight(2);
  
 fill(200, 50, 50);
 
ellipse (mouseX, mouseY, circleX, circleY);
circleX = circleY +50;

}