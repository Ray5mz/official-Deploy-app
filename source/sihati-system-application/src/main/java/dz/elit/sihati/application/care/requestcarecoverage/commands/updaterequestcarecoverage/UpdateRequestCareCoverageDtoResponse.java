package dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor

public class UpdateRequestCareCoverageDtoResponse {
    private String code;
    private String notes;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate startDate;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate endDate;

    private Boolean hasCancer;

    private String status;
}

