/* 
This example is barebones simple video mapping sketch :
     - pressing 'd' will display the corners of images
     - if they are display you can drag them with the mouse to map them on physical objects
*/



MapPg pg1; // this object is a drawing mapped
PGraphics pg; // this object is the drawinf that we want to map

// those are used to handle interactions
boolean displayCorner = false;
boolean mouseOver = true;

void setup() {
  size(1000, 600, P2D);
  rectMode(CENTER);
  imageMode(CENTER);

  pg = createGraphics(300,300,P2D); // init our drawing surface
  // init our mapping object referencing its position, and the surface we want to attach to it
  pg1 = new MapPg(pg, new PVector(50, 50), new PVector(400, 50), new PVector(400, 500), new PVector(50, 500));
  
  background(0);
}


void draw() {
  background(0);
  
  // the drawing !
  pg.beginDraw();
  pg.ellipse(random(pg.width),random(pg.height),5,5);
  pg.endDraw();
  
 
  // display the drawing mapped 
  pg1.display_texture(); 
  // interaction with the mapping object
  if (displayCorner == true) {
    pg1.mouse_over(mouseX, mouseY);
    pg1.display_corners();
  }
  
  
}


void keyReleased() {
  if (key == 'd') {
    displayCorner = !displayCorner;
    mouseOver = !mouseOver;
  }
}

class MapPg {
  
  PGraphics pg;
  PVector luCorner, ruCorner, ldCorner, rdCorner;

  MapPg(PGraphics pg, PVector luCorner, PVector ruCorner, PVector ldCorner, PVector rdCorner) {
    this.pg = pg;
    this.luCorner = luCorner;
    this.ruCorner = ruCorner;
    this.ldCorner = ldCorner;
    this.rdCorner = rdCorner;
  }

  void display_texture() {
    pushStyle();
    noStroke();
    textureWrap(CLAMP);
    beginShape();
    texture(pg);
    vertex(ruCorner.x, ruCorner.y, 0, 0);
    vertex(luCorner.x, luCorner.y, pg.width, 0);
    vertex(rdCorner.x, rdCorner.y, pg.width, pg.height);
    vertex(ldCorner.x, ldCorner.y, 0, pg.height);
    endShape(CLOSE);
    popStyle();
  }



  void display_corners() {      
    pushStyle();
    noStroke();
    fill(255, 150);
    ellipse(luCorner.x, luCorner.y, 25, 25);
    ellipse(ruCorner.x, ruCorner.y, 25, 25);
    ellipse(ldCorner.x, ldCorner.y, 25, 25);
    ellipse(rdCorner.x, rdCorner.y, 25, 25);
    popStyle();
  }

  void mouse_over(float x, float y) {
    if (dist(x, y, luCorner.x, luCorner.y)<25 && mousePressed) {
      luCorner.set(x, y);
    }
    if (dist(x, y, ruCorner.x, ruCorner.y)<25 && mousePressed) {
      ruCorner.set(x, y);
    }
    if (dist(x, y, ldCorner.x, ldCorner.y)<25 && mousePressed) {
      ldCorner.set(x, y);
    }
    if (dist(x, y, rdCorner.x, rdCorner.y)<25 && mousePressed) {
      rdCorner.set(x, y);
    }
  }
  
 
  
}