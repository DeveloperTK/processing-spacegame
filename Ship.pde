float shipSize = 60;

class Ship implements PlayerGUIItem {
  
  float x;
  float getX() {
    return x;
  }
  
  float y;
  float getY() {
    return y;
  }
  
  float rotation;
  float getRotation() {
    return rotation;
  }
  
  color body;
  float getBodyColor() {
    return body;
  }
  
  Ship() {
    this(width/2, height/2, 0, color(random(0, 255), random(0, 255), random(0, 255)));
  }
  
  Ship(float x, float y) {
    this(x, y, 0, color(random(0, 255), random(0, 255), random(0, 255)));
  }
  
  Ship(float x, float y, float rotation) {
    this(x, y, rotation, color(random(0, 255), random(0, 255), random(0, 255)));
  }
  
  Ship(float x, float y, color body) {
    this(x, x, 0, body);
  }
  
  Ship(float x, float y, float rotation, color body) {
    this.x = x;
    this.y = y;
    this.rotation = rotation;
    this.body = body;
  }
  
  void add() {
    playerObjects.add(this);
  }
  
  void draw() {
    this.position();
    this.show();
    this.rectify();
  }
  
  void position() {
    push();
    translate(width/2, height/2);
    this.rotation =  
    if(mouseX < width/2) {
      
    }
  }
  
  void show() {
    stroke(body);
    fill(body);
    triangle(-shipSize, -shipSize, -shipSize, shipSize, shipSize, 0);
  }
  
  void rectify() { 
    pop();
  }
  
  void move(float x, float y) {
    this.x = x;
    this.y = y;
  }
  void setX(float x) {
    this.x = x;
  }
  void setY(float y) {
    this.y = y;
  }
}
