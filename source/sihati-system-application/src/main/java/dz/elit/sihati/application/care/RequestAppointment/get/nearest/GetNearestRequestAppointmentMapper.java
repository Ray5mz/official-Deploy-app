package dz.elit.sihati.application.care.RequestAppointment.get.nearest;

import dz.elit.sihati.domain.care.RequestAppointment;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface GetNearestRequestAppointmentMapper {
    @Mapping(target = "specialtyName", source = "specialty.name")
    @Mapping(source = "patient.code", target = "patientcode")
    @Mapping(source = "timingDoctor.code", target = "timingdoctorcode")
    @Mapping(target = "doctorName",         source = "timingDoctor.healthProfessional.nickName")
    @Mapping(target = "medicalCenterName",  source = "medicalCenter.designation")
    GetNearestRequestAppointmentDtoResponse toDto(RequestAppointment appointment);
}
