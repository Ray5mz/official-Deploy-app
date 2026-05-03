package dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe;

import dz.elit.sihati.domain.care.TimingDoctor;

import java.util.List;

public interface GetTimingDoctorSpeLoad {

      List<TimingDoctor> getTimingDoctorByspeciality(String codeSpecialite);

}
