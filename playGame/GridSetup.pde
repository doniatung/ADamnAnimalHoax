/*void initGrid2() {
  int x = 40;
  int y = 40;
  for (int i = 0; i < 15; i++) {
    for (int j = 0; j < 15; j++) {

      //creates red board tiles
      if ((i == 0 && (j == 0 || j == 7 || j == 14)) ||
        (i == 7 && (j == 0 || j == 14)) ||
        (i == 14 && (j == 0 || j == 7 || j == 14))) {
        board[i][j] = new BoardTile("red");
      }

      //creates light blue board tiles
      else if ((i == 0 && (j == 3 || j == 11)) || 
        (i == 2 && (j == 6 || j == 8)) ||
        (i == 3 && ( j == 0 || j == 7 || j == 14)) ||
        (i == 6 && ( j == 2 || j == 6 || j == 8 || j == 12)) ||
        (i == 7 && ( j == 3 || j == 11)) ||
        (i == 8 && ( j == 2 || j == 6 || j == 8 || j == 12)) ||
        (i == 11 && ( j == 0 || j == 7 || j == 14)) ||
        (i == 12 && (j == 6 || j == 8)) ||
        (i == 14 && (j == 3 || j == 11))) {
        board[i][j] = new BoardTile("lightBlue");
      }

      //create dark blue board tiles
      else if ((i == 1 && ( j == 5 || j == 9)) ||
        (i == 4 && ( j == 1 || j == 5 || j == 9 || j == 13)) ||
        (i == 9 && ( j == 5 || j == 9)) ||
        (i == 13 && ( j == 1 || j == 5 || j == 9 || j == 13))) {
        board[i][j] = new BoardTile("darkBlue");
      }

      //create pink board tiles
      else if ((i == 1 && (j == 1 || j == 13))||
        (i == 2 && (j == 2 || j == 12)) ||
        (i == 3 && (j == 3 || j == 11)) ||
        (i == 4 && (j == 4 || j == 10)) ||
        (i == 7 && j == 7) ||
        (i == 10 && (j == 4 || j == 10)) ||
        (i == 11 && (j == 3 || j == 11)) ||
        (i == 12 && (j == 2 || j == 12)) ||
        (i == 13 && (j == 1 || j == 13))) {
        board[i][j] = new BoardTile("pink");
      } 
      else {
        board[i][j] = new BoardTile("normal");
      }
      j++;
    }
    i++;
  }
}*/