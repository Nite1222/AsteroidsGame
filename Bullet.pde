class Bullet extends Floater{
    public Bullet(Spaceship theShip){
      myCenterX= theShip.getX();
      myCenterY= theShip.getY();
      myPointDirection= theShip.getPointDirection();
      accelerate(6);
      corners= 4;
      xCorners= new int[corners];
      yCorners= new int[corners];
      xCorners[0]= 1;
      yCorners[0]= 1;
      xCorners[1]= 1;
      yCorners[1]=-1;
      xCorners[2]=30;
      yCorners[2]=-1;
      xCorners[3]=30;
      yCorners[3]=1;
      myColor = #F00707;
  }
  public double getX(){
  return myCenterX; 
}  
  public double getY(){
  return myCenterY; 
}
  public void setPointDirection(double pointDirection){
      myPointDirection = pointDirection;
    }

}
