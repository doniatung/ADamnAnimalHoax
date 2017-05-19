public class Tile{

    private String letter;
    private int pointVal;
    private boolean endOfWord;

    public Tile(String letter){
	//set the Tile's letter to the inputted value
	this.letter = letter;
	//endOfWord is false until the AI algo considers it
	endOfWord = false;
	//setting the point value depending on the letter of the Tile
	if (letter.equals("Q") || letter.equals("Z")){
	    pointVal = 10;
	}
	else if (letter.equals("J") || letter.equals("X")){
	    pointVal = 8;
	}
	else if (letter.equals("K")){
	    pointVal = 5;
	}
	else if (letter.equals("F") || letter.equals("H") || letter.equals("V") || letter.equals("W") || letter.equals("Y")){
	    pointVal = 4;
	}
	else if (letter.equals("B") || letter.equals("C") || letter.equals("M") || letter.equals("P")){
	    pointVal = 3;
	}
	else if (letter.equals("D") || letter.equals("G")){
	    pointVal = 2;
	}
	else{
	    pointVal = 1;
	}
    }

    //get letter on the Tile
    public String getLetter(){
	return letter;
    }

    //get the point value of the Tile 
    public int getValue(){
	return pointVal;
    }

    //return if this letter could be the end of a potential word
    public boolean isThisTheEnd(){
	return endOfWord;
    }
	


}
