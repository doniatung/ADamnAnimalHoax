import java.util.ArrayList;

public class Node{

    private char letter;
    private ArrayList<Node> children;
    private boolean isEnd;

    public Node(){
	letter = '';
	children = new ArrayList<Node>();
	isEnd = false;
    }
    
    public Node (char letter){
	this.letter = letter;
	children = new ArrayList<Node>();
	isEnd = false;
    }

    public void setEnd(boolean bool){
	isEnd = bool;
    }

    public void addChild(char let){
	Node lette = new Node(let);
	children.add(lette);
    }

    public char getLetter(){
	return letter;
    }

    public Node getChild(char let){
	for (int x = 0; x<children.size(); x++){
	    if (let.equals(children.get(x).getLetter())){
		return children.get(x);
	    }
	}
	return null;
    }

    public boolean getIsEnd(){
	return isEnd;
    }
}
