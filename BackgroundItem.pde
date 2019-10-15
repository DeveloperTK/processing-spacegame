interface BackgroundItem extends Collidable {

  float x = 0.0;
  float y = 0.0;

  float getX();
  float getY();
}



interface Collidable {
  boolean collidesWith(BackgroundItem item);
  void onCollisionWith(BackgroundItem item);
}

class GroundTexture implements
