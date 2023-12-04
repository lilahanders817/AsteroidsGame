class TieFighter extends Floater
{
   private double rotSpeed; //randomly + or -
   public TieFighter(){ 
     corners = 20;
     xCorners = new int[corners];
     yCorners = new int[corners];
     //int n = (int)(Math.random()*2) + 3;
     int n = 15;
     rotSpeed =(Math.random()*4) - 2;
        xCorners[0] = -n;
        yCorners[0] = -n;
        xCorners[1] = n;
        yCorners[1] = -n;
        xCorners[2] = 0;
        yCorners[2] = 0;
        xCorners[3] = -n;
        yCorners[3] = n;
        xCorners[4] = n;
        yCorners[4] = n;
        xCorners[5] = 0;
        yCorners[5] = 0;
     
   
     myColor = 180;
     myXspeed = (int)(Math.random()*5)-2;
     myYspeed = (int)(Math.random()*5)-2;
     myCenterX = (int)(Math.random()*width);
     myCenterY = (int)(Math.random()*height); 
     myPointDirection = (int)(Math.random()*360);
   }
   public void move(){
     super.move();
     super.turn(rotSpeed);
   }
}
