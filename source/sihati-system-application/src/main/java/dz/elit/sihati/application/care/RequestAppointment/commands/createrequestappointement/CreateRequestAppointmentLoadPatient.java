package dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement;
import dz.elit.sihati.domain.reference.Patient;

import java.util.Optional;

public interface CreateRequestAppointmentLoadPatient {
     Optional<Patient> findPatientByCode(String code);
}
