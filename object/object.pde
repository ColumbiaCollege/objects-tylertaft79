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
 players=new Player(10,2); //setup the player
 enemies= new Enemy[4]; //setup the enemies in level
 enemies[0]= new Enemy("Blue",10, 2, 500, 200); //hard coding till i fix enemies
 enemies[1]= new Enemy("red",10, 2, 700, 200);
 enemies[2]= new Enemy("green",10, 2, 400, 200);
 enemies[3]= new Enemy("yellow",10, 2, 300, 900);
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
 players.p1Death();
 players.p1Attack();
 enemies[3].eAttack();
 enemies[1].eMove();
 for(int i=0; i<4; i++) 
 {
 enemies[i].drawEnemy();
 enemies[i].eDeath();
 }
}

//if key is pressed move
void keyPressed() {
  players.keys[key] = true;
}
void keyReleased() {
  players.keys[key] = false;
}
