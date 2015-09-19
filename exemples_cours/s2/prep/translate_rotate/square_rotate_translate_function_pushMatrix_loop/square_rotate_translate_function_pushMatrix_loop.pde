void setup() {
  size(800, 600, P2D);
  background(0);

  rectMode(CENTER);
}

void draw() {
  background(0);

  for (int i = 0 ; i <= width ; i+=50){
    for (int j = 0 ; j <= height ; j+=50){
    
  draw_rect(i, j);
  
  }
  }
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

