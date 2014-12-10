// Main class for sliding puzzle

package sliding;

import java.util.PriorityQueue;
import java.util.Comparator;

public class SlideMain{

static PriorityQueue<Node> allNodes = new PriorityQueue<Node>(
		1000000,
		new Comparator<Node>(){
			public int compare(Node n1, Node n2){
				return n1.getF() - n2.getF();
			}
		});

	////////////auxilary functions////////////////

	static int[][] cp2d(int[][] tda){
		int[][] output = new int[tda.length][tda[0].length];
		for(int i = 0 ; i < tda.length; i++)
			for(int j = 0; j < tda[0].length; j ++)
					output[i][j] = tda[i][j];
		return output;
	}

	public static void solve(Node N){
		if(N.getH() == 0){
			printPath(N);
			return;
		}
		makeChildren(N);
		//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
	//	System.out.println(allNodes);
		solve(allNodes.poll());
	}

	public static void printPath(Node n){
		System.out.println(n);
		if(n.getParent() != null)
			printPath(n.getParent());
	}

	static void makeChildren(Node n){
		int x = n.getZeroX();
		int y = n.getZeroY();
		//System.out.println(x + "," + y);
		int[][] state = n.getState();
		int[][] temp;
		for(int k = -1; k <= 1; k += 2){
			if(x + k < state.length && x + k >= 0){
				temp = cp2d(state);
				temp[x][y] = temp[x + k][y];
				temp[x + k][y] = 0;
				allNodes.add(new Node(temp, n));
			}
			if(y + k < state.length && y + k >= 0){
		//		System.out.println("\n++++++++++++^$%^$%^&*^*^\n");
				temp = cp2d(state);
				temp[x][y] = temp[x][y + k];
				temp[x][y + k] = 0;
				allNodes.add(new Node(temp, n));
			//	System.out.println(allNodes);
			}
		}
	}


public static void main(String[] args){
	solve(new Node(
			new int[][]{new int[]{0,8,7}, new int[]{6,5,4}, new int[]{3,2,1}}));
	System.out.println(allNodes.size());

   }
 } 


