PImage img ;

void setup(){ 
  background(0);
  img = loadImage("ville.jpg");
  size(img.width,img.height,P3D); 
  
}


void draw(){
  background(0);
  image(img,0,0);
  
  img.loadPixels();  
  int mousePos = mouseX + mouseY*width;
  println(hue(img.pixels[mousePos]));
  
}
