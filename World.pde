final int CHUNK_SIZE = 16;

class Chunk {
  
}

class World {
  
  final int SIZE; // The size is given in chunksxchunks (example: size 16 means 16x16, so 256 chunks)
  float vborder, hborder;
  
  World() {
    SIZE = 16;
    updateBorder();
  }
  
  void updateBorder() {
    vborder = float(SIZE*CHUNK_SIZE/2)-width/2;
    hborder = float(SIZE*CHUNK_SIZE/2)-height/2;
  }
  
  boolean checkPlayerBorder(Ship player) {
    void 
    if(player.getX() > vborder) {
      player.setX(hborder);
    }
    
    
    return true;
  }
  
}
