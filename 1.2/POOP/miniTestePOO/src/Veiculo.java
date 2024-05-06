abstract class Veiculo {
    private static int contagemVeiculo = 0;
    private String marca;
    private String modelo;
    private double precoBase;
    private int id;
    
    protected Veiculo(String marca, String modelo, double precoBase) {
        contagemVeiculo += 1;
        id = 100 + contagemVeiculo;

        //TODO: Fazer verificações dos inputs.
        this.marca = marca;
        this.modelo = modelo;
        this.precoBase = precoBase;
    }

    public abstract String getTipo();

    public abstract String lerInformacoesEspecificas();

    public abstract int hashCode();


    public int getId() {
        return id;
    }

    public String getMarca() {
        return marca;
    }

    public String getModelo() {
        return modelo;
    }

    public double getPrecoBase() {
        return precoBase;
    }
}
