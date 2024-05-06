package ex8_1;
public class PesadoPassageirosEletrico extends PesadoPassageiros implements VeiculoEletrico {
    private int autonomia = 0;
    PesadoPassageirosEletrico(String matricula, String marca, String modelo, int potencia, int numeroQuadro, double peso, int numeroDePassageiros) {
        super(matricula, marca, modelo, potencia, numeroQuadro, peso, numeroDePassageiros);
    }

    @Override
    public int autonomia() {
        return autonomia;
    }

    @Override
    public void carregar(int percentagem) {
        autonomia = Math.min(percentagem + autonomia, 100);
    }

    
}
