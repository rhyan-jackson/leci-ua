package ex020304;
import java.util.ArrayList;

class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int  getQuantity() {
        return quantity;
    }
}


class CashRegister {

    ArrayList<Product> productsArray = new ArrayList<>();

    public void addProduct(Product productObj) {
        productsArray.add(productObj);
    }

    @Override
    public String toString() {
        String strFinal = String.format("Product        Price   Quantity    Total%n");
        double totalSum = 0;
        for (int i = 0; i < productsArray.size(); i++) {
            Product productObj = productsArray.get(i);
            String name = productObj.getName();
            Double price = productObj.getPrice();
            int quantity = productObj.getQuantity();
            double total = productObj.getTotalValue();
            totalSum += total;
            strFinal += String.format("%-14s %5.2f %10d %8.2f%n", name, price, quantity, total);
        }

        strFinal += String.format("%nTotal: %.2f", totalSum);

        return strFinal;
    }

}

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        // DONE: Listar o conteúdo e valor total
        System.out.println(cr);

    }
}