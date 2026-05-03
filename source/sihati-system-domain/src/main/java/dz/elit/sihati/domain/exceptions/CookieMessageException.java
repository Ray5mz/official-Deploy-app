package dz.elit.sihati.domain.exceptions;

public class CookieMessageException extends RuntimeException {

    public CookieMessageException() {
        super();
    }

    public CookieMessageException(String message) {
        super(message);
    }

    public CookieMessageException(String message, Throwable cause) {
        super(message, cause);
    }

    public CookieMessageException(Throwable cause) {
        super(cause);
    }

    protected CookieMessageException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
