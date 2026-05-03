package dz.elit.sihati.web.care.medicaldoc;

import dz.elit.sihati.application.care.medicaldoc.commands.upload.MedicalDocDtoResponse;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/production/medical-doc")
public interface MedicalDocResource {

    @PostMapping(value = "/upload/{careCoverageCode}", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @PreAuthorize("isAuthenticated()")
    MedicalDocDtoResponse uploadFile(
            @PathVariable String careCoverageCode,
            @RequestParam("file") MultipartFile file
    );
}