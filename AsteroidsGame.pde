Spaceship bob = new Spaceship(); 
Star[] stars = new Star[100];
ArrayList <TieFighter> rock = new ArrayList <TieFighter> ();
ArrayList <Bullet> ammo = new ArrayList <Bullet>();
boolean w = false;
boolean a = false;
boolean d = false;
boolean s = false;
//private boolean spacePressed = false;

public void setup() {
  size(700,700);
  for(int i = 0; i < stars.length; i++)
  stars[i] = new Star();
  for (int i = 0; i < 15; i++) {
    rock.add(new TieFighter());
    
  }
}
public void draw() {
  background(0);
  bob.show(); 
  bob.move();
  if (a == true)
    bob.turn(-3);
  if (d == true)
    bob.turn(4);
  if (w == true)
    bob.accelerate(0.2);
  if (s == true) {
    bob.hyperspace();
    s = false; }
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  for(int i = 0; i < rock.size(); i++) {
    rock.get(i).move();
    rock.get(i).show();
    float num = dist((float)(bob.getX()), (float)(bob.getY()), (float)(rock.get(i).getmyCenterX()), (float)(rock.get(i).getmyCenterY()));
    if (num < 20){
      rock.remove(i);
    }
  }
  for(int i = 0; i < ammo.size(); i++)
  {
    ammo.get(i).show();
    ammo.get(i).move();
    if(ammo.size() > 15){ammo.remove(0);}
  }
  
  for(int i = 0; i < ammo.size()-1; i++)
  {
    for(int j = 0; j < rock.size()-1; j++)
    {
      if(dist((float)rock.get(j).getmyCenterX(), (float)rock.get(j).myCenterY, (float)ammo.get(i).myCenterX, (float)ammo.get(i).myCenterY) < 5 )
    {
      ammo.remove(i);
      rock.remove(j);
    }
   }
  
}
}


public void keyPressed() { 
  if (key == 'w')
    w = true;
  if (key == 'a')
    a = true;
  if (key == 'd')
    d = true;
  if (key == 's')
    s = true;
   if (key == 'q') {ammo.add(new Bullet(bob));}

}

public void keyReleased() {
  if (key == 'w')
    w = false;
  if (key == 'a')
    a = false;
  if (key == 'd')
    d = false;
  if (key == 's')
    s = false;
}
