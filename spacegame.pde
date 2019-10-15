Ship player;

void settings() {
  final float TWO_THIRDS = 0.6666667;
  final float res1080pW = 1920;
  final float res1080pH = 1080;
  final float scale = TWO_THIRDS; // 1 for 1080p, TWO_THIRDS for 720p, 0.5 for 540p
  
  final int resWidth = int(res1080pW*scale);
  final int resHeight = int(res1080pH*scale);
  
  size(resWidth, resHeight);
}

void setup() {
  player = new Ship(10, 10);
  println("Width: " + width + "px, Height: " + height + "px");
}

void draw() {
  /*
  **  PRE-RENDER
  */
  
  background(255);
  translate(width/2, height/2);
  
  /*
  **  RENDERING
  */
  
  PlayerGUI.draw(); 
  
  /*
  **  ENGINE EVENTS
  */
  
  EE60FramesCounter();
}

void push() {
  pushMatrix();
  pushStyle();
}

void pop() {
  popStyle();
  popMatrix();
}
