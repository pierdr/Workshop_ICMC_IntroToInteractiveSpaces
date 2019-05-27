class smartRect{
  private int x;
  private int y;
  private int size;
  
  public smartRect(int x, int y){
    this.x = x;
    this.y = y;
    this.size = 10;
  }
  
  public void draw()
  {
    rect(this.x,this.y,this.size,this.size);
  }
 
}
