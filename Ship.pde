class Ship {

  float x;
  float y;
  float rotation;
  float col;
  float size = 40;

  Ship(float x, float y) {
    this.x = x;
    this.y = y;
    this.rotation = 0;
    this.col = color(random(0, 255), random(0, 255), random(0, 255));
  }
  
  void draw() {
    pushStyle();
    pushMatrix();

    translate(x, y);

    if (dist(mouseX, mouseY, this.x, this.y) > movementSpeed) {

      float ak = mouseX - this.x;
      float gk = mouseY - this.y;

      if (ak < 0) {
        this.rotation = PI + atan(gk/ak);
      } else {
        this.rotation = atan(gk/ak);
      }
    }

    rotate(this.rotation);

    stroke(this.col);
    fill(this.col);

    triangle(-size, -size, -size, size, size, 0);

    popMatrix();
    popStyle();
  }

  void move(float cx, float cy) {
    PVector velocity = new PVector(cx - this.x, cy - this.y);
    velocity.limit(movementSpeed);
    this.x += velocity.x;
    this.y += velocity.y;
  }
}
