int[][] tileLocations = new int[7][2];

int boardX(){
  for (int i = 0; i < 15; i ++){
    if ((mouseX >= board[i][0].getX() && mouseX <=  board[i][0].getX() + 30)){
      System.out.println("BoardX: " + i);
      return i;
    }
  }
  return -1;
}

void addTiles(){
   tileLocations = new int[7][2];
}

int boardY(){
  for (int i = 0; i < 15; i ++){
    if ((mouseY >= board[0][i].getY() && mouseY <=  board[0][i].getY() + 30)){
      System.out.println("BoardY: " + i);
      return i;
    }
  }
  return -1;
}



boolean over1()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 120  && mouseX <= 120 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
    currentPlayer.addCurrent(currentPlayer.getHand().get(0));
    return true;
  } else {
    return false;
  }
}

boolean over2()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 155  && mouseX <= 155 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        currentPlayer.addCurrent(currentPlayer.getHand().get(1));
        return true;
  } else {
    return false;
  }
}

boolean over3()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 210  && mouseX <= 210 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        currentPlayer.addCurrent(currentPlayer.getHand().get(2));
    return true;
  } else {
    return false;
  }
}

boolean over4()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 265  && mouseX <= 265 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        currentPlayer.addCurrent(currentPlayer.getHand().get(3));
    return true;
  } else {
    return false;
  }
}

boolean over5()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 320  && mouseX <= 320 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        currentPlayer.addCurrent(currentPlayer.getHand().get(4));
    return true;
  } else {
    return false;
  }
}

boolean over6()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 375  && mouseX <= 375 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        currentPlayer.addCurrent(currentPlayer.getHand().get(5));
    return true;
  } else {
    return false;
  }
}

boolean over7()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 430  && mouseX <= 430 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
       currentPlayer.addCurrent(currentPlayer.getHand().get(6));
    return true;
  } else {
    return false;
  }
}