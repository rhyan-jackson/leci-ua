package ex8_1;
abstract class Pesado extends VeiculoMotorizado{

    private int numeroQuadro;
    private double peso;

    public Pesado(String matricula, String marca, String modelo, int potencia, int numeroQuadro, double peso) {
        super(matricula, marca, modelo, potencia);

        this.numeroQuadro = numeroQuadro;
        this.peso = peso;
        
    }

    public int getNumeroQuadro() {
        return numeroQuadro;
    }

    public void setNumeroQuadro(int numeroQuadro) {
        this.numeroQuadro = numeroQuadro;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    
}
