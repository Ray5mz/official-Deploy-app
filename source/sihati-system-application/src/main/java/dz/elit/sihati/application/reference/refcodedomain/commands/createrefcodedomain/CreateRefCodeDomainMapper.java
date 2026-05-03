package dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain;


import dz.elit.sihati.domain.reference.RefCodeDomain;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CreateRefCodeDomainMapper {


    RefCodeDomain createRefCodeDomainDtoToRefCodeDomain(CreateRefCodeDomainDto createRefCodeDomainDto);


     CreateRefCodeDomainDtoResponse createRefCodeDomainDtosToRefCodeDomain(RefCodeDomain refCode);
}
