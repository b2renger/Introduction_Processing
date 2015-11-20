class Button {
  // position et taille
  int xpos, ypos, hsize, vsize;
  color bColor;
  String name;
  

  Button (int xpos0, int ypos0, int hsize0, int vsize0, color bColor0, String name0) {
    xpos = xpos0;
    ypos = ypos0;
    hsize = hsize0;
    vsize = vsize0;
    bColor = bColor0;
    name=name0;
    
  }

  void drawMe() {
    pushStyle();
    pushMatrix();

    stroke(0);
    fill(bColor);
    rect(xpos, ypos, hsize, vsize);
    fill(255);
    text(name, xpos-hsize/4, ypos+vsize/4);

    popMatrix();
    popStyle();
  }

  void overMeRGB(int x, int y) {
    if (x>xpos-hsize/2 && x<xpos+hsize/2 && y>ypos-vsize/2 && y <ypos+vsize/2) {
      copyRGB();
      println(r+","+g+","+blu);
     
    }
  }

  void overMeHSB(int x, int y) {
    if (x>xpos-hsize/2 && x<xpos+hsize/2 && y>ypos-vsize/2 && y <ypos+vsize/2) {
      copyHSB(); 
     
      println(h+","+s+","+b);
    }
  }

  void copyRGB() {
    String code = new String();
    code =  "color("+r+","+g+","+blu+");";
    cp.copyString(code);
  }

  void copyHSB() {
    String code = new String();
    code =  "color("+h+","+s+","+b+");";
    cp.copyString(code);
  }
}

