int screen = 0;
PImage img;
BoardTile[][] board = new BoardTile[15][15];
Player player = new Player();
Tile adding = new Tile();
int numBackground = 255;
Trie dictionary;

//sets up the game with board, loads startScreen
void setup(){
  size(650,650);
  img = loadImage("startScreen.png");
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
  player.setUp();
  int x = 135;
  for (int i = 0; i < player.getHand().size(); i ++){
    int y = height - 70;
    Tile a = player.hand.get(i);
    textAlign(CENTER,CENTER);
    fill(a.fill);
    textSize(55);
    text(a.getLetter(), x, y);
    x += 55;  
  }
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
    
    int xcor = boardX();
    int ycor = boardY();
    if (over1()){
      adding = player.getHand().get(0);
    }
    if (over2()){
      adding = player.getHand().get(1);
    }
    if (over3()){
      adding = player.getHand().get(2);
    }
    if (over4()){
      adding = player.getHand().get(3);
    }
    if (over5()){
      adding = player.getHand().get(4);
    }
    if (over6()){
      adding = player.getHand().get(5);
    }
    if (over7()){
      adding = player.getHand().get(6);
    }   
    if (xcor != -1 && ycor != -1){
      if (adding != null){
        //System.out.println(xcor);
        //System.out.println(ycor);
        board[xcor] [ycor].setLetter(adding);
        player.addCurrent(adding);
        board[xcor][ycor].full();
        System.out.println(board[xcor][ycor].getLetter());
        board[xcor][ycor].display();
        adding.fill = 100;
        adding = null;
        redraw();
      }
    }
  }
}
  


//starts game by changing screen value
void startGame(){
  screen = 1;
}