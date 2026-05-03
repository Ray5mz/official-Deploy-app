package dz.elit.sihati.persistence.care.requestappointment;

import dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode.GetRequestAppointmentByPatientCodeLoad;
import dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment.CancelRequestAppointmentLoad;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointment;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointmentLoadPatient;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointmentLoadTimingDoctor;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointment;
import dz.elit.sihati.application.care.RequestAppointment.get.GetRequestAppointmentLoad;
import dz.elit.sihati.application.care.RequestAppointment.get.nearest.GetNearestRequestAppointmentLoad;
import dz.elit.sihati.domain.care.RequestAppointment;
import dz.elit.sihati.domain.care.TimingDoctor;
import dz.elit.sihati.domain.care.enumeration.RequestAppointmentStatus;
import dz.elit.sihati.domain.reference.Patient;
import dz.elit.sihati.persistence.care.timingdoctor.TimingDoctorRepository;
import dz.elit.sihati.persistence.reference.patient.PatientRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class RequestAppointmentPersistenceAdapter implements CreateRequestAppointment, CreateRequestAppointmentLoadPatient, CreateRequestAppointmentLoadTimingDoctor, GetRequestAppointmentLoad, UpdateRequestAppointment, GetRequestAppointmentByPatientCodeLoad, CancelRequestAppointmentLoad, GetNearestRequestAppointmentLoad {

    private final RequestAppointmentRepository requestAppointmentRepository;
  private final PatientRepository patientRepository;
  private final TimingDoctorRepository timingDoctorRepository;
    @Override
    public List<RequestAppointment> loadAll() {
        return requestAppointmentRepository.findAll();
    }

  @Override
  public RequestAppointment saveRequestAppointment(RequestAppointment requestAppointment) {
//    String codeT=requestAppointment.getMedicalCenter().getCode();

//    if(requestAppointment.getAppointmentNumber() == null)
//    {requestAppointment.setAppointmentNumber(getNextAppointmentNumber(codeT));}
    return requestAppointmentRepository.save(requestAppointment);
  }

  @Override
  public Optional<RequestAppointment> findRequestAppointmentByAppointmentNumber(String codeAppointment) {
    return   requestAppointmentRepository.findRequestAppointmentByAppointmentNumber(codeAppointment); }


  public String getNextAppointmentNumber(String medicalCenterCode) {


    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMdd");
    String dateFormatee =  LocalDate.now().format(formatter);
    String leftKeys= medicalCenterCode+dateFormatee;
    Optional<String> key= requestAppointmentRepository.getMaxAppointmentNumber( leftKeys+"%");
    try{
      if(key.isPresent()){
        long keyInt = Long .parseLong(key.get())- Long .parseLong(leftKeys+"0000");
        keyInt++;

        if(keyInt<10)         return leftKeys+"000"+keyInt;
        else  if(keyInt<100)         return leftKeys+"00"+keyInt;
        else   if(keyInt<1000)         return leftKeys+"0"+keyInt;
        else  return leftKeys+keyInt;

      }

    }catch (Exception ex){
      System.out.println("Exception occured while trying to get the next Appointment Number");

    }


    return leftKeys+"0001";

  }

  @Override
  public Optional<Patient> findPatientByCode(String code) {
    return patientRepository.findPatientByCode(code);
  }
  @Override
  public Optional<TimingDoctor> findTimingDoctorById(Long id) {
    return timingDoctorRepository.findById(id);
  }
  @Override
  public Optional<TimingDoctor> findTimingDoctorBycode(String code) {
    return timingDoctorRepository.findTimingDoctorByCode(code);
  }
  @Override
  public List<RequestAppointment> findRequestAppointmentByPatientCode(String patientCode) {

    return requestAppointmentRepository.findRequestAppointmentByPatientCode(patientCode);
  }
  @Override
  public Optional<RequestAppointment> findNearestAcceptedFutureAppointmentByPatientCode(String patientCode) {
    Pageable pageable = PageRequest.of(0, 1);
    List<RequestAppointment> results = requestAppointmentRepository.findNearestAcceptedFutureAppointmentByPatientCode(
            patientCode,
            RequestAppointmentStatus.ACCEPTE,
            LocalDateTime.now(),
            pageable);
    return results.isEmpty() ? Optional.empty() : Optional.of(results.get(0));
  }

}

