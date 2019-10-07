class Enemy
{
  //set up variables
  String name;
  int hp;
  int attack;
  float x,y;
  
  //constructor
  Enemy(String Ename, int Ehp, int Eattack, float Ex, float Ey)
  {
    name=Ename;
    hp=Ehp;
    attack=Eattack;
    x=Ex;
    y=Ey;
  }
  void drawEnemy()
  {
    stroke(1);
    fill(#ff0000);
    ellipse(x,y,10,10);  
  }
}
