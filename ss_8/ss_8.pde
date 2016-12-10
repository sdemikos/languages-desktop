
// Initialize umbrela 
 PImage cloud12;
 Umbrella[] umbrellas = new Umbrella[500];

 void setup() {
 size(1280,720, P2D);
 cloud12 = loadImage("cloud12.jpg");
 for(int i =0 ; i <umbrellas.length; i ++){
 umbrellas[i]= new Umbrella(random(20, 90));
 
 } 
}

 // Operate umbrela
 
 void draw() {
 
 //image(cloud12, 0,0, 1280,720);
 float x = random(width);
 float y= random(height);
   
 color c = cloud12.get(int(x), int(y));
 fill(c);
 arc (x, y, 30,30, PI*1.0, PI*1.8);
 
//loadPixels();
// for( int i = 0; i <pixels.length; i++){
// pixels[i] = color(random(30,60),0, random( 60,255));
// }
 //updatePixels();

 for(int i =0 ; i <umbrellas.length; i ++){
 umbrellas[i].descend(); 
 umbrellas[i].display();
 umbrellas[i].top();
 
}
 }