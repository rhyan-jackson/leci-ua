import java.util.Scanner;


public class VeiculoComercial extends Veiculo {
    Scanner sc = new Scanner(System.in);

    String formato;
    double capacidadeDeCarga;
    String unidadeDeCarga;

    public VeiculoComercial(String marca, String modelo, double precoBase, String formato, double capacidadeDeCarga, String unidadeDeCarga) {
        super(marca, modelo, precoBase);

        //TODO: Fazer verificações dos inputs.

        this.formato = formato;
        this.capacidadeDeCarga = capacidadeDeCarga;
        this.unidadeDeCarga = unidadeDeCarga;
    }

    @Override
    public String lerInformacoesEspecificas() {
        //TODO: Fazer leitura de info's específicas.
        return null;
    }

    @Override
    public String getTipo() {
        return "Comercial";
    }

    @Override
    public int hashCode() {
        return this.getId() * 100 + getTipo().length() * 10 + getClass().hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return this.hashCode() == obj.hashCode();
    }

    @Override
    public String toString() {
        String parteGeral = String.format("Id: %d;%nMarca: %s;%nModelo: %s;%nPreço Base: %.2f;%n",this.getId(), this.getMarca(), this.getModelo(), this.getPrecoBase());
        String parteEspecifica = String.format("Formato: %s;%nCapacidade Carga: %.2f;%nUnidade Carga: %s;%n", formato, capacidadeDeCarga, unidadeDeCarga);

        return parteGeral + parteEspecifica;
    }
}