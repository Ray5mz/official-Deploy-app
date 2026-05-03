package dz.elit.sihati.application.admin.user.queries.getuserbycode;

import dz.elit.sihati.domain.admin.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class GetUserByCodeService implements GetUserByCodeUseCase {

    private final GetUserByCodeLoad getUserByCodeLoad;
    private final GetUserByCodeMapper getUserByCodeMapper;

    @Override
    public GetUserByCodeDtoResponse execute(String code) {
        Optional<User> userOpt = getUserByCodeLoad.findOneByCode(code);
        return userOpt.map(getUserByCodeMapper::userToGetUserByCodeDtoResponse).orElse(null);
    }
}