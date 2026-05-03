package dz.elit.sihati.web.admin.user;

import dz.elit.sihati.application.admin.user.commands.updatepasswordsource.UpdatePasswordSourceUseCase;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import dz.elit.sihati.application.admin.user.queries.getuserbycode.GetUserByCodeDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuserbycode.GetUserByCodeUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.web.commons.controller.BaseController;
import lombok.RequiredArgsConstructor;

import java.security.Principal;

@WebAdapter
@RequiredArgsConstructor
class UserController extends BaseController implements UserResource {

    private final GetUserUseCase getUserUseCase;
    private final GetUserByCodeUseCase getUserByCodeUseCase;
    private final UpdatePasswordSourceUseCase updatePasswordSourceUseCase;

    @Override
    public GetUserDtoResponse getUser(String userName) {
        return getUserUseCase.execute(userName);
    }

    @Override
    public GetUserDtoResponse connectedUser(Principal principal) {
        return getUser(principal.getName());
    }

    @Override
    public GetUserByCodeDtoResponse getUserByCode(String code) {
        return getUserByCodeUseCase.execute(code);
    }

    @Override
    public void updatePasswordSource(String code, String passwordSourceCode) {
        updatePasswordSourceUseCase.execute(code, passwordSourceCode);
    }
}