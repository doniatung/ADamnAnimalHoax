boolean active = false;
okXcor = 635-60;
okYCor = height - 70;
final color activeButton = ( );
final color inactiveButton = ( );


void draw(){
  fill(#00BFF7);
  rect(optionsX, optionsY, optionsWidth, optionsHeight, 7);
  textAlign(CENTER,CENTER);
  fill(255);
  textSize(10);
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
}