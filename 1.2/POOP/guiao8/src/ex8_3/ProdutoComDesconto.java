package ex8_3;

public class ProdutoComDesconto extends ProdutoGenerico {
    
    private double descontoPercentagem;

    public ProdutoComDesconto(String nome, int quantidadeEmEstoque, double preco, double descontoPercentagem) {
        super(nome, quantidadeEmEstoque, preco);
        Math.clamp(descontoPercentagem, 0, 100);

        this.descontoPercentagem = descontoPercentagem;

    }

    public double getDescontoPercentagem() {
        return descontoPercentagem;
    }
     
}