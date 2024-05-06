import java.util.Scanner;


public class Motorizada extends Veiculo {
    Scanner sc = new Scanner(System.in);

    int numeroDeRodas;
    double velocidadeMaxPermitida;

    public Motorizada(String marca, String modelo, double precoBase, int numeroDeRodas, double velocidadeMaxPermitida) {
        super(marca, modelo, precoBase);

        //TODO: Fazer verificações dos inputs.

        this.numeroDeRodas = numeroDeRodas;
        this.velocidadeMaxPermitida = velocidadeMaxPermitida;

    }

    @Override
    public String lerInformacoesEspecificas() {
        //TODO: Fazer leitura de info's específicas.
        return null;
    }

    @Override
    public String getTipo() {
        return "Motorizada";
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
        String parteEspecifica = String.format("N° rodas: %d;%nVelocidade Max.: %.2f;%n", numeroDeRodas, velocidadeMaxPermitida);

        return parteGeral + parteEspecifica;
    }
}