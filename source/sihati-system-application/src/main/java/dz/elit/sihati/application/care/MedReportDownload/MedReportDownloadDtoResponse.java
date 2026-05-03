package dz.elit.sihati.application.care.MedReportDownload;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MedReportDownloadDtoResponse {

    private String medicalReportNumber;
    private String certificateType;
    private String certificateSubType;
    private String description;
    private String status;
    private String patientCode;
    private String fileName;
}