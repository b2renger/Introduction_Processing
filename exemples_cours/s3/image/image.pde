PImage img;

void setup(){
 
  img = loadImage("visage.jpg");
  
  size(img.width,img.height);
  
  println(img.width, img.height);
  
 
  
}

void draw(){
  
  background(0);
  image(img,0,0);
  
}

