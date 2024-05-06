package ex8_1;
public class Main {
    public static void main(String[] args) {
        EmpresaAluguer empresaAluguer = new EmpresaAluguer("Aluguer", "323231", "email@email.com");

        Taxi taxi1 = new Taxi("12312", "Marca1", "sasdasd",233, 2333, 22, 231);
        Motociclo moto1 = new Motociclo(null, null, null, 0, "desportivo");

        moto1.trajeto(200);
        taxi1.trajeto(140);

        empresaAluguer.inserir(taxi1);
        empresaAluguer.inserir(moto1);

        System.out.println(empresaAluguer.buscarViaturaQueMaisRodou());
        
    }
}
