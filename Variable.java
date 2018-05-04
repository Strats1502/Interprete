public class Variable<T> {
    private int type;
    private String name;
    private T value;

    public Variable(int type, String name, T value) {
        this.type = type;
        this.name = name;
        this.value = value;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setValue(T value) {
        this.value = value;
    }

    public int getType() {
        return this.type;
    }

    public String getName() {
        return this.name;
    }

    public T getValue() {
        return this.value;
    }
}