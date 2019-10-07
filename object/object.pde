//object assignment

//Declare variables
float x= width/2;
float y= height/2;// change location it sets to default 50,50
Player players;
Enemy[] enemies;
//Setup window
void setup()
{
 fullScreen();
 //size(1000,700);
 players=new Player(); //setup the player
 enemies= new Enemy[4]; //setup the enemies in level
 enemies[0]= new Enemy("Blue",10, 2, 500, 200);
 frameRate(2000); //random framerate to make the player move a little faster
 //background(#4dd0e1); 
}

//loops
void draw()
{
 background(#4dd0e1); 
 players.p1Display();
 players.p1Movement();
 players.p1Collision();
 //Enemy.enemies[];
 enemies.drawEnemy();
}

//if key is pressed move
void keyPressed() {
  players.keys[key] = true;
}
void keyReleased() {
  players.keys[key] = false;
}
