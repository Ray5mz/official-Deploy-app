package dz.elit.sihati.application.reference.patient.queries;

public interface GetPatientByCodeUseCase {
    GetPatientByCodeDtoResponse execute(String code);

}