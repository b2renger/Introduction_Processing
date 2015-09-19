//Receiver
import oscP5.*;
import netP5.*;

OscP5 oscP5;


float receivedValue;

void setup() {
  size(400, 400);
  frameRate(25);

  receivedValue =0;

  oscP5 = new OscP5(this, 1234);
}

void draw() {
  background(receivedValue);
}


void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.checkAddrPattern("/test")==true) {
    float firstValue = theOscMessage.get(0).floatValue();  
    String secondValue = theOscMessage.get(1).stringValue();
    receivedValue = firstValue;
  }
}

