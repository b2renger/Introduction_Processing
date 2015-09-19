// déclaration de variables globales (qui vont être accessibles dans l'ensemble du programme)
int size;
float xpos, ypos;

// fonction d'initialisation de notre programme
void setup() {
  size(640, 480);
  size = 50;
  xpos = 65;
  ypos = 75;
  background(0);
  colorMode(HSB, 360, 100, 100);
  //frameRate(1);
}

// fonction tournant en boucle
void draw() {
  //background(255, 0, 0);
  noStroke();

  for (int i = 0; i < 10 ;i++) {
    xpos = random(0, width);
    ypos = random(0, height);
    float teinte = random(360);
    fill(teinte, 100, 100, 10);
    ellipse(xpos, ypos, size, size);
    line()
    
    
    
  }
}

void keyPressed() {
  println("touche appuyée : "+key);

  if (key == 's'|| key=='S' ) {
    saveFrame("fil_rouge_6-"+year()+"-"+month()+"-"+day()+"-"+hour()+"h"+minute()+"m"+second()+"s.png");
  }
}

