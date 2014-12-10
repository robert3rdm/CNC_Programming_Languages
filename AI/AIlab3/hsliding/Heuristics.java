//// Heuristics class for implementing different searches

package hsliding;

public class Heuristics{
 
	
	
	public static int hAstar(Node N){
     int a = 0;
     int[][] state;
     state = N.getState();
     for(int i = 1; i < state.length * state.length; i++){
       a+= manHat(i, state);
     }
     return a;
   }
   
  public static int manHat(int num, int[][] state){
    int actualI = 0, actualJ = 0,
    len = state.length,
    desiredI = (num - 1) / len,
    desiredJ = (num - 1) % len;
    for(int i = 0; i<len; i++){
    	for(int j = 0; j<len; j++){
     		if(state[i][j] == num){
    			actualI = i;
    			actualJ = j;
   		 	}
   		}
	 	}
   return Math.abs(actualI - desiredI) + Math.abs(desiredJ - actualJ);}




}
