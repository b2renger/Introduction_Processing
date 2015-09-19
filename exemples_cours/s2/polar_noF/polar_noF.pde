float xpos,ypos;
int radius;

void setup() {
  size(800, 600);
  background(0);
  xpos = width/2;
  ypos = height/2;
  radius = 300;
}

void draw() {
  background(0);
  noFill();
  stroke(255);

  float step = map(mouseX, 0, width, PI/2, PI/48);

  beginShape();
  for ( float angle = 0 ; angle <TWO_PI ; angle += step) {
    float ex = xpos + radius *cos(angle);
    float wy = ypos + radius *sin(angle);
    vertex(ex, wy);
  }
  endShape(CLOSE);
  
}




