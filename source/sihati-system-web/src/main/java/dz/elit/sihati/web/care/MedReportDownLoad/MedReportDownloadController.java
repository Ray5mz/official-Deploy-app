package dz.elit.sihati.web.care.MedReportDownLoad;

import dz.elit.sihati.application.care.MedReportDownload.MedReportDownloadDtoResponse;
import dz.elit.sihati.application.care.MedReportDownload.MedReportDownloadUseCase;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@WebAdapter
@RequiredArgsConstructor
@RequestMapping("api/production/medical-report")
public class MedReportDownloadController implements MedReportDownloadResource {

    private final MedReportDownloadUseCase useCase;

    @GetMapping("/{patientCode}")
    public ResponseEntity<byte[]> getMedicalReport(@PathVariable String patientCode) {
        return download(useCase.execute(patientCode));
    }

    @GetMapping("/list/{patientCode}")
    public ResponseEntity<List<MedReportDownloadDtoResponse>> getMedReportList(@PathVariable String patientCode) {
        return ResponseEntity.ok(useCase.getMedReportsForPatient(patientCode));
    }

    @GetMapping("/download/{reportNumber}")
    public ResponseEntity<byte[]> downloadByReportNumber(@PathVariable String reportNumber) {
        return download(useCase.findByReportNumber(reportNumber));
    }
}