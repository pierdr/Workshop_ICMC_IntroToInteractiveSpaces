int x = 0;

smartRect sm;
ArrayList<smartRect> array;
void setup()
{
  size(500,260);
  array = new ArrayList<smartRect>();
  for(int i=0;i<10;i++)
  {
    array.add(new smartRect(10*i,5*i));
  }
}

void draw()
{
  background(255);
  for(int i=0;i<10;i++)
  {
    array.get(i).draw();
  }
  for(int i=1;i<10;i+=2)
  {
    array.get(i).addToPosX(random(-2,2));
  }
  for(int i=0;i<10;i+=2)
  {
    array.get(i).addToPosX(noise((millis()%1000)/10000)*10);
  }
}
