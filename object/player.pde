// class dec
class Player {

//Player p1 = new Player(); just a variable
// var for player
Enemy[] enemies;
float xPos=0;
float yPos=0;
int hp;
int attack;
//float topspeed;
//velocity
//PVector velocity;
//acceloration
//PVector acceleration;
//movement
boolean [] keys = new boolean[128];

//constructor
Player(int php,int pattack) {
 // velocity = new PVector(0,0);
   hp=php;
   attack=pattack;
   xPos=100;
   yPos=200;
}

//methods

//disp
void p1Display(){
  stroke(1);
  fill(#a19d94);
  ellipse(xPos,yPos,50,50);
}
//move
void p1Movement(){
  //set speed value
  if (keys['a'])  //don't need to specify true or false since its a boolean
  {
   xPos--;
   // change accel
  }
  if (keys['d']) 
  {
    xPos++;
  }
  if (keys['w']) 
  {
    yPos--;
  }
  if (keys['s']) 
  {
    yPos++;
  }

  // addaccel to vel
  // add velocity to pos
}
//collision for screen sides
void p1Collision() {
  if(xPos < 0 || xPos > width) {
    xPos *=-1;
  }
  else if(yPos < 0 || yPos > height) {
    yPos *=-1;
  }
}
//it kills the player instead of enemies
void p1Death()
{
 if(hp<1)
 {
   background(0);
 }
}
//attacking doesnt work but sword shows up
void p1Attack()
{
  if(mouseButton == LEFT)
  {
   fill(55);
   rect(xPos+10,yPos,5,15);
  }
  
}
}
