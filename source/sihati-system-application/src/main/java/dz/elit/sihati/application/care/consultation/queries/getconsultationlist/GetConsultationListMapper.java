package dz.elit.sihati.application.care.consultation.queries.getconsultationlist;

import dz.elit.sihati.domain.care.Consultation;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;
@Mapper(componentModel = "spring")
public interface GetConsultationListMapper {
    @Mapping(source = "consultationNumber", target = "code")
    @Mapping(source = "diagnosis", target = "diagnostic")
    @Mapping(source = "consultationDate", target = "diagnosticDate")
    GetConsultationListDtoResponse consultationToGetconsultationListDto(Consultation consultation);

    List<GetConsultationListDtoResponse> consultationToGetconsultationListDto(List<Consultation> consultations);
}
