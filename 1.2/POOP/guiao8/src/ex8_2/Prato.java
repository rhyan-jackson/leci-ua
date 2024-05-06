package ex8_2;

import java.util.ArrayList;

public class Prato {
    public String nome;
    private ArrayList<Alimento> composicao = new ArrayList<>(); 
    
    public Prato(String nome) {
        this.nome = nome;
    }

    public boolean add(Alimento ingrediente) {
        composicao.add(ingrediente);
        return true;
    }

    @Override
    public String toString() {
        return "Prato " +  "'" + nome + "'" + ", composto por " + composicao.size() + " Ingredientes";
    }
}
