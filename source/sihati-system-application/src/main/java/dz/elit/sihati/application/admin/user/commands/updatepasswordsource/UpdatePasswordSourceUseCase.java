package dz.elit.sihati.application.admin.user.commands.updatepasswordsource;

public interface UpdatePasswordSourceUseCase {
    void execute(String code, String passwordSourceCode);
}