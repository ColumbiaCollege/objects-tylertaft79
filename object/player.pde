// class dec
class Player {

  //Player p1 = new Player(); just a variable
  // var for player
  float xPos=0;
  float yPos=0;
  int hp;
  boolean attack;
  //float topspeed;
  //velocity
  //PVector velocity;
  //acceloration
  //PVector acceleration;
  //movement
  boolean [] keys = new boolean[128];

  //constructor
  Player(int php) {
    // velocity = new PVector(0,0);
    hp=php;
    xPos=100;
    yPos=200;
  }

  //methods

  //disp
  void p1Display() {
    stroke(1);
    fill(#a19d94);
    ellipse(xPos, yPos, 50, 50);
  }
  //move
  void p1Movement() {
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
    if (xPos < 0 || xPos > width) {
      xPos *=-1;
    } else if (yPos < 0 || yPos > height) {
      yPos *=-1;
    }
  }
  //it kills the player instead of enemies
  void p1Death()
  {
    if (hp<1)
    {
      background(0);
    }
  }

  void sword(int tempX, int tempY, int tempLength, int tempWidth)
  {
    rect(xPos+tempX, yPos+tempY, tempLength, tempWidth);
  }

  //attacking doesnt work but sword shows up
  void p1Attack()
  {
    if (mousePressed)
    {
      fill(55);
      sword(10, 0, 25, 3);
      //dist(x1, x2, y1, y2) returns a distance
      // Check distance from player swordtip and swordtip y, enemyX and enemyY if lets than 10
      // if Player is attacking
      for (int i=0; i < enemies.length; i++) {
        if (dist(xPos, yPos, enemies[i].x, enemies[i].y) <= 10 && attack)
        {
          enemies[i].Ehealth(-2); 
          System.out.print("hey i think it works");
        }
        //enemies[i];
      }
      //if(players.xPos+35>=(Enemy.x-width/2) && players.yPos == enemies.y && attack) 
      //{
      //  Enemy.bhp();
      //}  
      //}
    }
  }
}
