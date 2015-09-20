String buff = "        ";
PFont font;

void setup() {
  size(400, 300);
  background(255);
  colorMode(HSB);
  smooth();
  font =loadFont("Mosaicleaf-48.vlw");
}

void draw() { 
  noStroke();
  fill (255, 35);
  rect (0, 0, width, height);
  char k = buff.charAt(floor(random(buff.length()-1))); 
  fill(random(255), 255, 255);
  textSize(random(48, 100));
  textFont(font, 48);
  text(k, random(0, width), random(0, height));
}

void keyPressed() {

  char k = (char)key;
  int nkey = (int) key;


  if (nkey == 48) {
    font = loadFont("Mosaicleaf-48.vlw");
  }
  else if (nkey == 49) {
    font =loadFont("Bauhaus93-48.vlw");
  }
  else if (nkey == 50) {
    font =loadFont("HarlowSolid-48.vlw");
  }
  else if (nkey==51) {
    font =loadFont("Magneto-Bold-48.vlw");
  }
  else if (nkey == 51 || nkey ==52 || nkey ==53 ||nkey ==54
    || nkey ==55 ||nkey == 56 || nkey == 57) {
  }
  else if (key == BACKSPACE) {
    buff = "  ";
  }
  else {
    buff=k+buff;
  }
}



