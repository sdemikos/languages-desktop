 color[] dessert  = {#9F9694, #791F33, #F69162, #85A562, #E2E1DC};
 color[] cream = dessert;
 
 int s = 30;
 
 void setup(){
  size(800,800);
  background(cream[0]);
  noStroke();
  
  for (int x = 0; x < width; x +=s){
    for( int y = 0; y < height; y +=s) {
      fill(cream[ int(random( 1, 5))]);
   rect(x, y, s,s);
      
    }
  }
  
 }
 
 void draw(){
   
     fill(cream[ int(random( 1, 5))]);
     int x = int(random(width/s)) *s;
     int y  = int(random(height/s)) *s;
     
   rect(x,y,s,s);
   
 }