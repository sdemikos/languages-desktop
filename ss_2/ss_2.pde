
 // Declare a float value named y

 
 //Assign the value of x plus 5.2 to the previous declarated y

 
//Declare a variable named z,  value which is x times y plus 15.0

void setup(){
 size (760,480); 
}
 float X = 50;
float Y= X +3.2;
float Z =X *Y + 1.0;

 void draw() {
   
 background(156,222,245);
 stroke(0);
 fill(255,0,255, 50);
 ellipse(pmouseX, pmouseY, mouseX, mouseY);
 
 fill(0,0, 255,25);
 
 rectMode(CENTER);
 rect(mouseX, mouseY,Y,Z);
 
 
 }