class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;
    myCenterX = myCenterY = 400;
    myDirectionX = myDirectionY = myPointDirection = 0;
  }
  public void setMyDirectionX(int x) {
    myDirectionX = x;
  }
  public void setMyDirectionY(int y) {
    myDirectionY = y;
  }
  public void setMyPointDirection() {
    myPointDirection = (int)(Math.random() * 360);
  }
  public void setCenter() {
    myCenterX = (int)(Math.random() * 800);
    myCenterY = (int)(Math.random() * 800);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
