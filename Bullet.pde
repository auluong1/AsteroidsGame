class Bullet extends Floater {
  Bullet(Spaceship bruh) {
    myCenterX = bruh.getCenterX();
    myCenterY = bruh.getCenterY();
    myPointDirection = bruh.getPointDirection();
    myDirectionX = 5 * Math.cos(myPointDirection * (Math.PI / 180)) + bruh.getDirectionX() ;
    myDirectionY = 5 * Math.sin(myPointDirection * (Math.PI / 180)) + bruh.getDirectionY() ;
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move ()   
  {             
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
