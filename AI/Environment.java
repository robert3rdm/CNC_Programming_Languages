
   public class Environment{

          List<Location> locations;
          List<Agent> agents;

          double getPerformanceMeasure(Agent forAgent);  // returns a value based on the state of the environment, larger is better.
          
          
          List<EnvironmentObject> getLocations()   // List of locations in the Environment, should this be a graph?
          
          
          List<Agent> getAgents()  // list of Agent, for now just one
          
          step() // updates the Environment

        }
