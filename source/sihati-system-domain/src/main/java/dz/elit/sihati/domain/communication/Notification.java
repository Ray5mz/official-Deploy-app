package dz.elit.sihati.domain.communication;

import dz.elit.sihati.domain.admin.User;
import dz.elit.sihati.domain.commons.Auditing;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.Where;

import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "notification", schema = "communication")
@Where(clause = "gone = false")
@Getter
@Setter
@EqualsAndHashCode(exclude = {"user"}, callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Notification extends Auditing implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "notification_gen")
    @SequenceGenerator(name = "notification_gen", sequenceName = "notification_seq",
            schema = "communication", allocationSize = 1)
    protected Long id;

    @Column(name = "code")
    private String code;

    @Column(name = "message")
    private String message;

    @Column(name = "seen")
    @Builder.Default
    private Boolean seen = false;

    @Column(name = "seen_date")
    private Date seenDate;

    @Column(name = "gone")
    @Builder.Default
    private Boolean gone = false;

    @Column(name = "gone_date")
    private Date goneDate;

    @Column(name = "notification_level")
    @Enumerated(EnumType.STRING)
    private NotificationLevel notificationLevel;

    @Column(name = "notification_action")
    @Enumerated(EnumType.STRING)
    private NotificationAction notificationAction;

    @Column(name = "action_value")
    private String actionValue;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;
}
