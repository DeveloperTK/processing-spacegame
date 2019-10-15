class Ufo {
  
  private float x;
  private float y;
  
  Ufo(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void draw() {
    pushStyle();
    
    noStroke();
    fill(70, 230, 70);
    ellipse(x, y, 100, 75);
    
    
    strokeWeight(4);
    stroke(0);
    fill(100, 100, 255);
    
    //arc(width/2, height/2, 200, 200, 0, PI);
    
    popStyle();
  }
  
  void move(float x, float y) {
    this.x+=x;
    this.y+=y;
  }
  
}
