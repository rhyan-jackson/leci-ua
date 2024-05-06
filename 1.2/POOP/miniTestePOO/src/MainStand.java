import java.util.Scanner;

// Rhyan Matos - 120495

public class MainStand {
    public static void main(String[] args) throws Exception {
        Scanner sc = new Scanner(System.in);
        Stand stand = new Stand(); // O parâmetro inteiro que era fornecido ao construtor anteriormente foi removido (utilizei uma ArrayList).
        int opcao = 0;

        // TESTES
        Motorizada motorizada = new Motorizada("aaaaa", "aaaa", 1000, 2, 100);
        VeiculoPassageiros passageiros = new VeiculoPassageiros("bbbbbb", "sdssadfa", 6000, 0, "gasolina", 100);

        stand.adicionarVeiculos(passageiros);
        stand.adicionarVeiculos(motorizada);

        do {
            System.out.println("\nMenu:");
            System.out.println("1. Adicionar um veiculo");
            System.out.println("2. Listar veiculos");
            System.out.println("3. Vender um veiculo");
            System.out.println("4. Calcular o lucro total");
            System.out.println("5. Sair");
            System.out.print("Opçao: ");
            opcao = sc.nextInt();
            switch (opcao) {
                case 1:
                    System.out.println("\n1. Adicionar um veiculo do tipo");
                    System.out.println("1. Passageiros");
                    System.out.println("2. Comercial");
                    System.out.println("3. Motorizada");
                    System.out.print("Tipo de produto: ");
                    int opcaoVeiculo = sc.nextInt();
                    sc.nextLine();
                    switch (opcaoVeiculo) {
                        case 1:
                            stand.startMenuAdicionarVeiculos();
                            break;
                        case 2:
                            stand.startMenuAdicionarVeiculos();
                            break;
                        case 3:
                            stand.startMenuAdicionarVeiculos();
                            break;
                    }
                    break;
                case 2:
                    stand.listarVeiculos();
                    break;
                case 3:
                    stand.startMenuVender();
                    break;
                case 4:
                    System.out.println("Lucro total: " + stand.getLucro());
                    break;
                case 5:
                    System.out.println("5. Sair");
                    sc.close();
                    break;
            }
        } while (opcao != 5);
    }
}
