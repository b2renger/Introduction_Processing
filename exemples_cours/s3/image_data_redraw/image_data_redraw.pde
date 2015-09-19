PImage img;

int [] xCoord;
int [] yCoord;
color [] pColor;


void setup() {

  size(500, 500, P3D);
  img = loadImage("image_redimensionnee.jpg");

  img.loadPixels();

  xCoord = new int [img.pixels.length];
  yCoord = new int [img.pixels.length];
  pColor = new color [img.pixels.length];

  for (int i = 0 ; i<img.width; i++) {
    for (int j = 0 ; j< img.height ; j++) {
      int loc = i +j*img.width;
      xCoord[loc] = i;
      yCoord[loc] = j;
      pColor[loc] = img.pixels[loc];
    }
  }
}

void draw() {
  background(0);
  float push_z = map(mouseX, 0,width,0,80);

  for (int i = 0 ; i < xCoord.length ; i++) {
    float hue = hue(pColor[i]);

    if (hue < 17 && hue >12) {

      pushMatrix();
      noStroke();
      fill(pColor[i]);
      translate(150+xCoord[i], 150+yCoord[i], push_z);
      rect(0, 0, 1, 1);
      popMatrix();
    }
    else{
      pushMatrix();
      noStroke();
      fill(pColor[i]);
      translate(150+xCoord[i], 150+yCoord[i], 0);
      rect(0, 0, 1, 1);
      popMatrix();
    }
    
    
  }
  //image(img, 0, 0);
}

