package dz.elit.sihati.application.care.medicaldoc.commands.upload;

import org.springframework.web.multipart.MultipartFile;

public interface FileStoragePort {
    String store(MultipartFile file, String careCoverageCode);
}