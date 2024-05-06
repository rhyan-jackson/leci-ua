package ex8_1;
public class AutomovelLigeiro extends VeiculoMotorizado{

    private int numeroQuadro;
    private int capacidadeBagageira;

    public AutomovelLigeiro(String matricula, String marca, String modelo, int potencia, int numeroQuadro, int capacidadeBagageira) {
        super(matricula, marca, modelo, potencia);

        this.numeroQuadro = numeroQuadro;
        this.capacidadeBagageira = capacidadeBagageira;



    }

    public int getNumeroQuadro() {
        return numeroQuadro;
    }

    public void setNumeroQuadro(int numeroQuadro) {
        this.numeroQuadro = numeroQuadro;
    }

    public int getCapacidadeBagageira() {
        return capacidadeBagageira;
    }

    public void setCapacidadeBagageira(int capacidadeBagageira) {
        this.capacidadeBagageira = capacidadeBagageira;
    }

    

}