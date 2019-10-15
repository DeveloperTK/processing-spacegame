Ufo player;

void setup() {
  size(400, 400);
  
  player = new Ufo(width/2, height/2);
}

void draw() {
  background(255);
  
  player.draw();
}
