package dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro;

import dz.elit.sihati.domain.care.TimingDoctor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetTimingDocByHealthProService {

    private final GetTimingDocByHealthProLoad load;
    private final GetTimingDocByHealthProMapper mapper;

    public List<GetTimingDocByHealthProDtoResponse> execute(Long id){

        List<TimingDoctor> timingDoctors =
                load.findTimingDoctorByHealthProfessionalId(id);

        return mapper.toDtos(timingDoctors);
    }
}