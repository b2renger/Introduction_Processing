PImage img ;

int [] xC;
int [] yC;
int [] pColor;

void setup(){
  size(200,100,P3D);
  background(0);
  img = loadImage("image_200x100.jpg");

  img.loadPixels();
  
  xC = new int[img.pixels.length];
  yC = new int[img.pixels.length];
  pColor = new int[img.pixels.length];
  
  
  for (int i =0 ; i < img.width ; i++){
   for (int j = 0 ; j < img.height; j++){
    int loc = i + j*img.width;
     xC[loc] =i;
     yC[loc] =j;
     pColor[loc] = img.pixels[loc];     
   }
  }

  
  
}


void draw(){
  
  background(0);
  image(img,0,0);
  
  
}
