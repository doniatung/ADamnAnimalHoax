boolean active = false;
int okXcor = 545;
int okYcor = height + 350;
final color activeButton = color(#03C6FF);
final color inactiveButton = color(#C5ECF7);


void initOkButton() {
  pushStyle();
  fill(inactiveButton);
  stroke(activeButton);
  if (active)
    strokeWeight(2);
  else noStroke();
  rect(okXcor, okYcor, optionsWidth, optionsHeight, 7);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(10);
<<<<<<< HEAD
  text("Options", optionsX + (optionsWidth / 2), optionsY + (optionsHeight/2));
}

boolean valid(int x1, int x2, int y1, int yx){
  //if word is not in one line
  if (( x1 !=  x2) || ( y1 !=  y2)){ return false;}
  //if word is one letter
  if (( x1 ==  x2) && ( y1 ==  y2)) { return false;}
  //if there are gaps
  if ( x1 =  x2){
    for (int z = min(y1, y2); z <= max(y1, y2); z++){
      if (board[x1][z] == null){
        return false;
      }
    }
  }
  if ( y1 =  y2){
    for (int z = min(x1, x2); z <= max(x1, x2); z++){
      if (board[z][y1] == null){
        return false;
      }
    }
  }
  
  String word = null;
  if (x1 = x2){
    for (int z = min(y1, y2); z <= max(y1, y2); z++){
       word += board[x1][z] 
    }
  }
  
  if (y1 = y2){
    for (int z = min(x1, x2); z <= max(x1, x2); z++){
       word += board[z][y1]
    }
  }
  
  return containsWord(word);
=======
  text("OK", okXcor + (optionsWidth / 2), okYcor + (optionsHeight/2));
<<<<<<< HEAD
}

boolean overOK()  {
  //if the mouse has clicked instructions button
  if (mouseX >= okXcor  && mouseX <= okXcor + instructionWidth && 
      mouseY >= okYcor && mouseY <= okYcor + instructionHeight) {
      //screen = 5 moves to instructions page
        ok();
    return true;
  } else {
    return false;
  }
=======
>>>>>>> c070daa6653553462c58a55dea95d873ed95bf20
>>>>>>> 185ffe209857773332484c1803bbfbeb8582f4d4
}