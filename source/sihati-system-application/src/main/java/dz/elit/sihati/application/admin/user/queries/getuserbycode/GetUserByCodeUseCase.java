package dz.elit.sihati.application.admin.user.queries.getuserbycode;

public interface GetUserByCodeUseCase {
    GetUserByCodeDtoResponse execute(String code);
}