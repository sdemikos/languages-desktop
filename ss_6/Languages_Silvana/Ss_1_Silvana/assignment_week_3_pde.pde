
void setup(){
 size(800,800);
 background(255,0,0);
 
}


void draw(){
  stroke(0);
  strokeWeight(2);
line(400,400,pmouseX, pmouseY);

  stroke(0);
  fill(255);
  ellipse(400,400,mouseX,mouseY);
  
 
}

void mousePressed() {
 stroke(1);

 triangle(400,400,200,500,600,400);
  
  
}

void keyPressed() {
  
  background(255, 0,0);
  
}