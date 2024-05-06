package ex8_3;

abstract class Produto implements ProdutoInterface {
    private String nome;
    private int quantidadeEmEstoque;
    private double preco;

    Produto(String nome, int quantidadeEmEstoque, double preco) {
        this.nome = nome;
        this.quantidadeEmEstoque = quantidadeEmEstoque;
        this.preco = preco;
    }

    public void adicionarQuantidade(int quantidade) {
        quantidadeEmEstoque += quantidade;
        
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public int getQuantidade() {
        return quantidadeEmEstoque;
    }

    public void removerQuantidade(int quantidade) {
        quantidadeEmEstoque = Math.max(0, quantidadeEmEstoque);

    }

    public double getPrecoTotalProdutos() {
        return (double) preco * quantidadeEmEstoque;
    }

    @Override
    public String toString() {
        return String.format("%-10s %3d %6.2f %6.2f", nome, quantidadeEmEstoque, preco, this.getPrecoTotalProdutos());
    }

}
