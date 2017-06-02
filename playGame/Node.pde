import java.util.ArrayList;

public class Node{

    private Character letter; //the letter associated with the Node
    private String value; //the word up until this point
    private ArrayList<Node> children; //all the children of the Node
    private boolean isEnd; //is this Node the end of a valid word


    //default constructor -- gives the Node default values
    public Node(){
        letter = '\0';
  value = "";
  children = new ArrayList<Node>();
  isEnd = false;
    }
    

    //overloaded constructor
    public Node (char letter, String value){
  this.letter = letter;
  this.value = value;
  children = new ArrayList<Node>();
  isEnd = false;
    }

    //add Child to Node
    public boolean addChild(Character let, String val){
  Node lette = new Node(let,val); //create new node
        if (children.contains(lette)){
      return false; //don't add if child with same value exists
  }
  children.add(lette); //otherwise add child
  return true;
    }


    //accessor -- for letter
    public char getLetter(){
  return letter;
    }


    //accessor -- for value
    public String getValue(){
  return value;
    }
 
    //returns a specific child based on letter value
    //returns null if it does not exist
    public Node getChild(char let){
  for (int x = 0; x<children.size(); x++){
      if (let == (children.get(x).getLetter())){
    return children.get(x);
      }
  }
  return null;
    }


    //checks whether the node contains a child
    public boolean containsChild(char let){
  return (!(getChild(let) == null));
    }
    
    
    //checks whether two nodes are equal
    public boolean equals(Node node, char[] allLetters){
  boolean equal = true;
  //if node values and whether it's a word are equal
  if (value.equals(node.value) && (isWord() == node.isWord())){
      //checks whether all children are the same
      for (int x = 0; x < allLetters.length; x++){ 
    if (getChild(allLetters[x]) != node.getChild(allLetters[x])){
        equal = false; //if children not same set equal to false
    }
      }
      if (equal){//if equal return true
    return true;
      }
      return false;
  }
  return false;
    }

    // accessor -- for isEnd
    public boolean isWord(){
  return isEnd;
    }

    //mutator -- for isEnd 
    public void setIsWord(boolean bool){
  isEnd = bool;
    }

    //overriden toString returning word value of Node
    public String toString(){
  return value;
    }

    //accessor -- for children
    public ArrayList<Node> getChildren(){
  return children;
    }
}