class Spaceship extends Floater
{
  private int scale = 5;
  public Spaceship() {
    myColor = 172;
    myCenterX = 300;
    myCenterY = 300;
    corners = 20;
    int [] orginXCorners = new int[]{7, 4, 2, 0, -4, -2, -4, -6, -7, -6, -4, -2, -4, 0, 2, 4, 7, 2, 4, 2};
    int [] orginYCorners = new int[]{2, 3, 2, 3, 1, 1, 0, 1, 0, -1, 0, -1, -1, -3, -2, -3, -2, -1, 0, 1};
    xCorners = new int[orginXCorners.length];
    yCorners = new int[orginYCorners.length];
    for (int i = 0; i < orginXCorners.length; i++) {
      xCorners[i] = orginXCorners[i] * scale;
      yCorners[i] = orginYCorners[i] * scale;
    }
    myColor = color(237, 140, 65);
  }
  public void setXspeed(int x) {
    myXspeed = x;
  }
  public void setYspeed(int y) {
    myYspeed = y;
  }
  public void setDirection(int d) {
    myPointDirection = d;
  }
  public void keyPressed() {
    if (key == 'h' || key == 'H') {
      bob.setXspeed(0);
      bob.setYspeed(0);
      bob.setDirection((int)(Math.random()*361));
      myCenterX = (int)(Math.random()*501);
      myCenterY = (int)(Math.random()*501);
    }
  }
  public int getX() {
    return (int)myCenterX;
  }
  public int getY() {
    return (int)myCenterY;
  }
}
