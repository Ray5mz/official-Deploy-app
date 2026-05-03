package dz.elit.sihati.application.care.TimingDoctor.queries.getlisting;

import dz.elit.sihati.domain.care.TimingDoctor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
public class GetTimingDoctorService implements GetTimingDoctorUseCase {

    private final GetTimingDoctorLoad timingdoctorLoad;


    @Override
    public List<TimingDoctor> execute() {

        List<TimingDoctor> TimingDoctor  = timingdoctorLoad.loadAll();

        return TimingDoctor;


    }
}
