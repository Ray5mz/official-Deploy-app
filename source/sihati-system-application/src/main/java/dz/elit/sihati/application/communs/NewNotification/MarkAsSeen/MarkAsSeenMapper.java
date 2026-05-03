package dz.elit.sihati.application.communs.NewNotification.MarkAsSeen;

import dz.elit.sihati.domain.communication.NewNotification;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface MarkAsSeenMapper {
    MarkAsSeenDtoResponse toDto(NewNotification notification);
}
