public class BoardTile{

    private int multVal;
    private boolean filled;
    private String letter;

    public BoardTile(){
    }

    public void setMultVal(int numba){
	multVal = numba;
    }

    public void full(){
	filled = true;
    }

    public void setLetter(Tile x){
	letter = x.getLetter();
    }

    public int getMult(){
	return multVal;
    }

    public boolean isFull?(){
	return filled;
    }

    public String getLetter(){
	return letter;
    }
    


}
