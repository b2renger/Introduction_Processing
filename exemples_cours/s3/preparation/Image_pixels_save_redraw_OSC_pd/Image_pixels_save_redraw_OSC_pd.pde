import oscP5.*;
import netP5.*;

OscP5 oscP5;

PImage img ;

int [] xC;
int [] yC;
int [] pColor;

float env1;
float env2;

void setup() {
  size(500, 400, P3D);
  background(0);
  img = loadImage("image_200x100.jpg");

  img.loadPixels();

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

  oscP5 = new OscP5(this, 12000);
}


void draw() {

  background(0);

  float kick_z = map(env1, 0, 100, 0, 100);
  float snare_z = map(env2, 0, 100, 0, 100);

  for (int i = 0 ; i < xC.length ; i++) {
    float hue = hue(pColor[i]);
    if (hue > 120 && hue<145) {
      pushMatrix();
      noStroke();
      fill(pColor[i]);
      translate(100+ xC[i]+5, 100+yC[i]+5, kick_z);
      rect(0, 0, 1, 1);
      popMatrix();
    }
    
    else if (hue > 50 && hue<100) {
      pushMatrix();
      noStroke();
      fill(pColor[i]);
      translate(100+ xC[i]+5, 100+yC[i]+5, snare_z);
      rect(0, 0, 1, 1);
      popMatrix();
    }

    else {
      pushMatrix();
      noStroke();
      fill(pColor[i]);
      translate(100+ xC[i]+5, 100+yC[i]+5, 0);
      rect(0, 0, 1, 1);
      popMatrix();
    }
  }
}

void oscEvent(OscMessage theOscMessage) {
  /* check if theOscMessage has the address pattern we are looking for. */

  if (theOscMessage.checkAddrPattern("/env1")==true) {

    env1 = theOscMessage.get(0).floatValue();
  }  


  else if (theOscMessage.checkAddrPattern("/env2")==true) {

    env2 = theOscMessage.get(0).floatValue();
  }
  
  else {
   env1 =0;
  env2 =0 ; 
  }
} 
//println("### received an osc message. with address pattern "+theOscMessage.addrPattern());

