class ufoBullet extends GameObjects{

int timer;

//construct
ufoBullet(){
  timer = 90;
lives = 1;
location = new PVector(myUfo.location.x, myUfo.location.y);
velocity = new PVector (myUfo.direction.x, myShip.direction.y);
velocity.setMag(5);
velocity.add(myUfo.velocity);
size = 5;
}

void show(){
stroke(255);
noFill();
ellipse(location.x, location.y, size, size);

}

void act(){
super.act();
timer--;
if (timer ==0){
lives = 0;
}
}

}
