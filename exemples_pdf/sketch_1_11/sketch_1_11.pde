void setup() {
}

void draw() {
  println("mouse position :", mouseX, mouseY);  
  println("mouse pressed :", mousePressed);

  if (mousePressed && mouseButton==LEFT) {
    println("bouton gauche cliqué");
  }
  else if (mousePressed && mouseButton == RIGHT) {
    println("bouton droit cliqué");
  }
}

