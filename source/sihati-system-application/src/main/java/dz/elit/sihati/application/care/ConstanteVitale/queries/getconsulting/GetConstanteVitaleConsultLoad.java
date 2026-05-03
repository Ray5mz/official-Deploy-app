package dz.elit.sihati.application.care.ConstanteVitale.queries.getconsulting;

import dz.elit.sihati.domain.care.ConstanteVitale;

public interface GetConstanteVitaleConsultLoad {

    ConstanteVitale loadByConstanteVitaleNumber(String constantevitaleNumber);
}