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
  for (int i = 150 ; i <= width-150 ; i+=20) {
    for (int j = 150 ; j <= height-150 ; j+=20) {

      draw_rect(i, j, rot+ i+j);
    }
  }
  rot+=0.05;
}


void draw_rect(float xpos, float ypos, float angle) {
  pushMatrix();
  fill(255,2);
  stroke(255,2);
  translate(xpos, ypos);
  rotate(angle);
  rect(0, 0, 25, 25); 
  popMatrix();
}

