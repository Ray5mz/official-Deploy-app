package dz.elit.sihati.application.care.consultation.queries.GetLastConsultation;

import dz.elit.sihati.domain.care.Consultation;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface GetLastConsultationMapper {

    @Mapping(source = "patient.code", target = "patientCode")
    GetLastConsultationDtoResponse toDto(Consultation consultation);
}