package dz.elit.sihati.application.communs.NewNotification.GetLatestOne;

import dz.elit.sihati.domain.communication.NewNotification;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface GetLatestNotificationMapper {

    @Mapping(source = "requestAppointmentId", target = "requestAppointmentId")
    @Mapping(source = "requestCareCoverageId", target = "requestCareCoverageId")
    @Mapping(source = "type", target = "type")
    @Mapping(source = "creationDate", target = "creationDate")
    GetLatestNotificationDtoResponse toDto(NewNotification notification);
}