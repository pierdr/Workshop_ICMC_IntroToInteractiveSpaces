import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress remoteLocation;

void setup(){
  osc = new OscP5(this,9000);
  remoteLocation = new NetAddress("localhost",9001);
}
void draw()
{
  background(0);
}
void keyPressed()
{
  OscMessage msg = new OscMessage("/changeBg");
  
  if(key == 'a')
  {
    msg.add(230);
    
     
  }
  else if(key == 's')
  {
    msg.add(20); 
  }
  msg.add(23.50);
  msg.add("ciao");
  osc.send(msg,remoteLocation);
}
