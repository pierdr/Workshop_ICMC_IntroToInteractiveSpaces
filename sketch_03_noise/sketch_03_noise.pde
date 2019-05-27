
void setup()
{
 size(500,250); 
}

void draw()
{
  background(0);
  stroke(255);
  for(int i=0;i<width;i++)
  {
    float value = map(i,0,width,0.0,1.0);
    line(i,noise(value*10)*height,i,0);
  }
  noLoop();
}
