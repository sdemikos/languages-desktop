 
 //Declare a int name count, assigned the value 0
 
 //int count = 0;
 
 //Declare a char named letter, assign the value 'a'
 //char letter = 'a';
 
 //Declare a boolen named happy, assign the value false
 //boolean happy = false;
 
 //declare a float named x, assigned the value 4.0

 
 // Declare a float value named y (no assignment)

 
 //Assign the value of x plus 5.2 to the previous declarated y

 
//Declare a variable named z, assign it the value which is x times y plus 15.0




void setup(){
 size (600,600); 
}
 float X = 100;
float Y= X +3.2;
float Z =X *Y + 1.0;

 void draw() {
   
 background(255);
 stroke(0);
 fill(255,0,255, 50);
 ellipse(pmouseX, pmouseY, mouseX, mouseY);
 
 fill(0,0, 255,25);
 
 rectMode(CENTER);
 rect(mouseX, mouseY,Y,Z);
 
 
 }