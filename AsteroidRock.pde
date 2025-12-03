class AsteroidRock extends Floater {
  public double rotSpeed;
  public AsteroidRock() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners = new int[]{13, 7, -11, -5, -11, 6};
    yCorners = new int[]{0, -8, -8, 0, 8, 10};
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myColor = color(123, 123, 123);
    rotSpeed = (int)(Math.random()*3+1);
    myPointDirection = (int)(Math.random()*360);
    myXspeed = (int)(Math.random()*6-3);
    myYspeed = (int)(Math.random()*6-3);
  }

  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public void show() {
    super.show();
  }
  public int getX() {
    return (int)myCenterX;
  }
  public int getY() {
    return (int)myCenterY;
  }
}
