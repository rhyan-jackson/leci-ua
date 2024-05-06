package ex8_2;

public class PratoVegetariano extends Prato{

    public PratoVegetariano(String nome) {
        super(nome);
    }

    @Override
    public boolean add(Alimento ingrediente) {
        if (ingrediente instanceof AlimentoVegetariano) {
            return super.add(ingrediente);
        } else {
            return false;
        }
    }
    
}
