Player player = null;
Environment env = null;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
PImage enemyImg1 = null;


void showCollisionBox(Box box) {
  fill(GLOBALS.COLORS.COLLISION_BOX);
  stroke(GLOBALS.COLORS.COLLISION_BOX);
  strokeWeight(2);
  rect(box.x, box.y, box.w, box.h);
}
  
void updateScore() {
  GLOBALS.score += 1;
  fill(GLOBALS.COLORS.SCORE);
  stroke(GLOBALS.COLORS.SCORE);
  strokeWeight(1);
  textSize(16);
  text("SCORE: " + GLOBALS.score, 10, GLOBALS.windowHeight - 20);
}
  
void gameOver() {
  // Put some code here to run when the game ends

  // Stops the draw() from running anymore
  noLoop();
}

void settings() {
  // https://processing.org/reference/size_.html
  size(GLOBALS.windowWidth, GLOBALS.windowHeight);
}

void setup() {
  
  enemyImg1 = loadImage("images/ded.png");
  
  player = new Player();
  env = new Environment();
  
  // array.push adds an element to the array
  enemies.add(new Enemy(enemyImg1));
}

void draw() {
  env.draw();
  player.draw();
  for (int i = 0; i < enemies.size(); i++) {
    enemies.get(i).draw();
    if (player.isBonk(enemies.get(i))) {
      // ends the program
      gameOver();
    }
  }

  updateScore();
  player.update(env);
}

void keyPressed() {
  if (key == ' ' && player.isGrounded(env)) {
    player.jump();
  }
}
