// Node class for Sliding puzzel
package sliding;


public class Node{
	int depth;
	Node parent;
	int[][] state;
	int h;
  int f;
	int zeroX;
	int zeroY;

	////////////////////////////Node Object//////////////////////
///////////////////////////Constructors///////////////////////////
	public Node(int[][] state, Node parent){
		this.state = state;
		this.parent = parent;
		findZero();
		h = h(this);
		depth = parent.getDepth() +1;
		f = h + depth;
	}

	public Node(int[][] state){
		this.state = state;
		this.parent = null;
		findZero();
		h = h(this);
		depth = 0;
		f = h + depth;

	}
	/////////////////////Node Functions/////////////////////////////

	public Node getParent(){
		
		return parent;
	}
	
	public int[][] getState(){

		return state;
	}

	public int getDepth(){
		
		return depth;
	}
	public void findZero(){
		for(int i = 0; i<state.length; i++){
			for(int j = 0; j<state.length; j++){
			if(state[i][j] == 0){
				zeroX = i;
				zeroY = j;
				return;
			}
		}
		}
	}

	public int getZeroX(){
		return zeroX;
	}

	public int getZeroY(){
		return zeroY;
	}

	int getH(){
		return h;
	}

	int getF(){
		return f;
	}

	public String toString(){
		StringBuilder temp = new StringBuilder();
		for(int[] a : state)
				temp.append(nr2s(a) + "\n");
		return temp.toString() + "\n";
	}
		
  String nr2s(int[] r){
		StringBuilder temp = new StringBuilder();
		for( int i : r)
			temp.append(i + ",");
		return temp.toString();
	}

////////////////////////////////begin static functions////////////////
	public static int h(Node N){
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
		return Math.abs(actualI - desiredI) + Math.abs(desiredJ - actualJ);
	}


public static void main(String[] args){
	System.out.println(h(new Node(
			      new int[][]{new int[]{1,2,3}, new int[]{4,5,6}, new int[]{7,8,0}})));
}
}

