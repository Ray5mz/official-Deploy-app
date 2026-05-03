package dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain;

public interface UpdateRefCodeDomainUseCase {
    UpdateRefCodeDomainDtoResponse execute(UpdateRefCodeDomainDto refCodeUpdateDto,  String nomDomain);
}
