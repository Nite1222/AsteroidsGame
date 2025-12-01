Spaceship ship = new Spaceship();
boolean pressingW = false;
boolean pressingS = false;
boolean pressingA = false;
boolean pressingD = false;
boolean pressingH= false;
Star[] nightSky= new Star[200];
ArrayList <Asteroid> asteroidList= new ArrayList <Asteroid>();
Asteroid asteroid= new Asteroid();

void setup(){
  size(600,600);
  ship.myColor=252;
  asteroid.myColor=252;
  for(int i=0;i<asteroidList.size();i++){
  fill(255);
  asteroidList.add(new Asteroid());
}
  for(int i=0;i<nightSky.length;i++){
  nightSky[i]= new Star();
}
  
  for(int i= 0; i< 20; i++){
  asteroidList.add(new Asteroid());
}
}
//hi

void draw() {
  background(0);
  ship.show();
  ship.move();
  asteroid.show();
  asteroid.move();
  for(int i=0; i<asteroidList.size();i++){
    asteroidList.get(i).move();
    asteroidList.get(i).show();
    float d= dist((float)asteroidList.get(i).getX(), (float)asteroidList.get(i).getY(), (float)ship.getX(), (float)ship.getY());
    if(d< 10){
      asteroidList.remove(i);
      i--;
    }
  }
  if (pressingW == true){
  ship.accelerate(0.25);
  }
  if (pressingS == true){
  ship.accelerate(-0.25);
  }
  if (pressingA == true){
  ship.turn(-5);
  }
  if (pressingD == true){
  ship.turn(5);
  }
  for(int i=0;i<nightSky.length;i++){
    nightSky[i].show();
  }

  

}

public void keyPressed(){
if (key == 'w'){
pressingW = true;
}
if (key == 's'){
pressingS = true;
}
if (key == 'a'){
pressingA = true;
}
if (key == 'd'){
pressingD = true;
}
if(key=='h'){
  ship.setXspeed(0);
  ship.setYspeed(0);
  ship.setPointDirection(Math.random()*200);
  ship.setPosition();
}
}

public void keyReleased(){
if (key == 'w'){
pressingW = false;
}
if (key == 's'){
pressingS = false;
}
if (key == 'a'){
pressingA = false;
}
if (key == 'd'){
pressingD = false;
}
else if(key==' '){
  fill(255);
  asteroidList.add(new Asteroid());
}


}
