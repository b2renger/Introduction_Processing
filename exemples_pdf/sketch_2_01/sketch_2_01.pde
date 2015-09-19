
Mover mov;

void setup() {

  size (800, 600);

  PVector initLoc = new PVector(width/2, height/2);
  PVector initAcc = new PVector(1.05, -2.25);
  mov = new Mover (initLoc, initAcc);
}


void draw() {

  background(180);

  mov.update();
  mov.draw();
}



class Mover {

  PVector loc, vel;

  Mover(PVector loc, PVector vel) {
    this.loc = loc;
    this.vel = vel;
  } 

  void update() {  
    loc.add(vel);  
    if (loc.x < 0 || loc.x> width) {
      vel.x = -vel.x;
    }
    if (loc.y<0 || loc.y > height) {
      vel.y = -vel.y;
    }
  }

  void draw() {
    pushStyle();
    noStroke();
    fill(255, 100);
    ellipse(loc.x, loc.y, 25, 25);
  }
  
}

