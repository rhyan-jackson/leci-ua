package ex8_2;

import java.util.ArrayList;

public class Ementa {
    enum VariedadeCarne {
        VACA,
        PORCO,
        PERU,
        FRANGO,
        OUTRA
    }

    enum TipoPeixe {
        CONGELADO,
        FRESCO
    }

    enum DiaSemana {
        SEGUNDA,
        TERCA,
        QUARTA,
        QUINTA,
        SEXTA
    }

    String nome;
    String local;
    ArrayList<Prato> colecaoPratos = new ArrayList<>();

    public Ementa(String nome, String local) {
        this.nome = nome;
        this.local = local;
        
    }

    public void add(Prato prato, DiaSemana dia) {
        colecaoPratos.add(prato);
    }


}
