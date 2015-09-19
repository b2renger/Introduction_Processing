float hue=180;

void setup() {
  size(200, 200);
  colorMode(HSB,360,100,100);
}

void draw() {
  background(hue,100,100);
}

void mouseWheel(MouseEvent event) {
  float amt = event.getCount();
  hue +=amt;
}

