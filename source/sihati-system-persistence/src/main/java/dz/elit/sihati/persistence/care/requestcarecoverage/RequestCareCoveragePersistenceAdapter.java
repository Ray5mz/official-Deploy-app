package dz.elit.sihati.persistence.care.requestcarecoverage;

import dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage.CancelRequestCareCoverageLoad;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoverage;
import dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage.UpdateRequestCareCoverage;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageByPatientLoad;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageLoad;
import dz.elit.sihati.domain.care.RequestCareCoverage;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class RequestCareCoveragePersistenceAdapter implements
        GetRequestCareCoverageLoad,
        CreateRequestCareCoverage,
        UpdateRequestCareCoverage,
        GetRequestCareCoverageByPatientLoad,
        CancelRequestCareCoverageLoad {

  private final RequestCareCoverageRepository requestCareCoverageRepository;

  @Override
  public List<RequestCareCoverage> loadAll() {
    return requestCareCoverageRepository.findAll();
  }

  @Override
  public RequestCareCoverage saveRequestCareCoverage(RequestCareCoverage requestCareCoverage) {
    if (requestCareCoverage.getCode() == null)
      requestCareCoverage.setCode(getNextCode(requestCareCoverage.getMedicalCenter().getCode()));
    return requestCareCoverageRepository.save(requestCareCoverage);
  }

  @Override
  public Optional<RequestCareCoverage> findRequestCareCoverageByCode(String code) {
    return requestCareCoverageRepository.findRequestCareCoverageByCode(code);
  }

  @Override
  public RequestCareCoverage save(RequestCareCoverage requestCareCoverage) {
    return requestCareCoverageRepository.save(requestCareCoverage);
  }

  @Override
  public List<RequestCareCoverage> findByPatientId(Long patientId) {
    return requestCareCoverageRepository.findByPatientId(patientId);
  }

  public String getNextCode(String codeRequest) {
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMdd");
    String dateFormatee = LocalDate.now().format(formatter);
    String leftKeys = codeRequest + dateFormatee;
    Optional<String> key = requestCareCoverageRepository.getMaxRequestCareCoveragesNumber(leftKeys + "%");
    try {
      if (key.isPresent()) {
        long keyInt = Long.parseLong(key.get()) - Long.parseLong(leftKeys + "0000");
        keyInt++;
        if (keyInt < 10) return leftKeys + "000" + keyInt;
        else if (keyInt < 100) return leftKeys + "00" + keyInt;
        else if (keyInt < 1000) return leftKeys + "0" + keyInt;
        else return leftKeys + keyInt;
      }
    } catch (Exception ex) {
      System.out.println("Exception occurred while trying to get the next careCoverages");
    }
    return leftKeys + "0001";
  }
}