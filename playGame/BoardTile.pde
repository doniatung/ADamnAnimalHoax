public class BoardTile {

  int multVal;
  boolean filled;
  String letter;
  String type;
  int xpos;
  int ypos;

  public BoardTile(String tileType, int newXPos, int newYPos) {
    type = tileType;
    if (type.equals("red") || type.equals("darkBlue")){
      multVal = 3;
    }
    else if (type.equals("lightBlue") || type.equals("pink")){
      multVal = 2;
    }
    else{
      multVal = 1;
    }
    xpos = newXPos;
    ypos = newYPos;
  }
  
  public void full() {
    filled = true;
  }

  public void setLetter(Tile x) {
    letter = x.getLetter();
  }

  public int getMult() {
    return multVal;
  }

  public boolean isFull() {
    return filled;
  }

  public String getLetter() {
    return letter;
  }
  
  void display(){
    stroke(0);
    rect(xpos, ypos, 40, 40);
  }
}