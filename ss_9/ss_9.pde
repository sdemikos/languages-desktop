import processing.video.*;

int cellSize = 25;
int cols, rows;


Capture video;

// Initialize umbrela 
 
 Umbrella[] umbrellas = new Umbrella[500];

 void setup() {
 size(1280,720, P2D);
 cols = width / cellSize;
  rows = height / cellSize;
 
 frameRate(30);
 video = new Capture(this, 1280,720);
 video.start();
 
 for(int i =0 ; i <umbrellas.length; i ++){
 umbrellas[i]= new Umbrella(random(20, 90));
 
 } 
}

 // Operate umbrela
 
 void draw() {

 if(video.available()){
   video.read();
   video.loadPixels();
 }
    
 image(video,0,0);
 for(int i =0 ; i <umbrellas.length; i ++){
 umbrellas[i].descend(); 
 umbrellas[i].display();
 umbrellas[i].top();
 
}
 
   for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        int x = i*cellSize;
        int y = j*cellSize;
        int loc = (video.width - x - 1) + y*video.width; // Reversing x to mirror the image
      
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        // Make a new color with an alpha component
        color c = color(r, g, b, 75);
        pushMatrix();
        translate(x+cellSize/2, y+cellSize/2);
        // Rotation formula based on brightness
        rotate((2 * PI * brightness(c) / 255.0));
        rectMode(CENTER);
        fill(c);
        noStroke();
        // Rects are larger than the cell for some overlap
        rect(0, 0, cellSize+6, cellSize+6);
        popMatrix();
      }}}