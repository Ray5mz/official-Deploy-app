package dz.elit.sihati.web.commons.enums.mapper;

import dz.elit.sihati.domain.admin.StructureType;
import dz.elit.sihati.web.commons.enums.dto.EnumDto;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface EnumsMapper {

    default EnumDto structureTypeToEnumDto(StructureType structureType) {
        return EnumDto.builder()
                .value(structureType.name())
                .viewValue(structureType.getValue())
                .build();
    }

    List<EnumDto> structureTypeToEnumDto(StructureType[] structureTypes);
}

