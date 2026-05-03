package dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro;

import dz.elit.sihati.domain.care.TimingDoctor;

import java.util.List;

public interface GetTimingDocByHealthProLoad {

    List<TimingDoctor> findTimingDoctorByHealthProfessionalId(Long id);

}