package dz.elit.sihati.domain.exceptions;

public class WrongFormatException extends RuntimeException {

    public WrongFormatException() {
        super();
    }

    public WrongFormatException(String message, Throwable cause) {
        super(message, cause);
    }

    public WrongFormatException(String message) {
        super(message);
    }

    public WrongFormatException(Throwable cause) {
        super(cause);
    }
}
