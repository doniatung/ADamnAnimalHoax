boolean active = false;
int okXcor = 545;
int okYcor = height + 350;
final color activeButton = color(#03C6FF);
final color inactiveButton = color(#C5ECF7);
String word = null;


void initOkButton() {
  pushStyle();
  fill(inactiveButton);
  stroke(activeButton);
  if (active)
    strokeWeight(2);
  else noStroke();
  fill(0);
  rect(okXcor, okYcor, optionsWidth, optionsHeight, 7);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(10);
//<<<<<<< HEAD
  text("OK", okXcor + (optionsWidth / 2), okYcor + (optionsHeight/2));
}


//takes int coordinates of the start and end of a word, checks if the word is valid
boolean valid(int x1, int x2, int y1, int y2){
  //if word is not in one line
  //System.out.println(x1 + " " + x2 + " " + y1 + " " + y2);
  if (( x1 !=  x2) && ( y1 !=  y2)){ 
    System.out.println(false + "1");
    return false;}
  //if word is one letter
  if (( x1 ==  x2) && ( y1 ==  y2)) { 
    System.out.println(false + "2");
    return false;}
  //if there are gaps
  if ( x1 ==  x2){
    for (int z = min(y1, y2); z <= max(y1, y2); z++){
      if (board[x1][z] == null){
        System.out.println(false + "3");
        return false;
      }
    }
  }
  if ( y1 == y2){
    for (int z = min(x1, x2); z <= max(x1, x2); z++){
      if (board[z][y1] == null){
        System.out.println(false + "4");
        return false;
      }
    }
  }
  if (x1 == x2){
    for (int z = min(y1, y2); z <= max(y1, y2); z++){
       word += board[x1][z];
    }
  }
  
  if (y1 == y2){
    for (int z = min(x1, x2); z <= max(x1, x2); z++){
       word += board[z][y1];
    }
  }
  containsWord(word);
  return true;
}

boolean containsWord(String word){
  return dictionary.containsWord(word);
}

boolean overOK()  {
  //if the mouse has clicked instructions button
  if (mouseX >= okXcor  && mouseX <= okXcor + instructionWidth && 
      mouseY >= okYcor && mouseY <= okYcor + instructionHeight) {
    return true;
  } else {
    return false;
  }
}

void switchPlayers(){
  if (currentPlayer == player1){
    currentPlayer = player2;
  }
  else{
    currentPlayer = player1;
  }
  
}

void ok(){
    if (currentPlayer.getCurrent().size() != 0){
      ArrayList<Tile> y = currentPlayer.getCurrent();
      String word = "";
      for (int i = 0; i < y.size(); i++){
        word += y.get(i);
      }
      System.out.println(y.size());

        System.out.println("Player First X: " + currentPlayer.firstX + "\t Player First Y: " + currentPlayer.firstY + "\t Player last X: " + currentPlayer.lastX + "\t Player last Y: " + currentPlayer.lastY);
        if(! valid (currentPlayer.firstX, currentPlayer.lastX, currentPlayer.firstY, currentPlayer.lastY))
        {
          System.out.println("lol sorry");//put the letters back
          if (currentPlayer.firstX == currentPlayer.lastX){
            int a = currentPlayer.firstY;
            while (tileLocations[a][0] != 0){
              board[currentPlayer.firstX][a].remove();
              a ++;
            }
          if (currentPlayer.firstY == currentPlayer.lastY){
          int b = currentPlayer.firstX;
          while (tileLocations[b = currentPlayer.firstX][0] != 0){
            board[b][currentPlayer.firstY].remove();
              b ++;
            }
            
          }
        }
        return;
      }
        for (int i = 1; i < y.size() -1; i ++){
          currentPlayer.remove();
        //make the letters stay on board, draw new ones
        addTiles();
        }
      System.out.println("input valid");
      currentPlayer.firstX = -10;
      int x = currentPlayer.currentSum();
      currentPlayer.addToScore(x);
      switchPlayers();
    } 
    
    
  }
