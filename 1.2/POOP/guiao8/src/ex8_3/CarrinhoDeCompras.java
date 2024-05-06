package ex8_3;

import java.util.ArrayList;

public class CarrinhoDeCompras implements Compra {

    private ArrayList<Produto> carrinhoDeComprasArrayList = new ArrayList<Produto>();

    @Override
    public void adicionarProduto(Produto produto, int quantidade) {
        produto.adicionarQuantidade(quantidade);
        carrinhoDeComprasArrayList.add(produto);
        
    }

    @Override
    public double getTotal() {
        return carrinhoDeComprasArrayList.stream().reduce((double) 0, (somaParcial, produto) -> somaParcial + produto.getPrecoTotalProdutos(), Double::sum);

    }

    @Override
    public void listarProdutos() {
        for (Produto produto : carrinhoDeComprasArrayList) {
            System.out.println(produto);
        }
        
    }

    
}
