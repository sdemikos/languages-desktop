
 int y = 0;
 int x = 0;
 int width = 800;
 int height = 1000;
 
String action = "first"; 

int startGX = width;
int startGY = height;
int stopGX =200;
int stopGY =200;


int startCX = width;
int startCY = height;
int stopCX =200;
int stopCY = 200;

int Gw = 200;
int Gh = 80;
int e = 50;

float GX = startGX;
float GY = startGY;

float CX = startCX;
float CY = startCY;

float step = 0.005; //size of each step ( 0.0 to 1.0)

float pct = 0.0;     // percentage travelled(0.0 to 1.0)

void setup() {
  
  size(800, 1000);
  background(0);
  
}

void draw(){
  
 textSize(30);
 textAlign(CENTER);
rectMode(CENTER);

 if    (( action == "first")) {
  background(0);
  text("Click to choose",width/2, height/2, y );
  text("your way to the Museum",width/2, height/2 +40, y);
}

else if(action == "second"){
  background(175);
  fill(255); 
  GX = startGX + (( stopGX - startGX/2));
  GY = startGY + (( stopGY - startGY/2));
  CX = startCX + (( stopCX - startCX/2));
  CY = startCY + (( stopCY - startCY/2));
  
  fill(0,255,0);
  rect(GX, GY, Gw, Gh, e);
  
  fill(0,0,255);
  rect(CX-240, CY, Gw, Gh, e);
  
  fill(0); 
  text("G train", GX, GY +10);
  text("C train", CX-240, CY +10);

     }
 
  else if  (action == "third") {
  background(255);  
  GX = startGX + (( stopGX - startGX-200) * pct);
  GY = startGY + (( stopGY - startGY-650) * pct);
  CX = stopCX + (( stopCX - startCX) *pct);
  CY = stopCY + (( stopCY - startCY) *pct );
  pct += step;
  fill(0,255,0);
  rect(width-200, height-650, Gw,Gh, e);
  fill(0,0,255);
  rect(width/3, height/2, Gw, Gh, e);
  fill(0);
  text("G first Stop", width-200, height-640);
   text(" C first Stop", width/3, height/2 +10);
   }  
    
    
   else if  (action == "four") {
   background(255,0,0);
   
  GX = startGX + (( stopGX - startGX) * pct);
  GY = startGY + (( stopGY - startGY) * pct);
  CX = stopCX + (( stopCX - startCX) *pct);
  CY = stopCY + (( stopCY - startCY) *pct );
  pct += step;
  fill(0, 255,0);
  rect( x+ 100, y +100, Gw,Gh, e);
  fill(0,0,255);
  rect( x+ 100, y +100, Gw,Gh, e);
  fill(0);
 text("G Arrive!!", x+ 100, y +100);  
 text(" C Arrive!!", x+ 100, y +100);    
     } 
  println (action);
}
 void mousePressed(){
   if( action== "first") {
     action = "second";
  }
   else if (action =="second") {
     action = "third";
   }
   
   
   else if (action =="third") {
     action = "four";
   }
   else if (action =="last") {
    action = "first";
   }
 }
    