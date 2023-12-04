class Star {
  private int myX, myY;
  Star(){
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
  }
  public void show(){
    stroke(255);
    fill(255);
    ellipse(myX,myY,1,1);
  }
}
