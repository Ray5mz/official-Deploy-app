package dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe;


import java.util.List;

public interface GetTimingDoctorSpeUseCase  {



        List<GetDoctorTimingSpeDtoResponse> execute(String codeSpecialty);


}
