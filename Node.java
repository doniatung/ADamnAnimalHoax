import java.util.ArrayList;

public class Node{

    private Character letter;
    private String value;
    private ArrayList<Node> children;
    private boolean isEnd;

    public Node(){
	children = new ArrayList<Node>();
	isEnd = false;
    }
    
    public Node (char letter, String value){
	this.letter = letter;
	this.value = value;
	children = new ArrayList<Node>();
	isEnd = false;
    }

    public void setEnd(boolean bool){
	isEnd = bool;
    }

    public boolean addChild(Character let, String val){
	Node lette = new Node(let,val);
        if (children.contains(lette)){
	    return false;
	}
	children.add(lette);
	return true;
    }

    public char getLetter(){
	return letter;
    }

    public String getValue(){
	return value;
    }
    
    public Node getChild(char let){
	for (int x = 0; x<children.size(); x++){
	    if (let == (children.get(x).getLetter())){
		return children.get(x);
	    }
	}
	return null;
    }

    public boolean containsChild(char let){
	return (!(getChild(let) == null));
    }
    
    public boolean equals(Node node, char[] allLetters){
	boolean equal = true;
	if (value.equals(node.value) && (isWord() == node.isWord())){
	    for (int x = 0; x < allLetters.length; x++){
		if (getChild(allLetters[x]) != node.getChild(allLetters[x])){
		    equal = false;
		}
	    }
	    if (equal){
		return true;
	    }
	    return false;
	}
	return false;
    }

    public boolean isWord(){
	return isEnd;
    }

    public void setIsWord(boolean bool){
	isEnd = bool;
    }

    public String toString(){
	return value;
    }

    public ArrayList<Node> getChildren(){
	return children;
    }
}
