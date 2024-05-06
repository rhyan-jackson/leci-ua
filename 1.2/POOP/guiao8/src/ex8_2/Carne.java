package ex8_2;

public class Carne extends Alimento {
    

    public Ementa.VariedadeCarne variedade; 

    public Carne(Ementa.VariedadeCarne variedade, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.variedade = variedade;

    }

    @Override
    public String toString() {
        return this.getClass().getName() + " " + variedade + ", " + super.toString();
    }
    
}
