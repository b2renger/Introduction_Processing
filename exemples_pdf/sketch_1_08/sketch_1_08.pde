float xpos, ypos ;
int radius; // le rayon de notre cercle
float step; // l’incrément de l’angle qui va parcourir une rotation de 360°

void setup() {
  size(200, 200);
  background(0);
  xpos = width/2;
  ypos = height/2;
  radius = 75;
  step = PI/12;
}

void draw() {
  background(0);
  noFill();
  stroke(255);

  beginShape();// on démarre notre forme
  for ( float angle = 0 ; angle <TWO_PI ; angle += step) {
    // on applique la formule vue précédement
    float ex = xpos + radius *cos(angle);
    float wy = ypos + radius *sin(angle);
    // on ajoute un vertex
    vertex(ex, wy);
  }
  endShape(CLOSE);// on arête notre forme et on la ferme
}

