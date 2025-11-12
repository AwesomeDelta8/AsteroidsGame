class Star //note that this class does NOT extend Floater
{
  private int myX, myY,myColor;
  public Star(){
    myX = (int)(Math.random()*601);
    myY = (int)(Math.random()*601);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse(myX,myY,3,3);
  }
}
