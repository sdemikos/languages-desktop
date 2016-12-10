//mouse move

void setup(){
 
  background(255);
  size (800,800); 
}

void draw() {
strokeWeight(20);
  stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
    strokeWeight(12);
   stroke(0, 255, 0);
   line(mouseX, mouseY, pmouseX, pmouseY);
   
     strokeWeight(1);
   fill(0, 0, 255,25);
  rect(pmouseX, pmouseY, 100, 200); 
}

void mousePressed(){
  background(255);
}

void keyPressed() {
  
  background(50, 50,150, 50);
}
  