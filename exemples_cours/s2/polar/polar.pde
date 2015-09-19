

void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  
  float precision = map(mouseX,0,width,PI/2,PI/48);
  draw_circle(width/2, height/2,precision,300);
}

void draw_circle(float xpos, float ypos, float step, float radius) {
  pushMatrix();
  beginShape();
  translate(xpos, ypos);
  
  for ( float angle = 0 ; angle <TWO_PI ; angle += step) {
    float ex = radius *cos(angle);
    float wy = radius *sin(angle);
    vertex(ex, wy);
  }
  endShape(CLOSE);
  popMatrix();
}




