package dz.elit.sihati.application.care.consultation.queries.getconsultation;

import dz.elit.sihati.domain.care.Consultation;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface GetConsultationMapper {




    GetConsultationDtoResponse consultationToGetconsultationDto(Consultation consultation);
    }




