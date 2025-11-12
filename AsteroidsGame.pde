//your variable declarations here
Spaceship bob = new Spaceship();
Star[] stars = new Star[200];
public void setup() 
{
  size(600, 600);
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
  }
  if (keyPressed) {
    if (key == 'a'|| key == 'A') {
      bob.turn(-4);
    }
    if (key == 'd'|| key == 'D') {
      bob.turn(4);
    }
    if (key == 'w'|| key == 'W') {
      bob.accelerate(0.2);
    }
    if (key == 's'|| key == 'S') {
      bob.accelerate(-0.2);
    }
    bob.keyPressed();
  }
  bob.move();
  bob.show();
}
