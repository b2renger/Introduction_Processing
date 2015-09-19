01.  /* voici mon premier programme utilisant des variables et de l’aléatoire et une boucle for*/
02.  int size ;
03.  float xpos,ypos ;
04.  
05.  void setup(){
06.  size(200,200) ;
07.  size = 25 ;
08.  xpos = random(0,width) ;
09.  ypos = random(0,height) ;
10.  background(0 ) ; // utilisons un fond noir.
11.  }
12.  
13.  void draw(){
14.  background(0) ; 
15.  stroke(180) ; 
16.  strokeWeight(2) ; 
17.  fill(255) ;
18.  for (int i = 0 ; i <10 ; i++){
19.  // à chaque image calculée on définit une nouvelle position
20.  xpos = random(0,width) ;
21.  ypos = random(0,height) ;
22.  ellipse(xpos,ypos,size,size) ; 
23.  }
24.  }

