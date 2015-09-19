// déclaration de variables globales (qui vont être accessibles dans l'ensemble du programme)
int size;
float xpos, ypos;

// fonction d'initialisation de notre programme
void setup() {
  size(640, 480);
  size = 50;
  xpos = 65;
  ypos = 75;
}

// fonction tournant en boucle
void draw() {
  ellipse(xpos, ypos, size, size);
}

