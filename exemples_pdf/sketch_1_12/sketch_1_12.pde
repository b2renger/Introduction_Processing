void setup() {
  size(200, 200);
  background(0);
  strokeWeight(4);
  frameRate(15);
  colorMode(HSB, 360, 100, 100);
}
void draw() {
  noStroke();
  fill(0, 25);
  rect(0, 0, width, height);
  stroke(random(360), 100, 100);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

