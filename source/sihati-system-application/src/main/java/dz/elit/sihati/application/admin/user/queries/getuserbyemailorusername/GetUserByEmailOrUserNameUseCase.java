package dz.elit.sihati.application.admin.user.queries.getuserbyemailorusername;


public interface GetUserByEmailOrUserNameUseCase {
    GetUserByEmailOrUserNameDtoResponse execute(String email);
}
