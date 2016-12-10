
 color[] dessert   = {#9F9694, #791F33, #F69162, #85A562, #E2E1DC};
 color[] chemistry = {#0C2550, #A3D0C1, #FDF6DD, #FEE406, #F4651C};
 color[] styleyou  = {#FFFFCD, #CC5C54, #F69162, #85A562, #7AB5DB};
 color[] rainbow   = {#FFFFCD, #CC5C54, #F69162, #85A562, #7AB5DB};
 color [] palette = rainbow;
 
 int choice;
 int p1 =1;
 int p2 = 2;
 int  p3 =3;
 float x;
 float y;
 float d = 100;
 float b = 7;
 
 void setup(){
  size( 640, 480);
  x = width/2;
  y = height/2;
  
 }
   
  void draw(){
    
 background(palette[0]);
 fill(palette[p1]);
 stroke(palette[p2]);
 strokeWeight(b);
 ellipse(x,y,d,d);
  fill(palette[p3]);
 stroke(palette[p2]);
  strokeWeight(5);
  ellipse(x,y,d-100,d-50);
  
 if (mouseX> width/2){
   d +=.5;
   } 
   else if( mouseX< width/2){
    d-=.5;
   }
  else if(mouseY > height/2) {
    b+=.1;
  }
  else if (mouseY <height/2) {
    b -=.1;
    b = constrain ( b, 0,30);   
  }

  }
  
  void KeyPressed(){
    p1 = int (random(1,5));
    p2 = int (random(1, 5));
    
    int choice = key;
    switch(choice) {
      case 1:
      palette = chemistry;
      break;
      
      case 2:
      palette = styleyou ;
      break;
      
    }
  }