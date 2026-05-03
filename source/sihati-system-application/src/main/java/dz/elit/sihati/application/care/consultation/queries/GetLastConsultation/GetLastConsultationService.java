package dz.elit.sihati.application.care.consultation.queries.GetLastConsultation;

import dz.elit.sihati.domain.care.Consultation;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class GetLastConsultationService implements GetLastConsultationUseCase {

    private final GetLastConsultationLoad load;
    private final GetLastConsultationMapper mapper;

    @Override
    public GetLastConsultationDtoResponse execute(String patientCode) {
        Consultation consultation = load.findLastByPatientCode(patientCode)
                .orElseThrow(() -> new ResourceNotFoundException(
                        "No consultation found for patient with code: " + patientCode));

        GetLastConsultationDtoResponse dto = mapper.toDto(consultation);
        dto.setTimeSince(calculateTimeSince(consultation.getConsultationDate()));
        return dto;
    }

    private String calculateTimeSince(LocalDateTime consultationDate) {
        LocalDateTime now = LocalDateTime.now();
        Duration duration = Duration.between(consultationDate, now);

        long days = duration.toDays();
        if (days > 0) {
            return days + " day" + (days > 1 ? "s" : "") + " ago";
        }

        long hours = duration.toHours();
        if (hours > 0) {
            return hours + " hour" + (hours > 1 ? "s" : "") + " ago";
        }

        long minutes = duration.toMinutes();
        if (minutes > 0) {
            return minutes + " minute" + (minutes > 1 ? "s" : "") + " ago";
        }

        return "Just now";
    }
}
