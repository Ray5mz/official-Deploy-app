package dz.elit.sihati.application.care.consultation.queries.getconsultation;

import dz.elit.sihati.domain.care.Consultation;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GetConsultationService implements GetConsultationUseCase {

    private final GetConsultationLoad load;
    private final GetConsultationMapper consultationMapper;

    @Override
    public GetConsultationDtoResponse execute(String consultationNumber) {

        Consultation consultation = load.get(consultationNumber);

        return consultationMapper
                .consultationToGetconsultationDto(consultation);
    }
}