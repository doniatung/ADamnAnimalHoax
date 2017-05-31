public class BoardTile {

  int multVal; //Keeps track of the multiplier for the tile
  boolean filled; //boolean for whetehr the tile is filled 
  String letter; //letter the tile is filled with
  String type; //type of tile
  int xpos; //xcor
  int ypos; ///ycor
  final color PINK = color(233, 150, 122);
  final color DEFAULT = color(250, 235, 215);
  final color DARK_BLUE = color(30, 144, 255);
  final color LIGHT_BLUE = color(135, 206, 250);
  final color RED = color(178, 34, 34);


  //creates a new board tile
  public BoardTile(String tileType, int newXPos, int newYPos) {
    type = tileType;
    if (type.equals("red") || type.equals("darkBlue")) {
      multVal = 3;
    } else if (type.equals("lightBlue") || type.equals("pink")) {
      multVal = 2;
    } else {
      multVal = 1;
    }
    xpos = newXPos;
    ypos = newYPos;
  }
  
  //"Fills" tile
  public void full() {
    filled = true;
  }
  
  int getX(){
    return xpos;
  }
  
  int getY(){
    return ypos;
  }

  //sets the tile letter
  public void setLetter(Tile x) {
    letter = x.getLetter();
  }

  //returns multiplier of boardTile
  public int getMult() {
    return multVal;
  }

  //returns whether the tile has been filled
  public boolean isFull() {
    return filled;
  }

  //returns letter of Tile
  public String getLetter() {
    return letter;
  }
  
   

  //displays the tile
  void display() {
    stroke(0);
    //color
    if (type.equals("red")) {
      fill(RED);
    } else if (type.equals("darkBlue")) {
      fill(DARK_BLUE);
    } else if (type.equals("lightBlue")) {
      fill(LIGHT_BLUE);
    } else if (type.equals("pink")) {
      fill(PINK);
    } else {
      fill(DEFAULT);
    }
    rect (xpos, ypos, 30, 30);
    if (letter != null){
      fill(0);
      textSize(35);
      text(letter, boardX(), boardY());
    }
  }
}