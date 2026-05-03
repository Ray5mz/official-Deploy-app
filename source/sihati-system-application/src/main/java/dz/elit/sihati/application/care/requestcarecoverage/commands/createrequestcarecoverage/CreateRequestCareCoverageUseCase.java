package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;

public interface CreateRequestCareCoverageUseCase {
  CreateRequestCareCoverageDtoResponse execute(CreateRequestCareCoverageDto CareCoverageCreateDto, String medicalCenterCode);
}
