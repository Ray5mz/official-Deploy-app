package dz.elit.sihati.application.reference.ayantdroit;

import dz.elit.sihati.domain.reference.Patient;

import java.util.List;

public interface AyantDroitByEmployeeNumberLoad {

    List<Patient> findByEmployeeNumber(String employeeNumber);

}