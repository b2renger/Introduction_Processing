PImage img;

int [] xCoord;
int [] yCoord;
float [] pColor;


void setup(){
  
  size(200,250,P3D);
  img = loadImage("image_redimensionnee.jpg");
  
  img.loadPixels();
  
  xCoord = new int [img.pixels.length];
  yCoord = new int [img.pixels.length];
  pColor = new float [img.pixels.length];
  
  
  
}

void draw(){
 background(0);
  image(img,0,0); 
  
}
