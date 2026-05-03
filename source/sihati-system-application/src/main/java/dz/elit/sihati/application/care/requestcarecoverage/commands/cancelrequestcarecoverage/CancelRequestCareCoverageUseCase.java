package dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage;

public interface CancelRequestCareCoverageUseCase {

    CancelRequestCareCoverageDtoResponse execute(String code);

}