package dz.elit.sihati.application.care.ConstanteVitale.queries.GetConstanteVitaleByPatientCode;

import dz.elit.sihati.domain.care.ConstanteVitale;

import java.util.List;

public interface GetConstanteVitaleByPatientLoad {

    List<ConstanteVitale> getByPatientCode(String patientCode);

}