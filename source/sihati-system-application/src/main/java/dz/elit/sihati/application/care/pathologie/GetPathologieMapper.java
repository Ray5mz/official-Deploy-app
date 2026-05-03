package dz.elit.sihati.application.care.pathologie;

import dz.elit.sihati.domain.care.Pathologie;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface GetPathologieMapper {

    GetPathologieDtoResponse toDto(Pathologie entity);

    Pathologie toDomain(Pathologie entity);
}