//object assignment

//Declare variables
float x= width/2;
float y= height/2;// change location it sets to default 50,50
float xSpeed=2;
float ySpeed=2;
Player players=new Player();
//Setup window
void setup()
{
 fullScreen();
 //size(1000,700);
 players.xPos= width/2;
 players.yPos = height/2;
 frameRate(2000);
 //background(#4dd0e1); 
}

//loops
void draw()
{
 background(#4dd0e1); 
 players.p1Display();
 players.p1Movement();
 players.p1Collision();
}

//if key is pressed move
void keyPressed() {
if(key =='a') {
    players.left=true;
  }
  else if(key == 'd') {
    players.right = true;
  }
  else if(key =='s') {
    players.down = true;
  }
  else if(key =='w') {
    players.up = true;
  }
}
