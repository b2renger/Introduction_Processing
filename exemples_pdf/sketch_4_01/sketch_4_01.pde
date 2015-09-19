PImage img;

void setup(){
 
  img = loadImage("visage.jpg");
  size(600,400);  
  println(img.width, img.height);
   
}

void draw(){ 
  background(0);
  image(img,25,50); 
}

