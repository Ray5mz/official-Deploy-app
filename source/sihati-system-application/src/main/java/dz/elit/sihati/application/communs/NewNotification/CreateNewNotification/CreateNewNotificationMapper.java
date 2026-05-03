package dz.elit.sihati.application.communs.NewNotification.CreateNewNotification;

import dz.elit.sihati.domain.communication.NewNotification;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface CreateNewNotificationMapper {

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "code", ignore = true)
    @Mapping(target = "seen", ignore = true)
    @Mapping(target = "patient", ignore = true)
    @Mapping(source = "requestAppointmentId", target = "requestAppointmentId")
    @Mapping(source = "requestCareCoverageId", target = "requestCareCoverageId")
    @Mapping(source = "message", target = "message")
    @Mapping(source = "type", target = "type")
    NewNotification toEntity(CreateNewNotificationDto dto);

    @Mapping(source = "patient", target = "patient")
    @Mapping(source = "requestAppointmentId", target = "requestAppointmentId")
    @Mapping(source = "requestCareCoverageId", target = "requestCareCoverageId")
    CreateNewNotificationDtoResponse toResponse(NewNotification notification);
}