int screen = 0

void setup(){
  size(500,500);
}

void draw(){
  if (screen == 0){
    startScreen();
  }
  else if (screen == 1){
    gameScreen();
  }
  else if (screen == 2){
    gameOverScreen();
  }
}