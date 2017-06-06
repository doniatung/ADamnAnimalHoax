import java.util.*;

public class Player {
  String name; //Player's name
  ArrayList<Tile> hand; //Player's hand
  ArrayList<Tile> current; //Tiles in play
  int firstX, firstY, lastX, lastY = -10;
  int score;
  

  public Player() {
    name = "Player 1";
    hand = new ArrayList<Tile>();
    current = new ArrayList<Tile>();
    firstX = -10;
    score = 0;
  }

  public Player(String name) {
    this.name = name;
    hand = new ArrayList<Tile>();
    current = new ArrayList<Tile>();
    score = 0;
  }

  //Adds tile to player's hand
  void give(Tile x) {
    hand.add(x);
  }

  void addCurrent(Tile x) {
    current.add(x);
  }

  //returns player's hand
  ArrayList<Tile> getHand() {
    return hand;
  }

  ArrayList<Tile> getCurrent() {
    return current;
  }
  
  void addToScore(int x){
    score += x;
  }
  
  int currentSum(){
    int x = 0;
    int multiplier = 1;
    for (int i = 0; i < current.size(); i ++){
      int xcor = tileLocations[i] [0];
      int ycor = tileLocations[i] [1];
      multiplier = board[xcor][ycor].getMult();
      x += (current.get(i).getValue() * multiplier);
      multiplier = 1;
    }
    return x;
  }
  
  String getScore(){
    return "" + score;
  }
  
  String getName(){
    if (currentPlayer == player1){
      return "Player 1";
    }
    else{
      return "Player 2";
    }
  }

  //removes tiles from player's hand, based on 'current' 
  void remove() {
    for (int x = 0; x < hand.size(); x++) {
      for (int y = 0; y < current.size(); y++) {
        if (hand.get(x).equals(current.get(y))) {
          hand.remove(x);
          //break;
        }
      }
    }
  }

  //sets up player with random tiles
  void setUp() {
    for (int i = 0; i < 7; i ++) {
      int index = (int)(Math.random()*letters.size());
      Tile a = letters.get(index);
      give(a);
    }
  }

  //prints out player's hand
  void string() {
    for (int i = 0; i < hand.size(); i ++) {
      System.out.println(hand.size());
      
      //System.out.println( hand.get(i).getLetter() );
    }
  }
}