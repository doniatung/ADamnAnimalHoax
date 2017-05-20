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


void initGrid() {
  for (int i = 0; i < 15; i++) {
    for (int j = 0; j < 15; j++) {

      //creates red board tiles
      if ((i == 0 && (j == 0 || j == 7 || j == 14)) ||
        (i == 7 && (j == 0 || j == 14)) ||
        (i == 14 && (j == 0 || j == 7 || j == 14))) {
        board[i][j] = new BoardTile("red", 10+i*53, 10+j*53);
      }

      //creates light blue board tiles
      else if ((i == 0 && (j == 3 || j == 11)) || 
        (i == 2 && (j == 6 || j == 8)) ||
        (i == 3 && ( j == 0 || j == 7 || j == 14)) ||
        (i == 6 && ( j == 2 || j == 6 || j == 8 || j == 12)) ||
        (i == 7 && ( j == 3 || j == 11)) ||
        (i == 8 && ( j == 2 || j == 6 || j == 8 || j == 12)) ||
        (i == 11 && ( j == 0 || j == 7 || j == 14)) ||
        (i == 12 && (j == 6 || j == 8)) ||
        (i == 14 && (j == 3 || j == 11))) {
        board[i][j] = new BoardTile("lightBlue", 10 + i*53, 10+j*53);
      }

      //create dark blue board tiles
      else if ((i == 1 && ( j == 5 || j == 9)) ||
        (i == 5 && ( j == 1 || j == 5 || j == 9 || j == 13)) ||
        (i == 13 && ( j == 5 || j == 9)) ||
        (i == 9 && ( j == 1 || j == 5 || j == 9 || j == 13))) {
        board[i][j] = new BoardTile("darkBlue", 10+i*53, 10+j*53);
      }

      //create pink board tiles
      else if ((i == 1 && (j == 1 || j == 13))||
        (i == 2 && (j == 2 || j == 12)) ||
        (i == 3 && (j == 3 || j == 11)) ||
        (i == 4 && (j == 4 || j == 10)) ||
        (i == 7 && j == 7) ||
        (i == 10 && (j == 4 || j == 10)) ||
        (i == 11 && (j == 3 || j == 11)) ||
        (i == 12 && (j == 2 || j == 12)) ||
        (i == 13 && (j == 1 || j == 13))) {
        board[i][j] = new BoardTile("pink", 10+i*53, 10+j*53);
      } 
      else {
        board[i][j] = new BoardTile("normal", 10+i*53, 10+j*53);
      }
    }
  }
}