class Enemy {
  private PImage img;
  private Box box;
  private float vel;
  public Enemy(PImage img) {
    this.img = img;
    this.box = new Box(
      40, // x
      GLOBALS.windowHeight-250, // y    
      GLOBALS.ENEMY_W, // w
      GLOBALS.ENEMY_H // h
    );
    this.vel = 0;
  }

  public void draw() {
    // showCollisionBox(this.box)
    image(this.img, this.box.x, this.box.y, this.box.w, this.box.h);
  }
}
