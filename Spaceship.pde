class Spaceship extends Floater  
{   
    public Spaceship(){
      corners= 4;
      xCorners= new int[corners];
      yCorners= new int[corners];
      xCorners[0]=-8+200;
      yCorners[0]= -8+200;
      xCorners[1]= 16+200;
      yCorners[1]=0+200;
      xCorners[2]=-8+200;
      yCorners[2]=8+200;
      xCorners[3]=-2+200;
      yCorners[3]=0+200;
      
    }
    
}
