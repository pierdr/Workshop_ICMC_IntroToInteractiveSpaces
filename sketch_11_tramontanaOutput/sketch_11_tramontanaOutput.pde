import websockets.*;
import tramontana.library.*;

Tramontana iphone;


void setup()
{
  iphone = new Tramontana(this,"10.0.1.3");
 
}

void draw()
{
  
}
void keyPressed()
{
  if(key == 'a')
  {
     iphone.setColor(255,255,0,255);
  }
  else if(key == 's')
  {
     iphone.setColor(255,0,0,255);
  }
  else if(key == 'i')
  {
    iphone.showImage("board.jpg");
  }
  else if(key == 'v')
  {
    iphone.makeVibrate();
  }
}
