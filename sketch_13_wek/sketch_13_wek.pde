import netP5.*;
import oscP5.*;
OscP5 osc;
NetAddress wekLocation;
color colorReceived;
void setup()
{
  size(500,260);
  osc = new OscP5(this,12000);
  wekLocation = new NetAddress("127.0.0.1",8002);
  colorReceived = color(0,0,0);
}
void draw()
{
  background(colorReceived);
}
void mouseMoved()
{
  //SEND MOUSE POSITION TO WEK
  OscMessage msg = new OscMessage("/inputs");
  msg.add(float(mouseX));
  msg.add(float(mouseY));
  osc.send(msg,wekLocation);
}  
void oscEvent(OscMessage msg)
{
  if(msg.checkAddrPattern("/wek/outputs"))
  {
    float newRed =  msg.get(0).floatValue()*255;
    float newGreen = msg.get(1).floatValue()*255;
    float newBlue = msg.get(2).floatValue()*255;
    colorReceived = color(newRed,newGreen,newBlue);
  }
}

void keyPressed()
{
  if(key == 'a')
  {
    //start recording
    OscMessage msg = new OscMessage("/wekinator/control/startRecording");
    osc.send(msg,wekLocation);
  }
  else if(key == 's')
  {
    //stor recording
    OscMessage msg = new OscMessage("/wekinator/control/stopRecording");
    osc.send(msg,wekLocation);
  }
}
