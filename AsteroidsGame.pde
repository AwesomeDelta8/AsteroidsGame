//your variable declarations here
ArrayList <AsteroidRock> arrayRock= new ArrayList<AsteroidRock>();
Star[] stars = new Star[200];
Spaceship bob = new Spaceship();
public void setup()
{
  size(600, 600);
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i<300; i++) {
    arrayRock.add(new AsteroidRock());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
  }
  for (int i = 0; i<arrayRock.size(); i++) {
    arrayRock.get(i).move();
    arrayRock.get(i).show();
    float d = dist(bob.getX(), bob.getY(), arrayRock.get(i).getX(),arrayRock.get(i).getY());
    System.out.println(d);
    if (d<50){
      arrayRock.remove(i);
    }
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
