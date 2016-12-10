// Define class outside of setup and draw.
 class Umbrella { 

  float x;
  float y;
  float d;
  float r;
  float g;
  float b;
  float a;
  float speed;

  // constructor
  Umbrella(float tempD) { 
  r = random(1, 200);
  g = random (1, 150);
  b = random (1, 255);
  a = random (40,85);
 
  x = random(0,1280);
  y = random(0,720);
  d=  random(10, 200);
  d= tempD;
  speed = random(-2,6); 
  }

  // Function.
  void display() { 
  fill(r,g,b, a);
  stroke(r,g,b,a);
  arc (x, y, d, d, PI*1.0, PI*1.8);
  }

  // Function.  
  void descend() { 
  y = y + speed;
    if (y >height) {
     y = 0;
    }
    }
    //function
    void top(){
      
      if(x< d){
     x=d; 
  }
}
 
 } 
 
  
  
  
  