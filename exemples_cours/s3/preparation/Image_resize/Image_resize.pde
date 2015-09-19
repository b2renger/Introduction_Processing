PImage img ;


void setup(){
  size(200,100,P3D);
  background(0);
  img = loadImage("ville.jpg");
  img.resize(width,height);
  
  
}


void draw(){
  
  background(0);
  image(img,0,0);
  saveFrame("image_"+width+"x"+height+".jpg");
  noLoop();
  
}
