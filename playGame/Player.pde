
  String name;
  ArrayList<Tile> hand;
  ArrayList<Tile> current;
  
Player(){
    name = "Player 1";
    hand = new ArrayList<Tile>();
    current = new ArrayList<Tile>();
}
  
Player(String Namen){
    name = Namen;
    hand = new ArrayList<Tile>();
    current = new ArrayList<Tile>();
}
  
void give(Tile x){
    hand.add(x);
  }
  
void remove(
}