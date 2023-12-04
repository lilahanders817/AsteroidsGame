class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 3;
      xCorners = new int[3];
      yCorners = new int[3];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      myColor = 255;
    
    
}
 public int getX() {
    return (int)myCenterX;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public int getXspeed() {
    return (int)myXspeed;
  }
  public int getYspeed() {
    return (int)myYspeed;
  }
  public int getPointDirection() {
    return (int)myPointDirection;

}

public void hyperspace(){
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }

}
