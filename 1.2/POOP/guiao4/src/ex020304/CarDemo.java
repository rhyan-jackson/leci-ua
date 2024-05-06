package ex020304;
import java.util.Arrays;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        kms += distance;
    }

}

public class CarDemo {

    static Scanner sc = new Scanner(System.in);

    private static boolean compareStringWithRegex(String pattern, String... strings) {
        Pattern patternObj = Pattern.compile(pattern);

        for (String string : strings) {
            Matcher matcher = patternObj.matcher(string);
            if (!matcher.find()) {
                return false;
            }
        }
        return true;
    }

    private static boolean validInput(String strInput) {
        return compareStringWithRegex("^(\\S+\\s){2,}\\d{4}\\s\\d+$", strInput);

    }

    private static String[] splitRegInput(String strInput) {
        return strInput.split(" ");

    } 

    static int registerCars(Car[] cars) { 
        // TODO: pede dados dos carros ao utilizador e acrescenta ao vetor
        // registo de carros termina quando o utilizador inserir uma linha vazia 
        // devolve número de carros registados
        int registered = 0;
        while (registered < cars.length) {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            String input = sc.nextLine();

            if (validInput(input)) {
                String[] splittedInfos = splitRegInput(input);
                String model = String.join(" ", Arrays.copyOfRange(splittedInfos, 1, splittedInfos.length - 2));
                int year = Integer.parseInt(splittedInfos[splittedInfos.length - 2]);
                int kms = Integer.parseInt(splittedInfos[splittedInfos.length - 1]);

                cars[registered] = new Car(splittedInfos[0], model, year, kms);
                registered++;
            } else {
                if (input.equals("")) {break;}
                System.out.println("Insert an valid Input.");
            }
        }
        return registered;
   }

    static void registerTrips(Car[] cars, int numCars) {
        // TODO: pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia 

        while(true) {
            System.out.print("Registe uma viagem no formato \"carro(id):distância\": ");
            String input = sc.nextLine();

            if (input.equals("")) {break;}

            if (compareStringWithRegex("^0*\\d+:\\d+$", input)) {
                String[] insertArray = input.split(":");
                int carPos = Integer.parseInt(insertArray[0]);
                int kmToDrive = Integer.parseInt(insertArray[1]);

                if (carPos < numCars) {
                    cars[carPos].drive(kmToDrive);
                    System.out.printf("Car %d drived %d km\'s.%n", carPos, kmToDrive);
                } else {
                    System.out.println("Insert an valid ID.");
                }
            } else {
                System.out.println("Insert something valid. Model: < carro(id):distância >");
            }
        }
    }


    static void listCars(Car[] cars, int numCars) {
        for (int i = 0; i < numCars; i++) {
            Car car = cars[i];
            System.out.printf("[%d] > %s %s, %d, kms: %d%n", i, car.make, car.model, car.year, car.kms);
        }
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];
        // Car[] cars = {new Car("marca1", "marca2 marca3 marca4", 2020, 0), new Car("arca1", "marca4", 1020, 0)};
        int numCars = registerCars(cars);

        if (numCars > 0) {
            listCars(cars, numCars);
            registerTrips(cars, numCars);
            listCars(cars, numCars);
        }

    }

}