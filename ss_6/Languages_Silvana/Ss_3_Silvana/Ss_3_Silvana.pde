/*
/////////////
//IF STATEMENT

  if (boolean expression) {
  code execute if boolean expression is true }
  
  else if ( boolena test #2) {
    code execute if boolean expression is true}
    
else (boolean expression # 3) {
   code execute if boolean expression is false
}

/////////////////
*/

//declare variables for background
float r=200;
float g= 160;
float b= 160;
float X = 200;
float Y= 100;

void setup()
 {
   size(800,800);
 
}

 void draw() {

    if (mouseX > width/3)
  {
    background(r,g, b);
    r = r +1;
    g =g +0.5;
    b = b +1;
    fill(175);
    stroke(4);
    ellipse(mouseX, mouseY, 220,280);
    
    fill (140);
    ellipse (width/2, height/2, 220, 280);
    
    fill(200, 20, 50, 60);
    rect(width/2, height/2, 220, 220);
    }
 
    else if (mouseX < 2* mouseY/3)
     {
       background(r,g,b);
       r = r-2;
       g =g -1;
       b = b -1;
       fill(200,30, 50, 75);
      ellipse(mouseX, mouseY, 220, 280);
        fill(255,255,255, 60);
    rect(mouseX, mouseY, 220, 220);
     }
     
    else {
      
      fill(175);
      rect(mouseX, mouseY, 220,220);
        fill(220,160,160, 50);
      ellipse(mouseX, mouseY, 220, 280);
    }
     
  
 }
  