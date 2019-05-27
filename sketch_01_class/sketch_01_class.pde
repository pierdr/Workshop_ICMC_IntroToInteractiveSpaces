int x = 0;

smartRect sm;
void setup()
{
  size(500,260);
  sm = new smartRect(10,10);
}

void draw()
{
  background(255);
  sm.draw();
  sm.addToPosX(2);
}
