package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import dz.elit.sihati.domain.reference.Patient;
import dz.elit.sihati.domain.reference.Provider;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;

@Service
@RequiredArgsConstructor
@Transactional
class CreateCareCoverageService implements CreateRequestCareCoverageUseCase {

  private final CreateRequestCareCoverage createRequestCareCoverages;

  private final CreateRequestCareCoveragesLoadProvider loadProvider;
  private final CreateRequestCareCoveragesLoadPatient loadPatient;
  private final CreateRequestCareCoverageMapper createRequestCareCoverageMapper;
  private final CreateRequestCareCoveragesSavePatient savePatient ;
  private final CreateRequestCareCoveragesLoadMedicalCenter loadMedicalCenter;

  @Override
  public CreateRequestCareCoverageDtoResponse execute(CreateRequestCareCoverageDto CareCoverageCreateDto, String medicalCenterCode) {

    RequestCareCoverage requestCareCoverage = createRequestCareCoverageMapper.createRequestCareCoveragesDtoToRequestCareCoverages(CareCoverageCreateDto);
    requestCareCoverage.setCode(null);
    LocalDate now = LocalDate.now();


    OrganisationalStructure medicalCenter = loadMedicalCenter.findOrganisationalStructureByCode(medicalCenterCode)
      .orElseThrow(() -> new ResourceNotFoundException("MedicalCenter with code=" + medicalCenterCode + " does not exists"));
    requestCareCoverage.setMedicalCenter(medicalCenter);

    Provider provider = loadProvider.findProviderByCode(CareCoverageCreateDto.getProviderCode())
      .orElseThrow(() -> new ResourceNotFoundException("provider with code=" + CareCoverageCreateDto.getProviderCode() + " does not exists"));
    requestCareCoverage.setProvider(provider);

    Patient patient = loadPatient.findPatientByCode(CareCoverageCreateDto.getPatientCode())
      .orElseThrow(() -> new ResourceNotFoundException("Patient with code=" + CareCoverageCreateDto.getPatientCode() + " does not exists"));

    patient= savePatient.savePatient(patient);
    requestCareCoverage.setPatient(patient);



    requestCareCoverage.setStatus(RequestCareCoverageStatus.PENDING);
    requestCareCoverage.setDemandeDate(LocalDate.now());

    requestCareCoverage.setStartDate(CareCoverageCreateDto.getStartDate());
    requestCareCoverage.setEndDate(CareCoverageCreateDto.getEndDate());


    RequestCareCoverage saved = createRequestCareCoverages.saveRequestCareCoverage(requestCareCoverage);

    CreateRequestCareCoverageDtoResponse requestCareCoveragesResponse = createRequestCareCoverageMapper.requestCareCoverageToCreateRequestCareCoverageDtoResponse(saved);
    return requestCareCoveragesResponse;
  }
}
