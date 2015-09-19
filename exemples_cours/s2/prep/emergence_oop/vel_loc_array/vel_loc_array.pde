int num = 1000;
Mover[] movs = new Mover[num];

void setup() {

  size (800, 600);


  for (int i = 0 ; i < num ; i++) {
    PVector initLoc = new PVector(random(5, width-5), random(5, height-5));
    PVector initVel = new PVector(random(-1,1), random(-1,1));
    movs[i] = new Mover (initLoc, initVel);
  }
}


void draw() {

  background(180);


  for (int i = 0 ; i < num ; i++) {
    movs[i].update();
    movs[i].draw();
  }

  fill(255, 0, 0);
  text("fps :"+frameRate, 5, 15);
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
    fill(255, 25);
    ellipse(loc.x, loc.y, 50, 50);
  }
}

