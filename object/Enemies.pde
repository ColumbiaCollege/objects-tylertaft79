class Enemy
{
  //set up variables
  String name;
  int battack;
  float x,y;
  int bhp;
  Player players;
  //players=new Player(10,2);
  
  //constructor
  Enemy(String _name, int _attack, float _x, float _y)
  {
    name=_name;
    battack=_attack;
    x=_x;
    y=_y;
  }
  int Ehealth(int _hp)
  {
    _hp=10;
    bhp=_hp;
    return bhp;
  }
  //basic enemy shape for testing
  void drawEnemy()
  {
    stroke(1);
    fill(#ff0000);
    ellipse(x,y,50,50);  
  }
  //attacking doesnt work
  void eAttack()
  {
    if(x<10)
    {
      
    }
  }
  //death doesnt work
  void eDeath()
  {
   if(bhp<1)
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
