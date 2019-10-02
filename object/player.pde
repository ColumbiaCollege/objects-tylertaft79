// class dec
class Player {

//Player p1 = new Player(); just a variable
// var for player
float xPos=0;
float yPos=0;
float topspeed;
//velocity
PVector velocity;
//acceloration
PVector acceleration;
//movement
boolean right= false;
boolean left = false;
boolean down = false;
boolean up = false;

//constructor
Player() {
  velocity = new PVector(0,0);
}

//methods
//if key is pressed move
//void keyPressed() {
//  if(key =='a') {
//    left=true;
//  }
//  else if(key == 'd') {
//    right = true;
//  }
//}
//void keyReleased() {
//  if(key =='a') {
//    left=false;
//  }
//}

//disp
void p1Display(){
  stroke(1);
  fill(#a19d94);
  ellipse(xPos,yPos,50,50);
}
//move
void p1Movement(){
  //set speed value
  if (left) {
   xPos = xPos -1;
   // change accel
  }
  else if (right) {
    xPos = xPos +1;
  }
  else if (up) {
    yPos = yPos-1;
  }
  else if (down) {
    yPos = yPos+1;
  }
  //if key release stop movement
  if(key =='a') {
    left = false;
  }
  else if(key =='d') {
    right = false;
  }
  else if(key =='s') {
    down = false;
  }
  else if(key == 'w') {
    up = false;
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
}
