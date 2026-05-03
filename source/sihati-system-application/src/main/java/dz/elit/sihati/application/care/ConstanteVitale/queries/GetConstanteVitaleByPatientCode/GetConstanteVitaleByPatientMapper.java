package dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode;

import dz.elit.sihati.domain.care.ConstanteVitale;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetConstanteVitaleByPatientMapper {

    List<GetConstanteVitaleByPatientDtoResponse> constanteVitaleToDtos(List<ConstanteVitale> constanteVitales);

}
