import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress remoteLocation;

int bg = 0;
void setup()
{
  osc = new OscP5(this, 9001);
}
void draw()
{
  background(bg);
}
void oscEvent(OscMessage message)
{
  if(message.checkAddrPattern("/changeBg"))
  {
    bg = message.get(0).intValue();
    println(message.get(2).stringValue());
    
  return;  
  }
  println("message received");
}
