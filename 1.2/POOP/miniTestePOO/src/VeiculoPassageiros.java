import java.util.Scanner;


public class VeiculoPassageiros extends Veiculo {
    Scanner sc = new Scanner(System.in);
    int maxPassageiros;
    String tipoCombustivel;
    double potencia;

    public VeiculoPassageiros(String marca, String modelo, double precoBase, int maxPassageiros, String tipoCombustivel, double potencia) {
        super(marca, modelo, precoBase);

        //TODO: Fazer verificações dos inputs.

        this.maxPassageiros = maxPassageiros;
        this.tipoCombustivel = tipoCombustivel;
        this.potencia = potencia;
    }

    @Override
    public String lerInformacoesEspecificas() {
        //TODO: Fazer leitura de info's específicas.
        return null;
    }

    @Override
    public String getTipo() {
        return "Passageiros";
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
        String parteEspecifica = String.format("Max. passageiros: %d;%nTipo Comb.: %s;%nPotencia: %.2f;%n", maxPassageiros, tipoCombustivel, potencia);

        return parteGeral + parteEspecifica;
    }
}
