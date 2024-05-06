import java.util.ArrayList;
import java.util.Scanner;

public class Stand {
    Scanner sc = new Scanner(System.in);

    private double receita;
    private double lucro;
    private ArrayList<Veiculo> arrayDeVeiculosGeral = new ArrayList<Veiculo>();

    public void adicionarVeiculos(Veiculo veiculo) {
        arrayDeVeiculosGeral.add(veiculo);
    };

    public void startMenuAdicionarVeiculos() {
        System.out.println(""); // Tinha que criar uma função pra cada subclasse para recolher as informações específicas, não tive tempo suficiente.
    }

    // public String escolherTipoAAdicionar() {

    // }

    public void listarVeiculos() {
        for (Veiculo veiculo : arrayDeVeiculosGeral) {
            System.out.println(veiculo);
        }
    }

    public Veiculo procurarVeiculo(int idAProcurar) {
        for (Veiculo veiculo : arrayDeVeiculosGeral) {
            if (veiculo.getId() == idAProcurar) {
                return veiculo;
            }
        }
        return null;
    }

    public void vender(int idVeiculo, double precoAVender) {
        Veiculo objVeiculo = procurarVeiculo(idVeiculo);

        if (objVeiculo != null) {
            arrayDeVeiculosGeral.remove(objVeiculo);
            lucro += precoAVender - objVeiculo.getPrecoBase();
            receita += precoAVender;
        } else {
            System.out.println("Nenhum veículo com este Id foi encontrado.");
        }
    }

    public void startMenuVender() {
        System.out.println("Digite o id do veículo que deseja vender > ");
        int idVeiculoParaVenda = sc.nextInt();

        System.out.println("Digite o preço de venda > ");
        double precoVenda = sc.nextDouble();

        vender(idVeiculoParaVenda, precoVenda);
    }

    public double getLucro() {
        return lucro;
    }

    public double getReceita() {
        return receita;
    }
}
