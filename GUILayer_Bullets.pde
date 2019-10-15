abstract class BulletGUIItem implements Drawable {

  BulletGUIItem() {
    BulletGUI.Items.add(this);
  }
  
  boolean shouldDespawn() {
    
    for(int i = 0; i < PlayerGUI.Items.size(); i++) {
      float distance = 0;
    }
    
    return false;
  }
  
}

static class BulletGUI {
  static ArrayList<BulletGUIItem> Items = new ArrayList<BulletGUIItem>();
   
  static void draw() {
    for (int i = 0; i < Items.size(); i++) {
      Items.get(i).draw();
    }
  }
}
