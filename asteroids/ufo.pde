class Ufo extends GameObjects{

  //instance variables

PVector direction;
int shotTimer, threshold;

//construct
Ufo(){
lives = 3;
location =  new PVector (random (0, width), random (0, height));
velocity = new PVector (0, 1);
direction = new PVector(0,-0.1);
shotTimer = 0;
threshold = 20;
}

//behaviour 
void show(){
fill (0, 255, 0);
ellipse(location.x, location.y, 30, 40);
fill(255);
ellipse(location.x, location.y, 20, 10);

}

void act(){
super.act();

shotTimer++;

if(upkey) { 
 velocity.add(direction);
myObjects.add(new Fire());
myObjects.add(new Fire());
myObjects.add(new Fire());
}

if(upkey) { 
 velocity.add(direction);
myObjects.add(new Fire());
myObjects.add(new Fire());
myObjects.add(new Fire());
}
if(downkey) velocity.sub(direction);
if (leftkey) direction.rotate(radians(-5));
if (rightkey) direction.rotate(radians(5));
if (spacekey && shotTimer > threshold) {
  myObjects.add(new ufoBullet());
  shotTimer = 0;
}
if (spacekey) {
  myObjects.add(new ufoBullet());
  shotTimer = 0;
}
}

}
