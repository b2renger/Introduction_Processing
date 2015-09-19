//Sender
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(400, 400);
  frameRate(25);

  oscP5 = new OscP5(this, 12000);
  myRemoteLocation = new NetAddress("127.0.0.1", 1234);
}


void draw() {
  background(0);
}

void mousePressed() {

  OscMessage myMessage = new OscMessage("/test");

  myMessage.add(random(255));
  myMessage.add("hello!");

  oscP5.send(myMessage, myRemoteLocation);
}

