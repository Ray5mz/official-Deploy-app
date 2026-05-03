package dz.elit.sihati.application.care.TimingDoctor.queries.getlistbyspe;

import dz.elit.sihati.domain.care.TimingDoctor;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(componentModel = "spring")
public interface GetTimingDoctorSpeMapper {

    @Mapping(source = "id", target = "id")
    @Mapping(source = "duration", target = "duration")
    @Mapping(source = "timingDoctorDate", target = "timingDoctorDate")
    @Mapping(source = "timingDoctorStatus", target = "timingDoctorStatus")
    @Mapping(source = "specialty.code", target = "speciality")
    @Mapping(source = "medicalCenter.designation", target = "medicalCenterName")
    @Mapping(source = "medicalCenter.address", target = "medicalCenterAddress")
    @Mapping(target = "doctorName", expression = "java(mapDoctorName(timingDoctor))")
    GetDoctorTimingSpeDtoResponse toDto(TimingDoctor timingDoctor);

    // This method will use the toDto logic for every item in the list
    List<GetDoctorTimingSpeDtoResponse> togetDoctorTimingSpeDto(List<TimingDoctor> timingDoctor);

    default String mapDoctorName(TimingDoctor timingDoctor) {
        if (timingDoctor == null || timingDoctor.getHealthProfessional() == null) {
            return "Unknown Doctor";
        }

        var hp = timingDoctor.getHealthProfessional();

        // If first and last name are present, use them
        if (hp.getFirstName() != null && !hp.getFirstName().isBlank()) {
            String first = hp.getFirstName();
            String last = (hp.getLastName() != null) ? hp.getLastName() : "";
            return (first + " " + last).trim();
        }

        // Otherwise fallback to nickName (e.g. "DR Khelifati")
        if (hp.getNickName() != null && !hp.getNickName().isBlank()) {
            return hp.getNickName();
        }

        return "Unnamed Professional";
    }
}