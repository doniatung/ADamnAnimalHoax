int boardX(){
  for (int i = 0; i < 15; i ++){
    if (mouseX >= board[0][i].getX() && mouseX <=  board[0][i].getX() + 30){
      return i;
    }
  }
  return -1;
}

int boardY(){
  for (int i = 0; i < 15; i ++){
    if (mouseY >= board[i][0].getY() && mouseY <=  board[i][0].getY() + 30){
      return i;
    }
  }
  return -1;
}


boolean over1()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 135  && mouseX <= 135 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
    player.addCurrent(player.getHand().get(0));
    return true;
  } else {
    return false;
  }
}

boolean over2()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 190  && mouseX <= 190 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        player.addCurrent(player.getHand().get(1));
        return true;
  } else {
    return false;
  }
}

boolean over3()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 245  && mouseX <= 245 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        player.addCurrent(player.getHand().get(2));
    return true;
  } else {
    return false;
  }
}

boolean over4()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 300  && mouseX <= 300 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        player.addCurrent(player.getHand().get(3));
    return true;
  } else {
    return false;
  }
}

boolean over5()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 355  && mouseX <= 355 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        player.addCurrent(player.getHand().get(4));
    return true;
  } else {
    return false;
  }
}

boolean over6()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 410  && mouseX <= 410 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        player.addCurrent(player.getHand().get(5));
    return true;
  } else {
    return false;
  }
}

boolean over7()  {
  //if the mouse has clicked instructions button
  if (mouseX >= 465  && mouseX <= 465 + 55 && 
      mouseY >= height - 100 && mouseY <= height) {
        player.addCurrent(player.getHand().get(6));
    return true;
  } else {
    return false;
  }
}