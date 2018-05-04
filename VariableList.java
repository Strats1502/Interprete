import java.util.List;
import java.util.ArrayList;

public class VariableList {
    private List<Variable> variables;

    public VariableList() {
        this.variables = new ArrayList<>();
    }

    public void addVariable(Variable variable) {
        String name = variable.getName();
        if(exists(name)) {
            Variable variableThatExists = getVariable(name);
            variableThatExists.setValue(variable.getValue());
        } else {
            variables.add(variable);
        }
    }

    public boolean exists(String name) {
        for(Variable variable : this.variables) {
            if (variable.getName().equals(name)) {
                return true;
            }
        }
        return false;
    }

    public Variable getVariable(String name) {
        for(Variable variable : variables) {
            if (variable.getName().equals(name)) {
                return variable;
            }
        }
        return null;
    }

}