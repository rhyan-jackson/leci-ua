package ex3;

public class EnergyReportFileNotExistsException extends Exception {
    public EnergyReportFileNotExistsException(String errorMessage) {
        super(errorMessage);
    }
}
