Star[] some = new Star[200];
Spaceship ship = new Spaceship();
public void setup(){
  size(800,800);
  for(int i = 0; i<some.length; i++){
    some[i] = new Star();
  }
}

public void draw(){
  background(0);
  for(int i = 0; i < some.length; i++){
    some[i].show();
  }
  ship.show();
  ship.move();
}

void keyPressed(){
  // spaceship controls
  if (keyCode == LEFT) {
    ship.turn(-5);
  } else if (keyCode == RIGHT) {
    ship.turn(5);
  } else if (keyCode == UP) {
    ship.accelerate(0.1);
  } else if (key == ' ') {
    ship.hyperspace();
  }
}
