import oscP5.*;
import netP5.*;

OscP5 oscP5;

float r_env = 0 ;

PImage img ;

int [] xC;
int [] yC;
int [] pColor;

void setup() {
  size(500, 400, P3D);
  background(0);
  img = loadImage("image_200x100.jpg");
  img.loadPixels();

   oscP5 = new OscP5(this, 8600);
  
  xC = new int[img.pixels.length];
  yC = new int[img.pixels.length];
  pColor = new int[img.pixels.length];

  for (int i =0 ; i < img.width ; i++) {
    for (int j = 0 ; j < img.height; j++) {
      int loc = i + j*img.width;
      xC[loc] =i;
      yC[loc] =j;
      pColor[loc] = img.pixels[loc];
    }
  }
}


void draw() {
  background(0);

  float push_z = map(r_env, 45, 90, 0, 60);
  
  for (int i = 0 ; i < xC.length ; i++) {
    float br = brightness(pColor[i]);
    pushMatrix();
    noStroke();
    fill(pColor[i]);
    translate(150+ xC[i]+5, 150+yC[i]+5, push_z*br/20);
    rect(0, 0, 1, 1);
    popMatrix();
  }
}


void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/env")==true) {
    float firstValue = theOscMessage.get(0).floatValue();  
    
    r_env = firstValue;
  }
}

