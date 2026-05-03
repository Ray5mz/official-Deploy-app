package dz.elit.sihati.web.care.ConstanteVitale;

import dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode.GetConstanteVitaleByPatientDtoResponse;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getconsulting.GetConstanteVitaleConsultDtoResponse;
import dz.elit.sihati.application.care.ConstanteVitale.queries.getlisting.GetConstanteVitaleDtoResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/production/constantevitale")
public interface ConstanteVitaleResource {

  @GetMapping
  List<GetConstanteVitaleDtoResponse> loadAll();

  @GetMapping("/{constantevitaleNumber}")
  GetConstanteVitaleConsultDtoResponse consult(
          @PathVariable String constantevitaleNumber);

  @GetMapping("/patient/{patientCode}")
  List<GetConstanteVitaleByPatientDtoResponse> getConstanteVitaleByPatientCode(
          @PathVariable String patientCode);
}