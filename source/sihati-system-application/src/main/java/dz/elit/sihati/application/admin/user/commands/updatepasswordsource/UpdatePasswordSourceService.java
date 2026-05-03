package dz.elit.sihati.application.admin.user.commands.updatepasswordsource;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UpdatePasswordSourceService implements UpdatePasswordSourceUseCase {

    private final UpdatePasswordSourceLoad updatePasswordSourceLoad;

    @Override
    public void execute(String code, String passwordSourceCode) {
        updatePasswordSourceLoad.updatePasswordSource(code, passwordSourceCode);
    }
}