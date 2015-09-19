// déclaration de variables globales (qui vont être accessibles dans l'ensemble du programme)
int size;
float xpos, ypos;

// fonction d'initialisation de notre programme
void setup() {
  size(640, 480);
  size = 50;
  xpos = 65;
  ypos = 75;
  background(255, 0, 0);
}

// fonction tournant en boucle
void draw() {
  background(255, 0, 0);

  xpos = random(0, width);
  ypos = random(0, height);
  ellipse(xpos, ypos, size, size);
}

