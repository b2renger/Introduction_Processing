/* voici mon premier programme utilisant des variables et de l’aléatoire et une boucle for et de couleurs !*/
int size ;
float xpos, ypos ;

void setup() {
  size(200, 200) ;
  size = 25 ;
  xpos = random(0, width) ;
  ypos = random(0, height) ;
  colorMode(HSB, 360, 100, 100) ;
  background(0 ) ;
}

void draw() {
  // blur « maison »
  fill(0, 20) ;
  rect(0, 0, width, height) ;
  noStroke() ; 
  for (int i = 0 ; i <10 ; i++) {
    xpos = random(0, width) ;
    ypos = random(0, height) ;
    fill(random(360), 100, 100) ;
    ellipse(xpos, ypos, size, size) ;
  }
}

