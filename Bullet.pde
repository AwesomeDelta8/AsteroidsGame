class Bullet extends Floater {
  public Bullet(Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    myColor = color(123, 123, 123);
    accelerate(0.1);
  }

  public void show() {
    ellipse((float)myCenterX, (float)(myCenterY), 10, 10);
  }
  public void move() {
    myCenterX = myCenterX + myXspeed;
    myCenterY = myCenterY + myYspeed;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public int getY() {
    return (int)myCenterY;
  }
}
