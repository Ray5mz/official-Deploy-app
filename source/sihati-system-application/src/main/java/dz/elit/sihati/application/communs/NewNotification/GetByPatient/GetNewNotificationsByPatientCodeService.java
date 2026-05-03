package dz.elit.sihati.application.communs.NewNotification.GetByPatient;

import dz.elit.sihati.domain.communication.NewNotification;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetNewNotificationsByPatientCodeService implements GetNewNotificationsByPatientCodeUseCase {

    private final GetNewNotificationsByPatientCodeLoad load;
    private final GetNewNotificationsByPatientCodeMapper mapper;

    @Override
    public List<GetNewNotificationsByPatientCodeDtoResponse> execute(String patientCode) {
        List<NewNotification> notifications = load.findNotificationsByPatientCode(patientCode);
        return mapper.toDtoList(notifications);
    }
}
