class Spaceship extends Floater  
{   
    public Spaceship(){
      corners= 4;
      xCorners= new int[corners];
      yCorners= new int[corners];
      xCorners[0]=-12;
      yCorners[0]= -12;
      xCorners[1]= 24;
      yCorners[1]=0;
      xCorners[2]=-12;
      yCorners[2]=12;
      xCorners[3]=-3;
      yCorners[3]=0;
      myCenterX=100;
      myCenterY=300;
      myXspeed=0;
      myYspeed=0;
      myPointDirection=0;
      
    }
    public void setXspeed(double x){
      myXspeed=x;
    }
    public void setYspeed(double y){
      myYspeed=y;
    }
    public void setPointDirection(double pointDirection){
      myPointDirection= pointDirection;
    }
    public void setPosition(){
       myCenterX=Math.random()*800;
      myCenterY=Math.random()*800;
    }
      public double getX(){
  return myCenterX; 
}  
  public double getY(){
  return myCenterY; 
}
    
}
