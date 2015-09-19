void setup() {
  size(200, 200);
}

void draw() {
}

void mousePressed() {
  noStroke();
  fill(random(255), random(255), random(255), random(100, 180)); 
  ellipse(mouseX, mouseY, 15, 15);
}

