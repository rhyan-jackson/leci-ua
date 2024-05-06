package ex8_1;
public class Taxi extends AutomovelLigeiro{

    private int numeroLicenca;

    public Taxi(String matricula, String marca, String modelo, int potencia, int numeroQuadro, int capacidadeBagageira, int numeroLicenca) {
        super(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);

        this.numeroLicenca = numeroLicenca;

    }

    public int getNumeroLicenca() {
        return numeroLicenca;
    }

    public void setNumeroLicenca(int numeroLicenca) {
        this.numeroLicenca = numeroLicenca;
    }

    
}
