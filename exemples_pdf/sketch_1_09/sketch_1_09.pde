float angle ;
void setup() {
  size(200,200);
  angle = 0 ;
  rectMode(CENTER) ;// rappelez vous les modes !
}
void draw() {
  background(0) ;
  stroke(255) ;
  pushMatrix();// on s’assure d’avoir un repère bien à nous
  translate(width/2, height/2) ;// on déplace notre repère
  rotate(angle);// on le fait tourner
  rect(0, 0, 25, 25);// on dessine un rectangle
  popMatrix();
  angle += PI/24;// on incrémente l’angle
}

