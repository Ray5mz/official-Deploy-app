package dz.elit.sihati.application.reference.wilaya.queries.getwilaya;

import dz.elit.sihati.domain.reference.Wilaya;
import org.mapstruct.Mapper;


@Mapper(componentModel = "spring")
public interface GetWilayaMapper {

    GetWilayaDtoResponse wilayaToWilayaDto(Wilaya wilaya);
}
