int screen = 0;
PImage img;
BoardTile[][] board = new BoardTile[15][15];
Player player1 = new Player();
Player player2 = new Player();
Player currentPlayer = player1;
Tile adding;
int numBackground = 255;
Trie dictionary;
ArrayList<Tile> letters = new ArrayList<Tile>();

//sets up the game with board, loads startScreen
void setup(){
  size(650,650);
  img = loadImage("startScreen.png");
  initLetters();
  initGrid();
  dictionary = createDictionary();
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
  background(numBackground); //background(255);
  image(img,0,0);
}

//displays game screen
void gameScreen(){
  //initGrid();
  background(numBackground); //background(255);
  initInstructButton();
  initOptions();
  initOkButton();
  for (int x = 0; x < 15; x++){
    for (int y = 0; y < 15; y++){
      board[x][y].display();
    }
  }
  rect(100, height - 100, 400, 75);
  player1.setUp();
  player2.setUp();
  int x = 135;
  for (int i = 0; i < currentPlayer.getHand().size(); i ++){
    int y = height - 70;
    Tile a = currentPlayer.hand.get(i);
    textAlign(CENTER,CENTER);
    fill(a.fill);
    textSize(55);
    text(a.getLetter(), x, y);
    x += 55;  
  }
  fill(100);
  textSize(30);
  text(currentPlayer.getName(), instructionX + (instructionWidth / 2)+ 10, height / 2);
  text(currentPlayer.getScore(), instructionX + (instructionWidth / 2), height / 2 + 50);
}
  

//a game over screen
void gameOverScreen(){
}

//instructions for mouse being pressed
void mousePressed(){
  //user calls for instructions page
  if (screen == 1 && overInstructions()){
    //opens instructions page
    instructionsPage();
  }
  if (screen == 1 && overOK()){
    ok();
  }
  //user calls for options page
  if (screen == 6 || overOptions()){
    //opens options page
    optionsPage();
  }
  if (screen==0){
    startGame();
  }
  if (screen == 1){
    //currentPlayer.string();
    int xcor = boardX();
    int ycor = boardY();
    //System.out.println(tileLocations[0]);
    if (over1()){
      adding = currentPlayer.getHand().get(0);
    }
    if (over2()){
      adding = currentPlayer.getHand().get(1);
    }
    if (over3()){
      adding = currentPlayer.getHand().get(2);
    }
    if (over4()){
      adding = currentPlayer.getHand().get(3);
    }
    if (over5()){
      adding = currentPlayer.getHand().get(4);
    }
    if (over6()){
      adding = currentPlayer.getHand().get(5);
    }
    if (over7()){
      adding = currentPlayer.getHand().get(6);
    }   
    if (xcor != -1 && ycor != -1){
      if (adding != null){
        
        if (currentPlayer.firstX == -10){
          System.out.println("Changing firstxy  " + xcor + ycor);
          currentPlayer.firstX = xcor;
          currentPlayer.firstY = ycor;
        }
        
        currentPlayer.lastX = xcor;
        currentPlayer.lastY = ycor;
        
        
        board[xcor] [ycor].setLetter(adding);
        board[xcor][ycor].full();
        board[xcor][ycor].display();
        adding.fill = 100;
        adding = null;
        redraw();
        int x = 0;
        while (tileLocations[x][0] != 0 ){
          x ++;
        } 
        tileLocations[x][0] = xcor;
        tileLocations[x][1] = ycor;
      }
    }
  }
}
  


//starts game by changing screen value
void startGame(){
  screen = 1;
}
