public class BoardTile {

  int multVal;
  boolean filled;
  String letter;
  String type;
  int xpos;
  int ypos;
  final color PINK = color(233, 150, 122);
  final color DEFAULT = color(250, 235, 215);
  final color DARK_BLUE = color(30, 144, 255);
  final color LIGHT_BLUE = color(135, 206, 250);
  final color RED = color(178, 34, 34);

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

  void display() {
    stroke(0);
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
  }
}