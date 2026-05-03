package dz.elit.sihati.web.care.medicaldoc;

import dz.elit.sihati.application.care.medicaldoc.commands.upload.MedicalDocDtoResponse;
import dz.elit.sihati.application.care.medicaldoc.commands.upload.UploadMedicalDocUseCase;
import dz.elit.sihati.commons.WebAdapter;
import lombok.RequiredArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@WebAdapter
@RequiredArgsConstructor
public class MedicalDocController implements MedicalDocResource {

    private final UploadMedicalDocUseCase uploadMedicalDocUseCase;

    @Override
    public MedicalDocDtoResponse uploadFile(String careCoverageCode, MultipartFile file) {
        return uploadMedicalDocUseCase.execute(careCoverageCode, file);
    }
}

