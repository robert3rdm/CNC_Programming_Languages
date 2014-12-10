// N-Queens problem
// Robert Miller
//10-23-2014

import java.util.Arrays;

public class NQueens{
	String[][] board;
	int numQ;
	public NQueens(int N){
	}
	

	public void board(int N){
		board = new String[N][N];
		int queenCount = 0;
		System.out.println("Here is a solution for " + N + " queens"); 
		int k = 0;
		int m = 0;

//////////////loop goes until it finds first solution
		int exitCond = 0;
		if (N< 4){
			System.out.println("no solution for " + N);
			}else{

		while(exitCond < N){
			exitCond++;
///////////// restrict location

				for(int look = 0; look<N; look++){
					if(look!=0){
						board[0][0]= "B";
					}
				
			//		System.out.println("Queen count 1 is: " + queenCount);
					queenCount = 0;
					for(int testi = 0 ; testi<N; testi++){
						for(int testj = 0; testj<N; testj++){
							if(board[testi][testj]== "Q"){
								queenCount+= 1;
							}
						}
					}
		//			System.out.println("queens are " +queenCount);
					if(queenCount == N){
						break;
					}
		//			System.out.println("Queen Count is: " + queenCount);
					for(int i = 0; i<N; i++){
						for(int j = 0; j<N; j++){
							queenCount = 0;

/////////////////check if row from location to right has Q
						if(board[i][j] != "B" && j<N){	
							board[i][j] = "Q";
		//				System.out.println("1" + Arrays.deepToString(board[i])+ "j loop right check");
						numQ = 0;
						}
							
/////////////////check if row from location to left has Q			
						if(j>=0 && board[i][j] != "B"){
							numQ = 0;
							for(m=0;m<j;m++){
								try{
									if(board[i][m] == "Q"){
										numQ += 1;
									}
								}catch(IndexOutOfBoundsException e){
									System.err.println("2" +e.getMessage());
								}
							if(board[i][j] == "B"){
							
							}else{
								if(numQ > 0){								
									board[i][j] = "*";
								}else{
									board[i][j] = "Q";
								}
							}
							}
		//				System.out.println("2" +Arrays.deepToString(board[i]));
						}
////////////////// check if column from location up has Q
						if(board[i][j] != "*" && i>0 && board[i][j] !="B"){
							numQ = 0;
							for(m=0; m<i; m++){
								try{
									if(board[m][j] == "Q"){
										numQ += 1;
									}
								}catch(IndexOutOfBoundsException e){
									System.err.println("3" +e.getMessage());
								}
								if(board[i][j] == "B"){
								
								}else{
									if(numQ > 0){
										board[i][j] = "*";
									}else{
										board[i][j] = "Q";
								}
								}
							}
		//					System.out.println("3" + Arrays.deepToString(board[i]));
						}//End if Block
////////////////// check if diagonal from location up right has Q
						if(i>0 && j<N && board[i][j] != "*" && board[i][j] != "B"){
							numQ = 0;
							k= j+1;
							for(m=i-1; m>=0 && k!=N; m--){	
								try{
									if(board[m][k] == "Q"){
										numQ += 1;
									}
								}catch(IndexOutOfBoundsException e){
									System.err.println("5" +e.getMessage());
								k++; 
								}
								if(board[i][j] == "B"){
								
								}else{
									if(numQ > 0){
										board[i][j] = "*";
									}else{
										board[i][j] = "Q";
									}
								}
								k++;
							}
		//					System.out.println("4" + Arrays.deepToString(board[i]));
						}// end if block
/////////////// check if diagonal from location up left has Q
						if(i>0 && j>0 && board[i][j] != "*" && board[i][j] != "B"){
							numQ = 0;
							k= j-1;
						for(m=i-1; m>=0 && k>=0;m--){
							if(k!=-1 && m!=-1 && m<N-1){
								try{
								if(board[m][k] == "Q"){
									numQ += 1;
								}
							}catch(IndexOutOfBoundsException e){
								System.err.println("5" +e.getMessage());
							}
						if(board[i][j] == "B"){
						
						}else{
							if(numQ > 0){
								board[i][j] = "*";
							}else{
								board[i][j] = "Q";
							}
						k--;
						}	
						}
						}
		//				System.out.println("5" + Arrays.deepToString(board[i]));		
					}//end if block
/////////////////////////////////////////////////////////////////
						}// jloop
						for(int j = 1; j<N;  j++){
							if(!Arrays.deepToString(board[j]).contains("Q")){
									for(int r = 0; r<N; r++){
										if(board[j-1][r] == "Q"){
										board[j-1][r] = "B";
										i--;
								}
								}
								}
						}
				//		System.out.println(i +Arrays.deepToString(board[i]) + "i loop\n");
					/// print current step
					for(int y = 0; y<N; y++){
						System.out.println( Arrays.deepToString(board[y]));
					}
				System.out.println("\n");
				}//iloop
				}//look loop
		//while loop
		
		queenCount = 0;
		for(int check = 0; check < N; check++){	
			if(Arrays.asList(board[check]).contains("Q")){
				queenCount += 1;
			System.out.println("after while queenCount" + queenCount);
			}
		}
			}//while loop
				System.out.println("\n");
////////////Correct blocked squares for display as * and print
		
		queenCount = 0;		
		for(int solution = 0; solution < N; solution++){
			for(int i = 0; i < N; i++){ 
				if(board[solution][i] == "B"){
					board[solution][i] = "*";
				}
				if(board[solution][i] == "Q"){
					queenCount += 1;
				}
			}
			System.out.println(Arrays.deepToString(board[solution])+"final");
		}
		if(queenCount == N){
			System.out.println(queenCount + " Total Queens in grid of " + N + " size..." + " this is the first solution!");
		}else{
			System.out.println(queenCount + " Total Queens in board of " + N + " size." + " This is not a solution...");
		}
	}//close else that started while loop
	}
public static void main(String[] args){
		int N = Integer.parseInt(args[0]); 
		NQueens NQueen = new NQueens(N);
			NQueen.board(N);
}
}
