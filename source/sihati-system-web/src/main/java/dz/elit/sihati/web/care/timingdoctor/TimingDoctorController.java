package dz.elit.sihati.web.care.timingdoctor;



//import dz.elit.sihati.application.care.TimingDoctor.listbycat.GetTimingDoctorCatUseCase;
import dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro.GetTimingDocByHealthProDtoResponse;
import dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro.GetTimingDocByHealthProUseCase;
import dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe.GetDoctorTimingSpeDtoResponse;
import dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe.GetTimingDoctorSpeUseCase;
import dz.elit.sihati.application.care.TimingDoctor.queries.getlisting.GetTimingDoctorUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.domain.care.TimingDoctor;
import dz.elit.sihati.web.commons.controller.BaseController;
import lombok.RequiredArgsConstructor;

import java.util.List;

@WebAdapter
@RequiredArgsConstructor

 class TimingDoctorController extends BaseController implements TimingDoctorResource {

    private final GetTimingDoctorUseCase timingDoctorUseCase;
    private final GetTimingDoctorSpeUseCase getTimingDoctorSpeUseCase;
    private final GetTimingDocByHealthProUseCase getTimingDocByHealthProUseCase;


    @Override
    public List<TimingDoctor> loadAll() {
        return timingDoctorUseCase.execute();
    }


    @Override
    public List<GetDoctorTimingSpeDtoResponse> getTimingDoctorByspeciality(String codeSpecialty) {
        return getTimingDoctorSpeUseCase.execute(codeSpecialty);
    }
    @Override
    public List<GetTimingDocByHealthProDtoResponse> getTimingDoctorByHealthProf(Long id) {
        return getTimingDocByHealthProUseCase.execute(id);
    }

}



