package dz.elit.sihati.application.communs.NewNotification.GetNewNotification;

import dz.elit.sihati.domain.communication.NewNotification;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetNewNotificationMapper {

    List<GetNewNotificationDtoResponse> toDtoList(List<NewNotification> notifications);

    @Mapping(source = "patient.code", target = "patientCode")
    GetNewNotificationDtoResponse toDto(NewNotification notification);
}