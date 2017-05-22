int screen = 0;
PImage img;
BoardTile[][] board = new BoardTile[15][15];

void setup(){
  size(900,900);
  img = loadImage("startScreen.png");
  initGrid();
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
  else if (screen == 4){
    optionsScreen();
  }
}

void startScreen(){
  background(0);
  image(img,0,0);
}

void gameScreen(){
  //size(800,800);
  initGrid();
  background(255);
  for (int x = 0; x < 15; x++){
    for (int y = 0; y < 15; y++){
      board[x][y].display();
    }
  }
}

void gameOverScreen(){
}

void optionsScreen(){
}

void mousePressed(){
  if (screen==0){
    startGame();
  }
}

void startGame(){
  screen = 1;
}


