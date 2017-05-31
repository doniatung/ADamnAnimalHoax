import java.util.ArrayList;
import java.util.Scanner;
import java.io.*;

public class Trie{

    private Node root = new Node('\0', ""); //gives root node default value
    public final char[] alphabet = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
                                'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
                                'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
				    'y', 'z'}; //array with alphabet

    //default contructor
    public Trie(){
    }

    //overloaded constructor
    //pre cond: ArrayList containing words size > 0
    //post cond: adds all words to Trie
    public Trie(ArrayList<String> words){
	for (String word : words){
	    addWord(word);
	}
    }

    //adds a word to Trie by converting word to char array
    public void addWord(String word){
	char[] letters = new char[word.length()];
	for (int x = 0; x < word.length(); x++){
	    letters[x] = word.charAt(x);
	}
	addWord(letters);
    }
    
    //adds Word by adding Nodes of each char value
    public void addWord(char[] letters){
	Node current = root;

	for (int x = 0; x < letters.length; x++){
	    if (!current.containsChild(letters[x])){ //does Node contain child already
		current.addChild(letters[x], current.getValue() + letters[x]);
	    }

	    current = current.getChild(letters[x]); //move current pointer
	}

	current.setIsWord(true); //once word is added set isWord to true
    }

    //checks to see if the trie branch contains a prefix
    public boolean containsPrefix(String prefix){
	char[] prefixLetters = new char[prefix.length()];
	for (int x = 0; x < prefix.length(); x++){
	    prefixLetters[x] = prefix.charAt(x);
	}
	return contains(prefixLetters, false);
    }
    
    //checks if Trie contains a Word
    public boolean containsWord(String word){
	char[] letters = new char[word.length()];
	for (int x = 0; x < word.length(); x++){
	    letters[x] = word.charAt(x);
	}
	return contains(letters, true);
    }

    //returns Node containing value = word
    public Node getWord(String word){
	char[] letters = new char[word.length()];
	for (int x = 0; x < word.length(); x++){
	    letters[x] = word.charAt(x);
	}
	Node node = getNode(letters);
	if (node != null && node.isWord()){
	    return node;
	}
	return null;
    }
    
    //returns Node containing the prefix
    public Node getPrefix(String prefix){
	char[] letters = new char[prefix.length()];
	for (int x = 0; x < prefix.length(); x++){
	    letters[x] = prefix.charAt(x);
	}
	return getNode(letters);
    }

    //checks if word is contained in Trie
    private boolean contains(char[] word, boolean isWord){
	Node node = getNode(word);
	return (node != null && node.isWord() && isWord) ||
	    (!isWord && node != null);
    }

    //returns end node of Trie containing word
    private Node getNode(char[] word){
	Node current = root;

	for (int x = 0; x < word.length && current != null; x++){
	    current = current.getChild(word[x]);
	    if (current == null){
		return null;
	    }
	}
	return current;
    }

    //overridden toString()
    public String toString(){
	return root.toString();
    }

    //returns the number of Nodes in the tree
    public int sizeOf(){
	return sizeOf(alphabet, root);
    }

    //returns the number of Nodes in the tree by traversing through all branches
    public int sizeOf(char[] alphabet, Node start){
	int size = 0;
	for (int x = 0; x < alphabet.length; x++){
	    if (start.containsChild(alphabet[x])){
		size += sizeOf(alphabet, start.getChild(alphabet[x]));
		size++;
	    }
	}
	return size;
    }

    //minimizes tree
    public void minimize(){
        minimize(alphabet, root)
    }

    /*
    public void minimize(char[] alpha, Node start){
	for (int x = 0; x < alphabet ){
	}
    }*/
    

    public static void main (String args[]){
        File newFile;
	String word;
	Scanner scan;
	Trie mytree = new Trie();
	int totalWords = 0;
	ArrayList<String> dict = new ArrayList<String>();
	try{
	    newFile = new File("samplewords.txt");
	    scan = new Scanner(newFile);

	    while (scan.hasNext()){
		word = scan.nextLine();
		System.out.println("Word added to tree: " + word);
		mytree.addWord(word);
		totalWords++;
	    }
	}
	catch (FileNotFoundException e){
	    System.out.println("File Not Found.");
	    System.exit(1);
	}

	System.out.println("Total words entered: " + totalWords);
	System.out.println("Total Nodes in Trie: " + mytree.sizeOf());
    }
}
