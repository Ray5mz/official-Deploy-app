package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CreateRequestCareCoverageDtoResponse {

  private String code;

  private String status;

  private String notes;

  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private LocalDate startDate;

  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private LocalDate endDate;

  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
  private LocalDate demandeDate;

  private CreateRequestCareCoveragesDtoResponsePatient patient;

  private CreateRequestCareCoveragesDtoResponseMedicalCenter medicalCenter;

  private CreateRequestCareCoveragesDtoResponseProvider provider;

  private Boolean hasCancer;


}

