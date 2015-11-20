class Holder {
  int xpos, ypos, hsize;
  color holdingColor;

  Holder(int xpos0, int ypos0, int hsize0, color holdingColor0) {
    xpos = xpos0;
    ypos = ypos0;
    hsize = hsize0;
    holdingColor = holdingColor0;
  }

  void drawMe() {
    pushStyle();
    pushMatrix();

    stroke(0);
    fill(holdingColor);
    rect(xpos, ypos, hsize, hsize);

    popMatrix();
    popStyle();
  }

  void overMe(int x, int y, color newC) {

    if (x>xpos-hsize/2 && x<xpos+hsize/2 && y>ypos-hsize/2 && y <ypos+hsize/2) {
      holdingColor = newC;
    }
  }
  
}

