int screen = 0;
PImage img;
BoardTile[][] board = new BoardTile[15][15];
Player player = new Player();

//sets up the game with board, loads startScreen
void setup(){
  size(650,650);
  img = loadImage("startScreen.png");
  initGrid();
}
//Runs the game, is used to update game
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


//displays start screen
void startScreen(){
  background(255);
  rect(instructionX, instructionY, instructionWidth, instructionHeight, 7);
  fill(255);
  textSize(5);
  text("Instructions", instructionX, instructionY);
  image(img,0,0);
}

//displays game screen
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
  

//displays game over screen
void gameOverScreen(){
}

//instructions for mouse being pressed
void mousePressed(){
  //user calls for instructions page
  if (screen == 5 || overInstructions()){
    //opens instructions page
    instructionsPage();
  }
  //user calls for options page
  if (screen == 6 || overOptions()){
    //opens options page
    optionsPage();
  }
  if (screen==0){
    startGame();
  }
}
//starts game by changing screen value
void startGame(){
  screen = 1;
}