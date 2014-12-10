public class Environment {
	boolean isClean = false;
	String name;

	// This is the Constructor for the class Environement
public Environment(String name){
		this.name = name;
	}
	// Set the rooms cleanliness to clean or not
public void setClean(boolean clean) {
		isClean = clean;
	}

 // get whether the room is clean or not
public boolean getClean(){
		return this.isClean;
	}

// Getter for current environment name
public String name(){
		return this.name;
}
}
