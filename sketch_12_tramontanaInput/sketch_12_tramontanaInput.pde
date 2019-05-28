import websockets.*;
import tramontana.library.*;

Tramontana iphone;

int rx = 0;
int ry = 0;
PVector p;

int progress=0;
void setup()
{
  size(510,250);
  iphone = new Tramontana(this, "10.0.1.3");
  iphone.subscribeTouch();
  
  iphone.subscribeAttitude(15);
  p = new PVector(0,0,0);
  background(0);
}
void draw()
{
 // ellipse(rx,ry,10,10);
 
 stroke(255);
 point(progress, p.x*height*0.5);
 stroke(255,0,0);
 point(progress, p.y*height*0.5);
 stroke(0,255,0);
 point(progress, p.z*height*0.5);
 progress++;
}
void onTouchEvent(String ip, int x, int y)
{
  println(x+" "+y);
  rx = x;
  ry = y;
}
void onAttitudeEvent(String ip, float roll, float pitch, float yaw){
  p.x = roll;
  p.y = pitch;
  p.z = yaw;
}
