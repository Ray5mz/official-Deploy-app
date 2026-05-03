package dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain;

import dz.elit.sihati.domain.reference.RefCodeDomain;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;

@Mapper(componentModel = "spring")
public interface UpdateRefCodeDomainMapper {

    void refCodeDomainUpdateDtoToRefCodeDomain(UpdateRefCodeDomainDto updateRefCodeDomainDto, @MappingTarget RefCodeDomain refCodeDomain);

    UpdateRefCodeDomainDtoResponse refCodeDomainToUpdateRefCodeDomainDtoResponse(RefCodeDomain refCodeDomain);
}
