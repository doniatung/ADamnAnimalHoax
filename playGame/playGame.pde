int screen = 0;
PImage img;
BoardTile[][] board = new BoardTile[15][15];
Player player = new Player();


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
  initGrid();
  background(255);
  rect(instructionX, instructionY, instructionWidth, instructionHeight, 7);
  textAlign(CENTER,CENTER);
  fill(100);
  textSize(10);
  text("Instructions", instructionX + (instructionWidth / 2), instructionY + (instructionHeight/2));
  fill(0);
  rect(optionsX, optionsY, optionsWidth, optionsHeight, 7);
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(10);
  text("Options", optionsX + (optionsWidth / 2), optionsY + (optionsHeight/2));
  for (int x = 0; x < 15; x++){
    for (int y = 0; y < 15; y++){
      board[x][y].display();
    }
  }
  rect(100, height - 100, 400, 75);
  player.setUp();
  int x = 135;
  for (int i = 0; i < player.getHand().size(); i ++){
    int y = height - 70;
    Tile a = player.hand.get(i);
    textAlign(CENTER,CENTER);
    fill(255);
    textSize(55);
    text(a.getLetter(), x, y);
    x += 55;
  }
}
  


void gameOverScreen(){
}


void mousePressed(){
  if (screen == 5 || overInstructions()){
    instructionsPage();
  }
  if (screen == 6 || overOptions()){
    optionsPage();
  }
  if (screen==0){
    startGame();
  }
}

void startGame(){
  screen = 1;
}