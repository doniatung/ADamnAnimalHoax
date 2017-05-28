import java.util.ArrayList;
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

    public static void main (String args[]){
    }
}
