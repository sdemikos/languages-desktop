
// Define class outside of setup and draw.
 class Bubble { 
  float c;
  float x;
  float y;
  float d;
  float r;
  float g;
  float b;
  float a;
  float speed;

  // constructor
  Bubble(float tempD) { 
  //r = random(1,100);
  //g = random (1, 100);
  //b = random (1, 200);
  a = random (10,50);
  c = random (0,65);
  x = random(0,1280);
  y = random(0,720);
  d=  random(4,25);
  d= tempD;
  speed = random(-2,2); 
  }

  // Function.
  void display() { 
  //fill(r,g,b,a);
  //stroke(r,g,b);
  fill(c,a);
  noStroke();
  ellipse(x, y, d, d);
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
 
  