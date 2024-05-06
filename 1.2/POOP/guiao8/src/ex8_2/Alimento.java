package ex8_2;

abstract class Alimento {
    protected double proteinas;
    protected double calorias;
    protected double peso;

    public Alimento(double proteinas, double calorias, double peso) {
        this.proteinas = proteinas;
        this.calorias = calorias;
        this.peso = peso;
    }

    @Override
    public String toString() {
        return "Proteinas " + proteinas + " calorias, " + calorias + ", Peso " + peso;
    }
}
