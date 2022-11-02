static class GLOBALS {
  public static int score = 0;
  
  public static final int windowWidth = 600;
  public static final int windowHeight = 400;
  public static final int GRAVITY = 3;
  public static final int JUMP_STRENGTH = -30;
  public static final int DRAG = 3;
  public static final int GROUND_H = 90;
  public static final int PLAYER_H = 30;
  public static final int GROUND_Y = windowHeight-GLOBALS.GROUND_H;
  public static final int PLAYER_Y = GLOBALS.GROUND_Y-GLOBALS.PLAYER_H;
  public static final int ENEMY_W = 20;
  public static final int ENEMY_H = 20;
  public static class COLORS {
    public static final color SKY = #87CEEB;
    public static final color GROUND = #888888;
    public static final color PLAYER_FILL = #ff0000;
    public static final color PLAYER_STROKE = #000000;
    public static final color COLLISION_BOX = #FFC0CB;
    public static final color SCORE = #000000;
  }
  
  public static boolean collideRectRect(float x, float y, float w, float h, float x2, float y2, float w2, float h2) {
    // From https://github.com/bmoren/p5.collide2D
    //2d
    //add in a thing to detect rectMode CENTER
    if (x + w >= x2 &&    // r1 right edge past r2 left
      x <= x2 + w2 &&    // r1 left edge past r2 right
      y + h >= y2 &&    // r1 top edge past r2 bottom
      y <= y2 + h2) {    // r1 bottom edge past r2 top
        return true;
    }
    return false;
  }
}
