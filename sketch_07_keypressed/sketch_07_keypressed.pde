int value = 0;

void setup()
{
  size(500,260);  
}

void draw()
{
  background(value);
}

void keyPressed()
{
  if(key == 'a')
  {
    value +=20;
  }
  else{
    value -=20;
  }
  value = value % 255;
}
