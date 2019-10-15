Ship player;

float worldsize = 2500;

float movementSpeed = 5;

void setup() {
  size(960, 640);

  player = new Ship(width/2, height/2);

  smooth();
  textAlign(LEFT, TOP);
}

void draw() {
  background(255);

  player.draw();

  stroke(0);
  fill(0);

  if (keyPressed & key == '^') {
    text("X:" + player.x + " Y:" + player.y + "\nROT:" + player.rotation, 0, 0);
  }

  if (mousePressed && mouseButton == LEFT) {
    player.move(mouseX, mouseY);
  }
}

void keyReleased() {
  if (key == '^') {
    keyPressed = false;
  }
}

void keyPressed() {
  if (key == 'r') {
    try {
      setup();
    } 
    catch(Exception e) {
      e.printStackTrace();
    }
  }
}
