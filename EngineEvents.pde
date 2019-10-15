void EE60FramesPassed() {
  // executed all 60 frames
  System.gc();
}

int frameCounter = 0;
void EE60FramesCounter() {
  if(frameCounter >= 60) {
    frameCounter = 0;
    EE60FramesPassed();
  } else {
    frameCounter++;
  }
}
