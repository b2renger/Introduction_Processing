int num = 500;
Mover[] movs = new Mover[num];

float treshold = 50;

void setup() {

  size (1024, 600,P2D);

  for (int i = 0 ; i < num ; i++) {
    PVector initLoc = new PVector(random(5, width-5), random(5, height-5));
    PVector initVel = new PVector(random(-1, 1), random(-1, 1));
    movs[i] = new Mover (initLoc, initVel);
  }

  strokeWeight(0.25);
  stroke(255);
  smooth(8);
}


void draw() {
  noStroke();
  fill(180, 25);
  rect(0, 0, width, height);

  stroke(255);

  smooth(8);

  treshold = map (mouseX, 0, width, 0, 75);

  for (int i = 0 ; i < num ; i++) {
    movs[i].update();
    // movs[i].draw();
    for (int j = i ; j < num ; j++) {  
      if (dist(movs[i].loc.x, movs[i].loc.y, movs[j].loc.x, movs[j].loc.y) < treshold) {     
        line(movs[i].loc.x, movs[i].loc.y, movs[j].loc.x, movs[j].loc.y);
      }
    }
  }

  //fill(255, 0, 0);
  println("fps :"+frameRate);
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


