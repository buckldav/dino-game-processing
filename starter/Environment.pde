class Environment {
  private Box ground;
  public Environment() {
    this.ground = new Box(0, GLOBALS.GROUND_Y, GLOBALS.windowWidth, GLOBALS.GROUND_H);  
  }
  
  public void draw() {
    background(GLOBALS.COLORS.SKY);
    
    stroke(GLOBALS.COLORS.GROUND);
    // showCollisionBox(this.box);
    fill(GLOBALS.COLORS.GROUND);
    rect(this.ground.x, this.ground.y, this.ground.w, this.ground.h);
  }
}
