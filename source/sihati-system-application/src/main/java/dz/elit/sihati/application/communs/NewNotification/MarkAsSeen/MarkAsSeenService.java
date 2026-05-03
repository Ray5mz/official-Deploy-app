package dz.elit.sihati.application.communs.NewNotification.MarkAsSeen;

import dz.elit.sihati.domain.communication.NewNotification;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MarkAsSeenService implements MarkAsSeenUseCase {

    private final MarkAsSeenLoad load;
    private final UpdateNewNotification update;
    private final MarkAsSeenMapper mapper;

    @Override
    public MarkAsSeenDtoResponse execute(String code) {
        Optional<NewNotification> optional = load.findByCode(code);
        if (optional.isEmpty()) {
            throw new IllegalArgumentException("Aucune notification trouvée avec le code : " + code);
        }

        NewNotification notification = optional.get();

        if (Boolean.TRUE.equals(notification.getSeen())) {
            throw new IllegalStateException("La notification est déjà marquée comme lue.");
        }

        notification.setSeen(true);
        NewNotification saved = update.save(notification);

        return mapper.toDto(saved);
    }
}
