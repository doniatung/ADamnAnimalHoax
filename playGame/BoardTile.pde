public class BoardTile {

  int multVal; //Keeps track of the multiplier for the tile
  boolean filled; //boolean for whetehr the tile is filled 
  boolean tempFill;
  String letter; //letter the tile is filled with
  String type; //type of tile
  int xpos; //xcor
  int ypos; ///ycor
  boolean clicked = false;
  final color PINK = color(233, 150, 122);
  final color DEFAULT = color(250, 235, 215);
  final color DARK_BLUE = color(30, 144, 255);
  final color LIGHT_BLUE = color(135, 206, 250);
  final color RED = color(178, 34, 34);


  //creates a new board tile
  /*public BoardTile(Tile tile, int newXPos, int newYPos){
    type = tile.getLetter();
    xpos = newXPos;
    ypos = newYpos;
  }*/
  
  
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
  
  void tempFill(){
    tempFill = true;
  }
  
  
  int getX(){
    return xpos;
  }
  
  int getY(){
    return ypos;
  }

  //sets the tile letter
  public void setLetter(Tile x) {
    if (x == null){
    }
    else{
    letter = x.getLetter();
    }
    tempFill();
    full();
  }
  
  public void remove(){
    filled = false;
    letter = "";
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
      fill(227,55,58, 150);
    } else if (type.equals("darkBlue")) {
      fill(45, 97, 224, 150);
    } else if (type.equals("lightBlue")) {
      fill(174, 228, 242, 150);
    } else if (type.equals("pink")) {
      fill(245, 101, 171, 150);
    } else {
      fill(242, 197, 174, 150);
    }
    rect (xpos, ypos, 30, 30);
    if (letter != null){
      fill(0);
      textSize(25);
      text(letter, xpos + 15, ypos + 12);
    }
  }
  
  void draw(){
    display();
  }
}
