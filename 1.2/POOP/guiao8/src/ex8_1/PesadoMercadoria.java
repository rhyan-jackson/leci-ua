package ex8_1;
public class PesadoMercadoria extends Pesado{

    private double cargaMax;
    public PesadoMercadoria(String matricula, String marca, String modelo, int potencia, int numeroQuadro, double peso, double cargaMax) {
        super(matricula, marca, modelo, potencia, numeroQuadro, peso);

        this.cargaMax = cargaMax;

    }
    public double getCargaMax() {
        return cargaMax;
    }
    public void setCargaMax(double cargaMax) {
        this.cargaMax = cargaMax;
    }

    
}