int value = 0;

void setup()
{
  size(500,260);  
}

void draw()
{
  background(value);
  fill(255);
  ellipse(mouseX,mouseY,10,10);
}

void keyPressed()
{
 
}
void mousePressed()
{
  value = value -64;
  value = value % 255;
}
