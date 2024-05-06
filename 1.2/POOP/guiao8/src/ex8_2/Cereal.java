package ex8_2;

public class Cereal extends AlimentoVegetariano {

    String nome;

    public Cereal(String nome, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);

        this.nome = nome;
    }

    @Override
    public String toString() {
        return this.getClass().getName() + " " + nome + ", " + super.toString();
    }
}
