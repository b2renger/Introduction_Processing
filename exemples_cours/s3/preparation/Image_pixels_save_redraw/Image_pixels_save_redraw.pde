PImage img ;

int [] xC;
int [] yC;
int [] pColor;

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
}


void draw() {

  background(0);
 
  float push_z = map(mouseX, 0, width, 0, 60);

  for (int i = 0 ; i < xC.length ; i++) {
    float hue = hue(pColor[i]);
    if (hue > 150 && hue<180) {
      pushMatrix();
      noStroke();
      fill(pColor[i]);
      translate(100+ xC[i]+5, 100+yC[i]+5, push_z);
      rect(0, 0, 1, 1);
      popMatrix();
    }
    
    else  {
      pushMatrix();
      noStroke();
      fill(pColor[i]);
      translate(100+ xC[i]+5, 100+yC[i]+5, 0);
      rect(0, 0, 1, 1);
      popMatrix();
    }
  }
}

