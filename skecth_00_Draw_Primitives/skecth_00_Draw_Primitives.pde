void setup()
{
  size(500,250);
  //fullScreen();
  print("hello ");
}

void draw()
{
  background(255);
  fill(0);
  text("ciao",width/2,height/2);
  
  stroke(255,0,0);
  strokeWeight(10);
  point(width*0.25,height*0.25);
  
  fill(128);
  //rect(x,y,width,height)
  rect(width*0.25,height*0.75,20,40);
  
  fill(0,255,0);
  ellipse(width*0.75,height*0.25,30,50);
  
  fill(0,0,255);
  line(width*0.75,height*0.75,width*0.75,height*0.90);
}
