int screen = 0;
PImage img;
BoardTile[][] board = new BoardTile[15][15];

void setup(){
  size(650,650);
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
    optionsPage();
  }
  else if (screen == 5){
    instructionsPage();
  }
  else if (screen == 6){
    optionsPage();
  }
}

void startScreen(){
  background(255);
  rect(instructionX, instructionY, instructionWidth, instructionHeight, 7);
  fill(255);
  textSize(5);
  text("Instructions", instructionX, instructionY);
  image(img,0,0);
}

void gameScreen(){
  //size(800,800);
  initGrid();
  background(255);
  rect(instructionX, instructionY, instructionWidth, instructionHeight, 7);
  fill(255);
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(10);
  text("Instructions", instructionX + (instructionWidth / 2), instructionY + (instructionHeight/2));
  //text("Instructions", instructionX, instructionY);
  //fill(0, 102, 153);
  for (int x = 0; x < 15; x++){
    for (int y = 0; y < 15; y++){
      board[x][y].display();
    }
  }
}

void gameOverScreen(){
}

void optionsPage(){
}

void mousePressed(){
  if (screen == 5 || overInstructions()){
    instructionsPage();
  }
  if (screen == 5 || overOptions()){
    optionsPage();
  }
  if (screen==0){
    startGame();
  }
}

boolean overOptions(){
}
void startGame(){
  screen = 1;
}