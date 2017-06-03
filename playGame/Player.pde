import java.util.*;

public class Player{
    String name; //Player's name
    ArrayList<Tile> hand; //Player's hand
    ArrayList<Tile> current; //Tiles in play
  
  public Player() {
    name = "Player 1";
    hand = new ArrayList<Tile>();
    current = new ArrayList<Tile>();
    }
  
    public Player(String name){
      this.name = name;
      hand = new ArrayList<Tile>();
      current = new ArrayList<Tile>();
    }
  
  //Adds tile to player's hand
    void give(Tile x){
  hand.add(x);
    }
    
    void addCurrent(Tile x){
      current.add(x);
    }
  
  //returns player's hand
    ArrayList<Tile> getHand(){
  return hand;
    }
    
    ArrayList<Tile> getCurrent(){
      return current;
    }
  
    //removes tiles from player's hand, based on 'current' 
    void remove(){
      for (int x = 0; x < hand.size(); x++){
        for (int y = 0; y < current.size(); y++){
          if (hand.get(x).equals(current.get(y))){
            hand.remove(x);
            break;
          }
        }
      }
    }

//sets up player with random tiles
    void setUp(){
  for (int i = 0; i < 7; i ++){
      Tile a = new Tile("" + (char)(Math.random() * 26 + 65));
      give(a);
  }
    }

//prints out player's hand
void string(){
  for (int i = 0; i < current.size(); i ++){
      System.out.println( current.get(i).getLetter() );
  }
    }


}