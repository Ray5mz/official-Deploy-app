package dz.elit.sihati.application.care.consultation.queries.getConsultationByPatientCode;

import dz.elit.sihati.domain.care.Consultation;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetConsultationByPatientMapper {

    @Mapping(source = "patient.code", target = "patientCode")
    GetConsultationByPatientDtoResponse consultationToDto(Consultation consultation);

    List<GetConsultationByPatientDtoResponse> consultationsToDtos(List<Consultation> consultations);

}