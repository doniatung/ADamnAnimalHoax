import java.util.*;

public class Player{
    String name;
    ArrayList<Tile> hand;
    ArrayList<Tile> current; 
  
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
  
    void give(Tile x){
  hand.add(x);
    }
  
    ArrayList getHand(){
  return hand;
    }
  
    void remove(){
    }

    void setUp(){
  for (int i = 0; i < 7; i ++){
      Tile a = new Tile("" + (char)(Math.random() * 26 + 65));
      give(a);
  }
    }

    public void string(){
  for (int i = 0; i < hand.size(); i ++){
      System.out.println( hand.get(i).getLetter() );
  }
    }


}