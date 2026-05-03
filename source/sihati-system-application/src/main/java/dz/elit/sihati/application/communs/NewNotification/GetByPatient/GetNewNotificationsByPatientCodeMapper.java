package dz.elit.sihati.application.communs.NewNotification.GetByPatient;

import dz.elit.sihati.domain.communication.NewNotification;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetNewNotificationsByPatientCodeMapper {

    @Mapping(source = "requestAppointmentId", target = "requestAppointmentId")
    @Mapping(source = "requestCareCoverageId", target = "requestCareCoverageId")
    @Mapping(source = "type", target = "type")
    GetNewNotificationsByPatientCodeDtoResponse toDto(NewNotification notification);

    List<GetNewNotificationsByPatientCodeDtoResponse> toDtoList(List<NewNotification> notifications);
}
