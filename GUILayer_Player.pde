interface PlayerGUIItem extends Drawable {
  void add();
}

static class PlayerGUI {
  static ArrayList<Ship> Items = new ArrayList<Ship>();
  static void draw() {
    for(int i = 0; i < Items.size(); i++) {
      Items.get(i).draw();
    }
  }
}
