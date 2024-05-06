package ex8_1;
public class PesadoPassageiros extends Pesado {

    private double numeroDePassageiros;
    public PesadoPassageiros(String matricula, String marca, String modelo, int potencia, int numeroQuadro, double peso, int numeroDePassageiros) {
        super(matricula, marca, modelo, potencia, numeroQuadro, peso);

        this.numeroDePassageiros = numeroDePassageiros;

    }
    public double getNumeroDePassageiros() {
        return numeroDePassageiros;
    }
    public void setNumeroDePassageiros(double numeroDePassageiros) {
        this.numeroDePassageiros = numeroDePassageiros;
    }

    
}
