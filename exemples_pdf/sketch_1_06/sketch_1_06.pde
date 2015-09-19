/* voici mon premier programme utilisant des variables et de l’aléatoire et une boucle for*/
int size ;
float xpos,ypos ;
  
void setup(){
  size(200,200) ;
  size = 25 ;
  xpos = random(0,width) ;
  ypos = random(0,height) ;
  background(0 ) ; // utilisons un fond noir.
}
 
void draw(){
  background(0) ; 
  stroke(180) ; 
  strokeWeight(2) ; 
  fill(255) ;
  for (int i = 0 ; i <10 ; i++){
  // à chaque image calculée on définit une nouvelle position
  xpos = random(0,width) ;
  ypos = random(0,height) ;
  ellipse(xpos,ypos,size,size) ; 
  }
}

