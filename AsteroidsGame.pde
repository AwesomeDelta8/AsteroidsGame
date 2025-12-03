//your variable declarations here
ArrayList <AsteroidRock> arrayRock= new ArrayList<AsteroidRock>();
Star[] stars = new Star[200];
Spaceship bob = new Spaceship();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
boolean rPress = false;
boolean hPress = false;

public void setup()
{
  size(600, 600);
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new Star();
  }
  for (int i = 0; i<150; i++) {
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
    float d = dist(bob.getX(), bob.getY(), arrayRock.get(i).getX(), arrayRock.get(i).getY());
    if (d<50) {
      arrayRock.remove(i);
    }
    for (int a = shots.size() -1; a>=0; a--) {
      for (int b = arrayRock.size()-1; b>=0; b--) {
        float d2 = dist(shots.get(a).getX(), shots.get(a).getY(), arrayRock.get(b).getX(), arrayRock.get(b).getY());
        if (d2<10) {
          arrayRock.remove(b);
          shots.remove(a);
          break;
        }
      }
    }
    for (int y = 0; y <shots.size(); y++) {
      shots.get(y).move();
      shots.get(y).show();
    }
    for (int z = 0; z <shots.size(); z++) {
      if (shots.get(z).getX() > 600 || shots.get(z).getY() > 600) {
        shots.remove(z);
      }
    }
  }
  bob.move();
  bob.show();
}

void keyPressed() {
  if (key == 'r' && rPress == false) {
    shots.add(new Bullet(bob));
    rPress = true;
  }
  if (key == 'h' && hPress == false) {
    bob.keyPressed();
    hPress = true;
  }
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
}
void keyReleased() {
  if (key == 'r') {
    rPress = false;
  }
  if (key == 'h') {
    hPress = false;
  }
}
