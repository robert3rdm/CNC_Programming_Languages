// Node class for Sliding puzzel
package hsliding;


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
		Heuristics heuristic = new Heuristics();
		h = heuristic.hAstar(this);
		depth = parent.getDepth() +1;
		f = h + depth;
	}

	public Node(int[][] state){
		this.state = state;
		this.parent = null;
		findZero();
		Heuristics heuristic = new Heuristics();
		h = heuristic.hAstar(this);
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
}
////////////////////////////////begin static functions////////////////

/*public static void main(String[] args){
	System.out.println(h(new Node(
			      new int[][]{new int[]{1,2,3}, new int[]{4,5,6}, new int[]{7,8,0}})));
}
}
*/
