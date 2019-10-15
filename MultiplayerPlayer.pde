class MultiplayerPlayer extends Ship {
  
  MultiplayerPlayer() {
    super(width/2, height/2, 0, color(random(0, 255), random(0, 255), random(0, 255)));
  }
  
  MultiplayerPlayer(float x, float y) {
    super(x, y, 0, color(random(0, 255), random(0, 255), random(0, 255)));
  }
  
  MultiplayerPlayer(float x, float y, float rotation) {
    super(x, y, rotation, color(random(0, 255), random(0, 255), random(0, 255)));
  }
  
  MultiplayerPlayer(float x, float y, color body) {
    super(x, x, 0, body);
  }
  
  MultiplayerPlayer(float x, float y, float rotation, color body) {
    super(x, x, rotation, body);
  }
  
  @Override
  void draw() {
    push();
    
      super.draw();
    
    pop();
  }
  
}
