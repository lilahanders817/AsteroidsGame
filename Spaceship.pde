class Spaceship extends Floater{
  private boolean inHyperspace;
  public Spaceship() {
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    inHyperspace = false;
  }
  
  public void hyperspace() {
    inHyperspace = true;
    myCenterX = random(width);
    myCenterY = random(height);
    myXspeed = 0;
    myYspeed = 0;
  }

  public void move() {
    if (!inHyperspace) {
      super.move(); // Call the move() function from the Floater class
    }
  }

  public void show() {
    if (inHyperspace) {
      fill(255, 0, 0); // spaceship is red during hyperspace
    } else {
      fill(255);
    }
    
    stroke(255);

    translate((float) myCenterX, (float) myCenterY);
    float dRadians = (float) (myPointDirection * (Math.PI / 180));
    rotate(dRadians);

    beginShape();
    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    rotate(-1 * dRadians);
    translate(-1 * (float) myCenterX, -1 * (float) myCenterY);

    // Reset color
    fill(255);
  }
}
