package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;


import dz.elit.sihati.domain.admin.User;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GetUserByEmailOrUserNameService implements GetUserByEmailOrUserNameUseCase {
    private final GetUserByEmailOrUserNameLoad getUserByEmailLoad;
    private final GetUserByEmailOrUserNameMapper getUserByEmailMapper;
    public GetUserByEmailOrUserNameDtoResponse execute(String login) {



        User user = getUserByEmailLoad.findUserByEmailOrUsername(login).orElseThrow(()-> new ResourceNotFoundException(String.format("user with login : %s is not Exist",login)));

            return getUserByEmailMapper.userToGetUserByEmailDtoResponse(user);

    }
}
