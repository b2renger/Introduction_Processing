int num = 1000;
Mover[] movs = new Mover[num];

void setup() {
  background(0);
  size (800, 600, P2D);
  for (int i = 0 ; i < num ; i++) {
    PVector initLoc = new PVector(random(5, width-5), random(5, height-5));
    PVector initVel = new PVector(random(-1, 1), random(-1, 1));
    movs[i] = new Mover (initLoc, initVel);
  }
}


void draw() {
  noStroke();
  fill(0, 50);
  rect(0, 0, width, height);

  stroke(255);
  float treshold = map(mouseX, 0, width, 0, 50);

  for (int i = 0 ; i < num ; i++) {
    movs[i].update();

    for (int j = 0 ; j < num ; j++) {
      if (i!=j) {
        float dist = dist(movs[i].loc.x, movs[i].loc.y, movs[j].loc.x, movs[j].loc.y);
        if (dist < treshold) {
          line(movs[i].loc.x, movs[i].loc.y, movs[j].loc.x, movs[j].loc.y);
        }
      }
    }
  }
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
}

