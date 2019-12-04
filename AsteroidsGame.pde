Spaceship bruh;
Star [] hi = new Star[300];
ArrayList <Asteroid> bob = new ArrayList <Asteroid> ();
boolean dd = false;
boolean aa = false;
boolean ww = false;
boolean ss = false;
public void setup() 
{
  size(800, 800);
  bruh = new Spaceship();
  for(int i = 0; i < 300; i++) {
    hi[i] = new Star();
  }
  for(int i = 0; i < 7; i++) {
    bob.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bruh.show();
  bruh.move();
  for(int i = 0; i < 300; i++) {
    hi[i].show();
  }
  for(int i = 0; i < bob.size(); i++) {
    bob.get(i).show();
    bob.get(i).move();
    if(dist((float)bruh.getCenterX(), (float)bruh.getCenterY(), (float)bob.get(i).getCenterX(), (float)bob.get(i).getCenterY()) < 20) {
      bob.remove(i);
      
    }
  }
  if(dd) {
    bruh.turn(5);
  }
  if(aa) {
    bruh.turn(-5);
  }
  if(ww) {
    bruh.accelerate(0.3);
  }
  if(ss) {
    bruh.setMyDirectionX(0);
    bruh.setMyDirectionY(0);
    bruh.setMyPointDirection();
    bruh.setCenter();
  }
}
public void keyPressed() {
  if(key == 'd') {
    dd = true;
  }
  if(key == 'a') {
    aa = true;
  }
  if(key == 'w') {
    ww = true;
  }
  if(key == 's') {
    ss = true;
  }
}
public void keyReleased() {
  if(key == 'd') {
    dd = false;
  }
  if(key == 'a') {
    aa = false;
  }
  if(key == 'w') {
    ww = false;
  }
  if(key == 's') {
    ss = false;
  }
}
