Spaceship bruh;
Star [] hi = new Star[300];
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
}
public void draw() 
{
  background(0);
  bruh.show();
  bruh.move();
  for(int i = 0; i < 300; i++) {
    hi[i].show();
  }
  if(dd) {
    bruh.turn(5);
  }
  if(aa) {
    bruh.turn(-5);
  }
  if(ww) {
    bruh.accelerate(1);
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
