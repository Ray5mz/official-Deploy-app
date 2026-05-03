package dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe;

import dz.elit.sihati.domain.care.TimingDoctor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class GetTimingDoctorSpeService implements GetTimingDoctorSpeUseCase {

    private final GetTimingDoctorSpeLoad timingDoctorSpeLoad;
    private final GetTimingDoctorSpeMapper mapper;

    @Override
    public List<GetDoctorTimingSpeDtoResponse> execute(String codeSpe) {

        List<TimingDoctor> timingDoctors = timingDoctorSpeLoad.getTimingDoctorByspeciality(codeSpe);

        return mapper.togetDoctorTimingSpeDto(timingDoctors);
    }
}