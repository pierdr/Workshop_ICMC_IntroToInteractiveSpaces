
void setup()
{
 size(500,250); 
}

void draw()
{
  background(0);
  stroke(255);
  for(int x=0;x<width;x+=2)
  {
    for(int y=0;y<height;y+=2)
    {
      noStroke();
      //fill(random(0,255),random(0,255),random(0,255));
      float valueX = map(x,0,width,0.0,5.0);
      float valueY = map(y,0,height,0.0,5.0);
      fill(noise(valueX,valueY)*255);
      rect(x,y,2,2);
    }
  }
  //noLoop();
}
