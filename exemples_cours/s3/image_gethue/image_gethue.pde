PImage img;

void setup(){
  
  size(200,250,P3D);
  img = loadImage("visage.jpg");
  img.resize(width,height);
  
  println(img.width+" "+ img.height);
  
 
  
}

void draw(){
  
  
  img.loadPixels();
  int index = mouseX + mouseY*img.width;
  float hue = hue(img.pixels[index]);
  println(hue);
  
  
  background(0);
  image(img,0,0);
  
  saveFrame("image_redimensionnee.jpg");
  noLoop();
  
}

