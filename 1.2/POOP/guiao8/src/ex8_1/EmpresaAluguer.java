package ex8_1;
import java.util.ArrayList;

public class EmpresaAluguer {
    private String nome;
    private String codigoPostal;
    private String email;
    private ArrayList<VeiculoMotorizado> arrayViaturas = new ArrayList<VeiculoMotorizado>();

    public EmpresaAluguer(String nome, String codigoPostal, String email) {
        this.nome = nome;
        this.codigoPostal = codigoPostal;
        this.email = codigoPostal;
    }

    public void inserir(VeiculoMotorizado viatura) {
        arrayViaturas.add(viatura);
    }

    public VeiculoMotorizado buscarViaturaQueMaisRodou() {
        if (arrayViaturas.isEmpty()) {
            return null;
        }

        VeiculoMotorizado viaturaQueMaisRodou = arrayViaturas.get(0);

        for (VeiculoMotorizado viatura : arrayViaturas) {
            if (viaturaQueMaisRodou.distanciaTotal() <  viatura.distanciaTotal()) {
                viaturaQueMaisRodou = viatura;
            }
        }

        return viaturaQueMaisRodou;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(String codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public ArrayList<VeiculoMotorizado> getArrayViaturas() {
        return arrayViaturas;
    }

    public void setArrayViaturas(ArrayList<VeiculoMotorizado> arrayViaturas) {
        this.arrayViaturas = arrayViaturas;
    }

    


}
