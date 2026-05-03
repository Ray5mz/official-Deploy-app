package dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage;

public interface UpdateRequestCareCoverageUseCase {
    UpdateRequestCareCoverageDtoResponse execute(
            UpdateRequestCareCoverageDto dto,
            String code
    );
}
