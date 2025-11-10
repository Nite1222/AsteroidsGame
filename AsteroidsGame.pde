Spaceship ship;
void setup(){
  size(800,800);
  ship= new Spaceship();
  ship.myCenterX=100;
  ship.myCenterY=100;
  ship.myColor=252;
}
public void keyPressed(){
  if(key=='w'){
    ship.accelerate(1);
  }
  if(key=='s'){
    ship.accelerate(-1);
  }
  if(key=='a'){
    ship.turn(2);
    ship.myPointDirection+=2;
}
  if(key=='d'){
    ship.turn(-2);
  }
}
void draw(){
  background(0);
  ship.move();
  ship.show();
  
}
