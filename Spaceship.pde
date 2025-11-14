class Spaceship extends Floater  
{   
    public Spaceship(){
      corners= 4;
      xCorners= new int[corners];
      yCorners= new int[corners];
      xCorners[0]=-8;
      yCorners[0]= -8;
      xCorners[1]= 16;
      yCorners[1]=0;
      xCorners[2]=-8;
      yCorners[2]=8;
      xCorners[3]=-2;
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
    
}
class Star{
  private int myX, myY;
  public Star(){
    myX=(int)(Math.random()*800);
    myY=(int)(Math.random()*800);
  }
  public void show(){
    fill(255);
    ellipse(myX,myY,3,3);
  }
}
