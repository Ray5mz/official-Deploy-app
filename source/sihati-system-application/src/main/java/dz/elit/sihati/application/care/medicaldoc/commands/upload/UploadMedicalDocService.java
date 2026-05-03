package dz.elit.sihati.application.care.medicaldoc.commands.upload;

import dz.elit.sihati.domain.care.MedicalDoc;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class UploadMedicalDocService implements UploadMedicalDocUseCase {

    private final LoadCareCoverageByCodePort loadCareCoverageByCodePort;
    private final SaveMedicalDocPort saveMedicalDocPort;
    private final FileStoragePort fileStoragePort;

    @Override
    public MedicalDocDtoResponse execute(String careCoverageCode, MultipartFile file) {
        RequestCareCoverage careCoverage = loadCareCoverageByCodePort.findByCode(careCoverageCode)
                .orElseThrow(() -> new RuntimeException("Care coverage not found: " + careCoverageCode));

        String storedPath = fileStoragePort.store(file, careCoverageCode);

        String originalName = file.getOriginalFilename();
        String extension = originalName != null && originalName.contains(".")
                ? originalName.substring(originalName.lastIndexOf(".") + 1)
                : "";

        MedicalDoc doc = MedicalDoc.builder()
                .libelle(originalName)
                .extension(extension)
                .mimeType(file.getContentType())
                .size(BigDecimal.valueOf(file.getSize()))
                .path(storedPath)
                .pathPere(careCoverageCode)
                .version(1)
                .requestCareCoverage(careCoverage)
                .build();

        MedicalDoc saved = saveMedicalDocPort.save(doc);

        return MedicalDocDtoResponse.builder()
                .id(saved.getId())
                .libelle(saved.getLibelle())
                .extension(saved.getExtension())
                .mimeType(saved.getMimeType())
                .size(saved.getSize())
                .path(saved.getPath())
                .build();
    }
}