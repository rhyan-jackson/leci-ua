package ex8_1;
public class Motociclo extends VeiculoMotorizado{

    private final String[] TIPOS_DE_MOTORIZADO = {"desportivo", "estrada"};
    private String tipo;

    public Motociclo(String matricula, String marca, String modelo, int potencia, String tipo) {
        super(matricula, marca, modelo, potencia);
        if (!isTipoCorreto(tipo)) throw new IllegalArgumentException("O tipo deve ser \"desportivo\" ou \"motorizado\".");
        
        this.tipo = tipo;
    }

    public boolean isTipoCorreto(String tipoInput) {
        for (String tipoIterado : TIPOS_DE_MOTORIZADO) {
            if (tipoIterado.contentEquals(tipoInput)) return true;
        }

        return false;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    
}