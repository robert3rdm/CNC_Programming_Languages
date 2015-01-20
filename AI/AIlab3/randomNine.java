
import java.util.Random;
import java.util.Arrays;


public class randomNine{
	

	public void board(){
		int[] ninePuzzle = new int[9];
	  Random rand = new Random();	

		for(int x = 0; x<9; x++){
			int num = rand.nextInt(9);
			ninePuzzle[x] = num;
			
			if(Arrays.asList(ninePuzzle).contains(num)){
				x = x - 1;
			}
		} 	
		System.out.println(Arrays.toString(ninePuzzle));
	}

	public static void main(String[] args){
   randomNine Puzzle = new randomNine();
		Puzzle.board();
	}
}
