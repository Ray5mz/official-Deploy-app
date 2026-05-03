package dz.elit.sihati.web.NewNotification;

import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.CreateNewNotificationDto;
import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.CreateNewNotificationDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.CreateNewNotification.CreateNewNotificationUseCase;
import dz.elit.sihati.application.communs.NewNotification.GetByPatient.GetNewNotificationsByPatientCodeDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.GetByPatient.GetNewNotificationsByPatientCodeUseCase;
import dz.elit.sihati.application.communs.NewNotification.GetLatestOne.GetLatestNotificationDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.GetLatestOne.GetLatestNotificationUseCase;
import dz.elit.sihati.application.communs.NewNotification.GetNewNotification.GetNewNotificationDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.GetNewNotification.GetNewNotificationUseCase;
import dz.elit.sihati.application.communs.NewNotification.MarkAsSeen.MarkAsSeenDtoResponse;
import dz.elit.sihati.application.communs.NewNotification.MarkAsSeen.MarkAsSeenUseCase;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;

import java.security.Principal;
import java.util.List;

@WebAdapter
@RequiredArgsConstructor
public class NewNotificationController implements NewNotificationResource {

    private final GetNewNotificationUseCase getNewNotificationUseCase;
    private final MarkAsSeenUseCase markAsSeenUseCase;
    private final CreateNewNotificationUseCase createNewNotificationUseCase;
    private final GetNewNotificationsByPatientCodeUseCase getByPatientCodeUseCase;
    private final GetLatestNotificationUseCase getLatestNotificationUseCase;


    @Override
    public List<GetNewNotificationDtoResponse> loadAll() {
        return getNewNotificationUseCase.execute();
    }

    @Override
    public CreateNewNotificationDtoResponse createNewNotification(CreateNewNotificationDto dto, Principal principal) {
        return createNewNotificationUseCase.execute(dto);
    }

    @Override
    public MarkAsSeenDtoResponse markAsSeen(String code, Principal principal) {
        return markAsSeenUseCase.execute(code);
    }
    @Override
    public List<GetNewNotificationsByPatientCodeDtoResponse> getNotificationsByPatientCode(String patientCode) {
        return getByPatientCodeUseCase.execute(patientCode);
    }
    @Override
    public GetLatestNotificationDtoResponse getLatestNotification(String patientCode) {
        return getLatestNotificationUseCase.execute(patientCode);
    }
}

