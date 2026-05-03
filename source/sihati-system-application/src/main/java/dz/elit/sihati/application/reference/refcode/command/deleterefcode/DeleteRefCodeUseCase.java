package dz.elit.sihati.application.reference.refcode.command.deleterefcode;


public interface DeleteRefCodeUseCase {

    long execute( String code, String nomDomain);
}
