// N-Queens Board class
//Robert Miller
//10-23-2014

import java.util.Arrays;

public class Board{
	String[] board;
	public Board(int N){
	}

	public void makeBoard(int N){
	board = new String[N*N];
	int place = 0;
	int[] temp = new int[N];

	// initialize board
	for(int i = 0; i< board.length; i++){
		board[i] = "*";
	}

	//place queen
	place = 0;
	for(place = place; place <board.length; place++){
		int mod = place%N;
		int i=0;
	//check row
			for(int checkRow= N*mod; checkRow < (N*mod+1)-1; checkRow++){
				if(board[checkRow] !="Q"){
					board[place] = "Q";
				}else{
					board[place] = "*";
				}
			}

	// check Column
			for(int checkCol = 0; checkCol <board.length; checkCol++){	
					if(checkCol == mod){
						temp[i] = checkCol;
						i++;
				}
			}
				if(board[place] != "Q" && board[place%N] != "Q"){
					board[place] ="Q";
				}else{
					board[place] = "*";
		}
	}

// used to print board properly
	for(int print = 0; print < board.length; print++){
		if(print % N == 0){
			System.out.print("\n" + board[print]);
		}else{
			System.out.print(board[print]);
		}
	}
	System.out.println("\n");
	}

// Main method
	public static void main(String[] args){
	int	N = Integer.parseInt(args[0]);
	Board board = new Board(N);
		board.makeBoard(N);
}
}

