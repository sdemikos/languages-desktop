
float r = 0;
float g = 0;
float b = 0;
int x= 0;
int y=0;
void setup() {
  size(500, 500);
  background (r,g,b);
  stroke(255);
  
}

void draw() {

  for (int l=0; l<width; l=width) {
    line (l, 0, l, height);
    rect(x, y, l, height/2);
    fill (0);
    triangle(240, 600, 464, 160, 688, 600);
    
  }

  for (int l=0; l<height; l=l+40) {
    line (0, l, width, l);
  }
  
  if (mouseX > width/2)
  {
    r = r +10;
  }
  else{
    r = r -10;
  }
  
  if (mouseY > height/2) {
    b = b +1;
  }
  else{
    b =b -10;
  }
    if (mousePressed) {
    g = g + 10; 
  } else {
    g = g - 10; 
  }  
 // Constrain all color values to between 0 and 255.
  r = constrain(r,0,255);
  g = constrain(g,0,255);
  b = constrain(b,0,255);
}