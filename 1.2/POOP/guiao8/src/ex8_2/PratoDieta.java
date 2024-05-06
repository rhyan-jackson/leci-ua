package ex8_2;

public class PratoDieta extends Prato {

    double maximoCalorias;
    double caloriasAtuais;


    public PratoDieta(String nome, double maximoCalorias) {
        super(nome);
        this.maximoCalorias = maximoCalorias;
        this.caloriasAtuais = 0;

    }

    @Override
    public boolean add(Alimento ingrediente) {
        if (isPermitidoAdicionar(ingrediente)) {
            return super.add(ingrediente);
        } else {
            return false;
        }
    }

    private boolean isPermitidoAdicionar(Alimento ingrediente) {
        return (caloriasAtuais + ingrediente.calorias > maximoCalorias);
    }
}
