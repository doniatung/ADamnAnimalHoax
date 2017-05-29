import java.util.ArrayList;
import java.util.Scanner;
import java.io.*;

public class Trie{

    private Node root = new Node('\0', "");
    public final char[] alphabet = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
                                'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
                                'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
                                'y', 'z'};

    public Trie(){
    }

    public Trie(ArrayList<String> words){
	for (String word : words){
	    addWord(word);
	}
    }

    public void addWord(String word){
	char[] letters = new char[word.length()];
	for (int x = 0; x < word.length(); x++){
	    letters[x] = word.charAt(x);
	}
	addWord(letters);
    }

    public void addWord(char[] letters){
	Node current = root;

	for (int x = 0; x < letters.length; x++){
	    if (!current.containsChild(letters[x])){
		current.addChild(letters[x], current.getValue() + letters[x]);
	    }

	    current = current.getChild(letters[x]);
	}

	current.setIsWord(true);
    }

    public boolean containsPrefix(String prefix){
	char[] prefixLetters = new char[prefix.length()];
	for (int x = 0; x < prefix.length(); x++){
	    prefixLetters[x] = prefix.charAt(x);
	}
	return contains(prefixLetters, false);
    }

    public boolean containsWord(String word){
	char[] letters = new char[word.length()];
	for (int x = 0; x < word.length(); x++){
	    letters[x] = word.charAt(x);
	}
	return contains(letters, true);
    }

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

    public Node getPrefix(String prefix){
	char[] letters = new char[prefix.length()];
	for (int x = 0; x < prefix.length(); x++){
	    letters[x] = prefix.charAt(x);
	}
	return getNode(letters);
    }

    private boolean contains(char[] word, boolean isWord){
	Node node = getNode(word);
	return (node != null && node.isWord() && isWord) ||
	    (!isWord && node != null);
    }

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

    public String toString(){
	return root.toString();
    }

    public int sizeOf(){
	return sizeOf(alphabet, root);
    }

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
    
    public static void main (String args[]){
        File newFile;
	String word;
	Scanner scan;
	Trie mytree = new Trie();
	int totalWords = 0;
	ArrayList<String> dict = new ArrayList<String>();
	try{
	    newFile = new File("20k.txt");
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
