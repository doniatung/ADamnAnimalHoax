public class Player{
  String name;
  ArrayList<Tile> hand;
  ArrayList<Tile> current;
  
  public Player(){
    name = "Player 1";
    hand = new ArrayList<Tile>();
    current = new ArrayList<Tile>();
  }
  
  public Player(String Namen){
    name = Namen;
    hand = new ArrayList<Tile>();
    current = new ArrayList<Tile>();
  }
  
  public void give(Tile x){
    hand.add(x);
  }
  
  public void remove(
}