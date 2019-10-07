class Enemy
{
  //set up variables
  String name;
  int hp;
  int attack;
  float x,y;
  Player players;
  //players=new Player(10,2);
  
  //constructor
  Enemy(String Ename, int Ehp, int Eattack, float Ex, float Ey)
  {
    name=Ename;
    hp=Ehp;
    attack=Eattack;
    x=Ex;
    y=Ey;
  }
  //basic enemy shape for testing
  void drawEnemy()
  {
    stroke(1);
    fill(#ff0000);
    ellipse(x,y,10,10);  
  }
  //attacking doesnt work
  void eAttack()
  {
    if(x<10)
    {
     attack=players.hp-2; 
    }
  }
  //death doesnt work
  void eDeath()
  {
   if(hp<1)
   {
     background(255);
   }
  }
  //move actually works kinda
   void eMove() //brownian motion for now
   {
     x+=random(-1,1);
     y+=random(-1,1);
   }
  }
