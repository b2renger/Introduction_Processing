PImage img ;


void setup(){
  size(600,400,P3D);
  background(0);
  img = loadImage("ville.jpg");
  
  
}


void draw(){
  
  background(0);
  image(img,0,0);
  
}
