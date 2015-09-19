void setup() {
  size(800, 600, P2D);
  background(0);

  rectMode(CENTER);
}

void draw() {
  background(0);

  draw_rect(width/2, height/2);
  draw_rect(50, 50);
}


void draw_rect(float xpos, float ypos) {
  pushMatrix();
  fill(255);
  stroke(255);
  translate(xpos, ypos);
  rotate(radians(frameCount));
  rect(0, 0, 50, 50); 
  popMatrix();
}

