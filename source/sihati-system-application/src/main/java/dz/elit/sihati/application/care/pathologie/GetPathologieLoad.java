package dz.elit.sihati.application.care.pathologie;

import dz.elit.sihati.domain.care.Pathologie;

import java.util.List;

public interface GetPathologieLoad {
    List<Pathologie> findByPatientCodePatient(String codePatient);
}