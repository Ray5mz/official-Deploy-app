package dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage;

import dz.elit.sihati.domain.admin.OrganisationalStructure;

import java.util.Optional;

public interface CreateRequestCareCoveragesLoadMedicalCenter {
     Optional<OrganisationalStructure> findOrganisationalStructureByCode(String code);;
}
