class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX= theShip.getX();
    myCenterY= theShip.getY();
    myPointDirection= theShip.getPointDirection();
    accelerate(0.6);
  }
  public void show(){
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY,100,100);
  }
}
