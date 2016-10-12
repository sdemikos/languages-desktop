

int x = 800; 
int y = 950; 
int rectW = 160;
int rectH = 60;
int e = 20;
int diam = 40;
int r=0;
int g=0;
int b=0;
int speed = 5;
int direct = -1;
int change= 100;
int offset = rectW/2-30;


String state ="first"; // create a String variable called action that has inicial value
PImage img;
 
 void setup (){
   size(1100,1100);
 img = loadImage("muse.jpg");
 frameRate(30);
 
 }
 void draw(){
 textSize(35);
 textAlign(CENTER);

 if(( state == "first")) {
   background(65, 54, 232); 
   stroke(50, 54, 210);
  strokeWeight(1);
  for (int x = 4; x < width; x += 4) {
float mx = mouseX;
float offsetA = random(-mx, mx);
float offsetB = random(-mx, mx);
line(x + offsetA,1100, x - offsetB, 0);
 }
   fill(255);
  text("Click your Way ",width/2, height/2, y );
  text("to the Museum",width/2, height/2 +40, y); 
  textSize(22);
  fill(0);
  text("Silvana Silveira", x-640, y-900);
  text(" Museum of Tomorrow", x-640, y-870);

   
 }
 else if (state == "second"){
  background(106, 37, 185);
  stroke(83, 19, 157);
strokeWeight(1);
    for (int x = 4; x < width; x += 4) {
float mx = mouseX/20;
float offsetA = random(-mx, mx);
float offsetB = random(-mx, mx);
line(x + offsetA,1100, x - offsetB, 0);
 }
  seeTrain(x, y, 160, 60, 20, 40, 0, 255, 0, "G train");
  seeTrain(x-300, y-100, 160, 60, 20, 40, 0, 0, 255, "C train");
  seeTrain(x-600, y, 160, 60, 20, 40, 255,0,0, "A train");
 }
 
else if( state=="third"){
  background(0,0,205, 50);
  text("First Stop",width/2, height-700);
  seeTrain(x-250,y-450, 160, 60, 20, 40, 0, 255, 0,  "  G train");
  seeTrain(x+100, y-300, 160, 60, 20, 40, 0, 0, 255, "C train");
  seeTrain(x-600, y -500, 160, 60, 20, 40, 255,0,0, "A train");
}
    
 else if (state=="four"){ 
 textSize(35);
 textAlign(CENTER);
  fill(0);
  background(183, 211, 243);
 int r =183;
int g= 211;
int b= 180;
 int c = 0;
 while (c< width){
  noStroke();
  float distance = abs(mouseX -c);
  fill(distance+r,g,b);
  rect(c, 0, 40, 1100);
  c +=70;
  
}
  image(img, 300, 300);
  text("Arrive",x-270, y-610);
  
}
  else if( state == "fifth") {
   background(65, 54, 232); 
  text("Click your Way ",width/2, height/2, y );
  text("to the Museum",width/2, height/2 +40, y);
 
}
 }
  
 void mousePressed(){
   
   if( state== "first") {
     state = "second";
  }
  
  else if (state == "second"){
   state ="third";   
 }
 
else if (state=="third"){
  state= "four"; 
}

else if (state==" four"){
  state= "fifth";
}
else if (state==" fifth"){
  state= "sixth";
}
}
 
 // function to see train call seeTrain
 void seeTrain(int x, int y, int rectW, int rectH, int e, int diam, int r, int g, int b, String train){
  stroke(3);
  rectMode(CENTER);
  fill(0);
  ellipse(x- offset, y+ offset-10, diam, diam);
  ellipse(x+ offset, y+ offset-10, diam, diam);
  fill(0);
  ellipse(x- offset, y+ offset-10, diam, diam);
  ellipse(x+ offset, y+ offset-10, diam, diam);
  fill(r,g+255,b);
  rect(x, y, rectW, rectH, e);
  fill(0);
  rect(x- offset+10, y-50, rectW/12, rectH-20);
  fill(255);
  rect(x- offset-10, y-10, rectW/8, rectH/3);
  rect(x+ offset+10, y-10, rectW/8, rectH/3);
  rect(x- offset+30, y-10, rectW/8, rectH/3);
  rect(x- offset +70, y-10, rectW/8, rectH/3);
  textAlign(CENTER);
  textSize(22);
  fill(0);
  text(train,x+offset-45, y-offset+75);}
  