package dz.elit.sihati.application.reference.refcode.command.updaterefcode;

public interface UpdateRefCodeUseCase {
    UpdateRefCodeDtoResponse execute(UpdateRefCodeDto refCodeUpdateDto, String code, String nomDomain);
}
