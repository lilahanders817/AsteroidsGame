class Bullet extends Floater
{
  public Bullet(Spaceship bob)
  {
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY();
    myXspeed = myYspeed  = 0;
    myPointDirection = bob.getMyPointDirection();
    accelerate(6);
  }
  
  public void show()
  {
    fill(30);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
        ellipse(0, 0, 5, 5);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
