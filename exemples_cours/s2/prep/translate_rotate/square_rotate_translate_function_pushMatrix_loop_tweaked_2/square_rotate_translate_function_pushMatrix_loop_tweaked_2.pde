float rot =0 ;

void setup() {
  size(800, 600, P2D);
  background(0);

  //rectMode(CENTER);
}

void draw() {
  //background(0);
  fill(0, 5);
  rect(0, 0, 800, 600);
  for (int i = 0 ; i <= width ; i+=25) {
    for (int j = 0 ; j <= height ; j+=25) {

      draw_rect(i, j, rot+ i+j);
    }
  }
  rot+=0.05;
}


void draw_rect(float xpos, float ypos, float angle) {
  pushMatrix();
  fill(100,100,255,2);
  strokeWeight(2);
  stroke(255,100,100,5);
  translate(xpos, ypos);
  rotate(angle);
  rect(0, 0, 30, 30); 
  popMatrix();
}

