package ex8_1;
abstract class VeiculoMotorizado implements KmPercorridosInterface{
    private String matricula;
    private String marca;
    private String modelo;

    private int potencia;
    private int distanciaTotalPercorrida;
    private int distanciaDoUltimoTrajeto;


    public VeiculoMotorizado(String matricula, String marca, String modelo, int potencia) {
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;

    }

    public void trajeto(int quilometros) {
        distanciaTotalPercorrida += quilometros;
        distanciaDoUltimoTrajeto = quilometros;
    };

    public int ultimoTrajeto() {
        return distanciaDoUltimoTrajeto;
    };

    public int distanciaTotal() {
        return distanciaTotalPercorrida;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getPotencia() {
        return potencia;
    }

    public void setPotencia(int potencia) {
        this.potencia = potencia;
    }

    public int getDistanciaTotalPercorrida() {
        return distanciaTotalPercorrida;
    }

    public void setDistanciaTotalPercorrida(int distanciaTotalPercorrida) {
        this.distanciaTotalPercorrida = distanciaTotalPercorrida;
    }

    public int getDistanciaDoUltimoTrajeto() {
        return distanciaDoUltimoTrajeto;
    }

    public void setDistanciaDoUltimoTrajeto(int distanciaDoUltimoTrajeto) {
        this.distanciaDoUltimoTrajeto = distanciaDoUltimoTrajeto;
    };

    
}
