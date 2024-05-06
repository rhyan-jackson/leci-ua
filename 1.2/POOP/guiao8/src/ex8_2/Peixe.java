package ex8_2;

public class Peixe extends Alimento{
    Ementa.TipoPeixe tipo;

    public Peixe(Ementa.TipoPeixe tipo, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);

        this.tipo = tipo;

    }

    @Override
    public String toString() {
        return this.getClass().getName() + " " + tipo + ", " + super.toString();
    }
}
