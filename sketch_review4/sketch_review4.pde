
float circleX = 0;
float circleY= 0;
float circleX2 = 1000;
float circleY2= 0;
float circleX3 = 0;
float circleY3 = 1000;
float circleX4 =1000;
float circleY4 = 1000;
float circleW = 50;
float circleH = 100;
float circleStroke = 255;
float circleFill =0;
float change = 0.7;
float r= 175;
float g = 0;
float b = 0;
float line = 0;

int time1 = 2000;
int time2 = 6000;
float x = 0;


void setup(){ 
 size(1000, 1000);
}


void draw(){

  int currentTime = millis();
    background(r,g, b);
   if (currentTime > time2) {
     x -= 2; 
   }
  stroke(circleStroke);
  fill(circleFill);
  ellipse(circleX, circleY, circleW, circleH);
  ellipse(circleX2, circleY2, circleW, circleH);
  ellipse(circleX3, circleY3, circleW, circleH);
  ellipse(circleX4, circleY4, circleW, circleH);
   line(width/2, 0, width/2, height);
  
  //change the values of all variables
  circleX = circleX + change;
  circleY = circleY + change;
  
  circleX2 = circleX2 - change;
  circleY2 = circleY2 + change;
  
  circleX3 = circleX3 + change;
  circleY3 = circleY3 - change;
  
  circleX4 = circleX4 - change;
  circleY4 = circleY4 - change;
  
  circleW = circleW + change;
  circleH = circleH + change;

  
  circleStroke = circleStroke + change;
  circleFill = circleFill + change;
  

//"if mouseX is greater than width divided by 2"

  if (mouseX > width/2) {
     background(r,g, b);
r = r+1;
  }
else if (mouseX < width/2){
  r = r-1;
  line= 0;
}

else if ( r> 255) {
  r = 255;
}
 else {
  r = 0;
   }
  
}