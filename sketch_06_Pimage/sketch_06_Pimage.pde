PImage image;

void setup()
{
  image = loadImage("https://www.requot.com/images/citta/quotazioni/Quotazioni-Immobiliari-Torino-Small.jpg");
}

void draw(){
  background(255);
  image(image,0,0);
}
