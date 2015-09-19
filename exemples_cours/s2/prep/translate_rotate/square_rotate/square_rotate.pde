void setup(){
  size(800,600,P2D);
  background(0);
  
  rectMode(CENTER);
}

void draw(){
   background(0);
   fill(255);
   stroke(255);
   
   rotate(radians(frameCount/100));
   rect(width/2,height/2,50,50);
  
  
}
