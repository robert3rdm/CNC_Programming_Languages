// Simple Reflex agent

public class reflexAgent{

	public static void main(String[] args) {
		int roomCount = Integer.parseInt(args[0]);
		int i = 1;
		Environment[] rooms = new Environment[roomCount];	
		
		for (i=0; i< roomCount; i++){
			String roomNum = Integer.toString(i+1);
			rooms[i] = new Environment("Room #: " + roomNum);
			System.out.println("Created Room " + rooms[i].name + " state is " + rooms[i].getClean());
		}
		
  	for (i=1; i<=roomCount; i++){
			System.out.println("\n" + rooms[i-1].name + "\n" + rooms[i-1].getClean());
		if (rooms[i-1].getClean() == false){
			System.out.println("Dirty room detected! Cleaning" + ". Room is now clean?");
			rooms[i-1].setClean(true);
			System.out.println(rooms[i-1].getClean());
		}
		else{
			System.out.println("Room is clean moving to next room.");	
		}

		}	
	}
}


