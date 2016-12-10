
 // title Habitats
 //Silvana Silveira
 
 import processing.sound.*;
 import processing.video.*;
int cellSize = 20;
int cols, rows;
Capture video;

 Movie summer;
 Movie summer2;
 Movie autumn;
 Movie autumnI;
 Movie winter;
 Movie winterC;
 SoundFile winterS;
 SoundFile  autumnS;
 SoundFile summerS;
int numPixelsWide, numPixelsHigh;
int blockSize = 10;
color fallColors[];

 String text;
 String action ="scene1"; // create a String variable called action that has inicial value
 PImage img; 
 boolean button = true;
 
// Initialize Bubble 
 Bubble[] bubbles = new Bubble[800];
 
  void setup() {  
  size(1280, 720, P2D);
  frameRate(24);
  summer = new Movie(this, "Water_summer_s.mov");
  summer2 = new Movie(this, "Water_summer_ns.mov");
  autumn = new Movie(this, "Fall_s.mov");
  autumnI = new Movie(this, "Fall_s_Int.mov");
  winter = new Movie(this, "snow_s.mov");
  winterC = new Movie(this, "snow_sC.mov");
  autumnS =new SoundFile(this,"rain.mp3");
  winterS =new SoundFile(this,"snow.mp3");
  img = loadImage("start.jpg");
  
  cols = width / cellSize;
  rows = height / cellSize;
  colorMode(RGB,255, 255, 255,100);
 
  video = new Capture(this, width, height);
  video.start();
 
  for(int i =0 ; i <bubbles.length; i ++){
  bubbles[i]= new Bubble(random(10, 50));
 
 } 
  }

  void draw() {
 
  if(action == "scene1"){
  image(img, 0, 0, width, height);
  fill(0);
  textSize(27);
  text("autumn", 585, 650);
  text ("winter", 1030, 650);
  text ("summer", 163, 650);
 }
 
 //Summer video with mouse hover interaction
  if (action == "scene2"){ 
  image(summer,0,0, width, height);
  summer.loop();
  summer.read();

  fill(0);
  textSize(27);
  text("winter", 360, 660);
  text ("autumn", 920, 660);
  text ("non-pollution", 120,360);
  text ("pollution", 1060,360);
  tint(mouseX, mouseY, 255);
  if(mouseX>=640&& mouseX<1280 && mouseY>50&&mouseY<720){
  for(int i =0 ; i <bubbles.length; i ++){
  bubbles[i].descend(); 
  bubbles[i].display();
  bubbles[i].top();
 
 }
  } 
  } 
    //Autumn
  else if (action == "scene3"){
  image(autumn, 0, 0, width, height);
  autumn.loop();
  autumn.read();
 fill(0);
 textSize(27);
 //text("non-human interaction", 360, 660);
 text ("human interaction", 920, 660);
 text ("habitat",610, 90);

  }
      
   // Autumn with Human Interaction
   else if (action == "scene4"){
   image(autumnI,0,0, mouseX, mouseY);
   autumnI.loop();
   autumnI.read();
   translate(width/2, height/2);
   tint(mouseX, mouseY,255);
   fill(0);
   textSize(27);
  
  }
  
// Winter 
   else if (action== "scene5") {
   winter.loop();
   winter.read();
  image(winter, 0, 0, width, height);
  fill(0);
  textSize(27);
  text ("human interaction", 920, 660);
  text ("habitat", 605, 90); 
   }
   
  // Winter with Capture camera
   else if (action== "scene6") {
   winterC.loop();
   winterC.read();
  image(winterC, 0, 0, width, height);
  fill(0);
  textSize(27);
  text(" non-human interaction", 150, 660);
  text ("habitat", 605, 90); 
 
  if (video.available()) {
    video.read();
    video.loadPixels();
    // Begin loop for columns
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++) {
      
        // We interact with nature
        int x = i*cellSize;
        int y = j*cellSize;
        int loc = (video.width - x - 2) + y*video.width; // Reversing x to mirror the image
      
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        // Make a new color with an alpha component
        color c = color(r-70,g-60,b, 25);
      
        // Code for drawing a single rect
        // Using translate in order for rotation to work properly
        pushMatrix();
        translate(x+cellSize/2, y+cellSize/2);
        // Rotation formula based on brightness
        rotate((2 * PI * brightness(c) / 255.0));
        rectMode(CENTER);
        fill(c);
        noStroke();
        // Rects are larger than the cell for some overlap
        rect(0, 0, cellSize+3, cellSize+3);
        popMatrix();
        
  }}}}
   else if (action=="scene7"){
    // All videos play like in future installation
     //Summer
  image(summer2,0,0, width, height);
  summer2.loop();
  summer2.read();
     //Autumn
  image(autumn,425, 0, width, height);
  autumn.loop();
  autumn.read();
    fill(0);
   textSize(27);
  text ("begin", 610, 90);
     // Winter 
   winter.loop();
   winter.read();
  image(winter, 856, 0, width, height);
  fill(0);
  textSize(27);
  text("autumn", 590, 650);
  text ("winter", 1050, 650);
  text ("summer", 165, 650);
   }    
     
  } 

    void mousePressed() {
  
     if( action == "scene1"){
     if(mouseX >150 && mouseX<420 && mouseY >600 && mouseY <700){
     action = "scene2"; //summer
     
      }
     else if(mouseX>430 && mouseX<870 && mouseY >=600 &&mouseY <=700){
     action = "scene3"; //fall
      }
      else if(mouseX>880 && mouseX<1200 && mouseY >=600 &&mouseY <=700){
     action = "scene5"; //winter
      }
     }
     // summer
     else if( action == "scene2"){
     if(mouseX >=800 && mouseX<=1100 &&  mouseY >=550 && mouseY <=670){
     action = "scene3"; //fall
      summer.stop();
       noTint();
      
      } else if (mouseX>=200 && mouseX<660 &&  mouseY >550 && mouseY <670){
       action = "scene5"; //winter 
       summer.stop();  
        noTint();
     }

     } 
       //Autumn
     else if(action== "scene3"){
     if(mouseX >=800 && mouseX<=1100 &&  mouseY >=550 && mouseY <=670){
     action = "scene4"; // Autumn with Human interaction
     autumn.stop();
     autumnS.play();
     
     } else if (mouseX>=200 && mouseX<660 &&  mouseY >550 && mouseY <670){
       action = "scene3"; // Autumn no Interaction
       autumnS.stop();
      
     } else if(mouseX >=600 && mouseX<=700 &&  mouseY >=50 && mouseY <100){
       action = "scene7"; 
      autumn.stop(); 
      autumnS.stop();
        noTint();
      }
     }
      // Autumn with  Human Interaction
      else if(action=="scene4"){
        if(mouseX >=800 && mouseX<=1100 &&  mouseY >=550 && mouseY <=670){
     action = "scene4"; //  Human Interaction
     autumnS.play();
    
    } else if (mouseX>=100 && mouseX<=800 && mouseY>=20 && mouseY <=720){
      action = "scene3"; //no Interaction
       autumnI.stop();
     autumnS.stop();
     }}
     
    //Winter
    else if (action== "scene5"){
    if(mouseX >=800 && mouseX<=1200 &&  mouseY >=550 && mouseY <=670){
     action = "scene6"; 
       winterS.stop();
    
    } else if (mouseX>150 && mouseX<=550 && mouseY >=550 && mouseY <=670){
      action = "scene5"; 
        winterS.play();
      
     } else if(mouseX >=600 && mouseX<=700 &&  mouseY >=50 && mouseY <100){
       action = "scene7"; 
        winterS.stop();
       winter.stop(); 
      
     }}
     
     else if (action== "scene6"){
    if(mouseX >=800 && mouseX<=1100 &&  mouseY >=550 && mouseY <=670){
     action = "scene6"; 
      winterS.stop(); 
    
    } else if (mouseX>150 && mouseX<=550 && mouseY >=550 && mouseY <=670){
      action = "scene5"; 
       winterS.play();
      winterC.stop();
     
       
     } else if(mouseX >=600 && mouseX<=700 &&  mouseY >=50 && mouseY <100){
       action = "scene7"; 
      winterC.stop();
     winterS.stop();
     }}
     
     else if (action=="scene7"){
       if(mouseX >150 && mouseX<420 && mouseY >600 && mouseY <700){
     action = "scene2"; //summer
      }
     else if(mouseX>430 && mouseX<870 && mouseY >=600 &&mouseY <=700){
     action = "scene3"; //fall
      }
      else if(mouseX>880 && mouseX<1200 && mouseY >=600 &&mouseY <=700){
     action = "scene5"; //winter
      }
       else if(mouseX >=600 && mouseX<=700 &&  mouseY >=50 && mouseY <100){
       action = "scene1"; 
      autumn.stop(); 
     summer.stop();
     winter.stop();
     
     }}}