 import processing.sound.*;
 import processing.video.*;
 Movie movie;
 Movie movie1;

 String text;
 String action ="start"; // create a String variable called action that has inicial value
 PImage img;
 PImage img1;
 PImage img2;
 PImage img3;
 PImage img4;
 PImage img5;
 PImage img6;
 PImage img7;
 float r;
 float g;
 float b;
 float a;
 float fill;
 float rectX;
 float rectY;
 float background;
 int carX = 900;
int maxImages = 6;
int imageIndex= 0;
 PImage[] images = new PImage[maxImages];// declaration of an array of image
 boolean isPlaying = false;

  void setup() {
  size(1280, 720);
  background(255);
  movie = new Movie(this, "Tango_S.mov");
  movie1 = new Movie(this, "Hip.mov");
  frameRate(24);
  img = loadImage("Tango1.jpg");
  img1 = loadImage("City.jpg");
  img3 = loadImage("choose.jpg");
  img4 = loadImage("angryG.jpg");
  img5 = loadImage("street.jpg");
  img6 = loadImage("Bar2.jpg");
  img7 = loadImage("carmove.png");
    for (int i = 0; i < images.length; i ++ ) {
  images[i] = loadImage( "car" + i + ".png" );
 }
  }
 void draw() {
 textAlign(CENTER);
 imageMode(CORNER);
 // image click
 if(action == "start"){
 image(img1,0,0,1280,720);
 fill(255);
 textSize(32);
 text ("It's Friday night!!!  Let's have Fun ", width/2, height/2+40);
 }
 
 // second page image tango
  if (action == "scene1"){
  image(img, 0, 0, 1280, 720);
  button(360, 650,300, 80);
  button(920, 650,300, 80);
  fill(0);
  textSize(30);
  text("yes", 360, 650);
  text ("no", 920, 650);

   }
   
 //Yes I dance image choose
  else if (action == "scene2"){
 image(img3, 0, 0, 1280, 720);
 button(360, 650, 300, 80);
 button(920, 650,300, 80);
 fill(0);
 textSize(30);
 text("hip hop", 360, 660);
 text ("tango", 920, 660);
 textSize(26);
 text ("back", width/2, 90);

 }
 
  // choose Tango play video
  
  else if (action== "scene3"){
   textAlign(CENTER);
   movie.loop();
   movie.read();
   image(movie, 0, 0, width, height);
   fill(0);
   button(200, 660, 250, 60);
   button(1000, 660, 250, 60);
   textSize(26);
   text("let's try hip hop", 200, 667);
   text("let's take a break", 1000, 667);
  }
 
// choose Hip Hop

else if (action== "scene4") {
   background(255);
   movie1.loop();
   movie1.read();
   image(movie1, 0, 0, width, height);
   button(920, 650,250,60);
   textSize(26);
   text("let's try tango", 920, 660);
  
}
  //no dancing Go Home 
 
   
 else if (action == "scene5") {
   background(255);
   image(img4, 0, 0,1280,720);
   textSize(27);
   textAlign(CENTER);
   fill(42, 138, 219);
   textSize(30);
   text("You are such a bore!!!",720,300);
   text("go home...go!!!",720,330);
   
 } 
  
  else if (action == "scene6") {
  background(255);
  image(img5, 0, 0, 1280, 720); 
  textSize(24);
  textAlign(CENTER);
  fill(21,36,95);
  text(" garage", 500,420);
  text("stop to fix", 505,450);
  image(img7,carX,450, 540, 200);
  carX = carX +-5;
  if( carX<=-10){
  carX=0;
 
   }
 }
  else if(action=="scene7") {
  background(255);
  image(img6, 0, 0, 1280, 720);
  frameRate (24);
  fill = int(random(0, 255));
  r = random(1, 255);
  g = random (1, 255);
  b = random (1, 255);
  a = random (85,100); 
  wine(220,320, 340, 320, 280, 400,280,430, 15, 80);
  textSize(26);
  fill(0);
  text("would you like a drink?",240,210);
  text ("back", 880, 210);

}
  else if(action=="scene8") {
   background(27, 113, 203);
    frameRate(12);
textSize(24);
fill(0);
text("go away", 640,100);
text("press mouse", 140,400);
text("to fix", 140,430);
text("press mouse", 1170,400);
text("to fix", 1170,430);
   image(images[imageIndex], 250, 200, 800, 450);
   if (mousePressed == true) {
   if (mouseButton == CENTER) {
      imageIndex = 0;}
  if (isPlaying == true) {
    imageIndex = (imageIndex + 1) % images.length;
  }
  println(imageIndex);

   }}
  }
  // void button
  void button( int x, int y, int w, int h) {
  rectMode(CENTER);
  noFill();
  strokeWeight(3);
  stroke(22,36,88,80);
  rect( x, y, w, h); 
  }
   // void wine
  void wine (int x1, int y1, int x2, int y2, int x3, int y3,  int x, int y, int w, int h){  
   fill( r,g,b, a);
   triangle(220,320, 340, 320, 280, 400);
   rectMode(CENTER);
    fill(random(100, 175));
    rect(280,430, 15, 80);
  }
  
   void mousePressed() {
     
    if (action == "start") {
    if(mouseX >=300 && mouseX<=800 &&  mouseY >=320 && mouseY <450){
    action = "scene1";
    }
   }
     else if( action == "scene1"){
     if(mouseX >=200 && mouseX<=650 && mouseY >=550 && mouseY <=670){
     action = "scene2";
      }
     else if(mouseX >=800 && mouseX<=1100 && mouseY >=600 &&mouseY <=670){
     action = "scene5";
      }
     }

 //  // Yes dance
     else if( action == "scene2"){
     if(mouseX >=800 && mouseX<=1100 &&  mouseY >=550 && mouseY <=670){
     action = "scene3";
      } else if (mouseX>=200 && mouseX<660 &&  mouseY >550 && mouseY <670){
       action = "scene4";
     }
       else if(mouseX >=600 && mouseX<=700 &&  mouseY >=50 && mouseY <100){
       action = "scene1";
         }
     }
       else if (action== "scene3"){
       if (mouseX>50 && mouseX<=500 && mouseY >600 && mouseY<700){
       action="scene2";
       movie.stop();
     }
      else if(mouseX>8 && mouseX<1100 && mouseY >610 && mouseY<700){
        action="scene7";
        movie.stop();
       }}
         else if( action == "scene7"){
       if(mouseX>800 && mouseX<970 &&  mouseY >190 && mouseY<260){
       action = "scene1";
    }}
          else if( action == "scene8"){
       if(mouseX>=590 && mouseX<=750 &&  mouseY >90 && mouseY<160){
       action = "start";
       }}
          
       else if( action== "scene6"){
          if(mouseX>500 && mouseX<600&&mouseY>300 && mouseY<=480){
     action ="scene8";
     } 
       }
     else if (action== "scene4"){
       if (mouseX>=800 && mouseX<=1100 && mouseY >=550 && mouseY <=670){
       action="scene2";
        movie1.stop();
     }
   }
    else if( action == "scene5"){
      if(mouseX>550 && mouseX<870 &&  mouseY >250 && mouseY<350){
      action = "scene6";
    }}}

void mouseClicked() {
  if (mouseButton == LEFT) {
    isPlaying = true;
    
  }
   else if (mouseButton == RIGHT) {
    isPlaying = false;
   }}
  