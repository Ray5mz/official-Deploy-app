package dz.elit.sihati.application.care.pathologie;


import java.util.List;

public interface GetPathologieUseCase {
        List<GetPathologieDtoResponse> execute(String codePatient);
}
