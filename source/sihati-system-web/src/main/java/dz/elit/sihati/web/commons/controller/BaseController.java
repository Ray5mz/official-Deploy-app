package dz.elit.sihati.web.commons.controller;

import dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructure.GetOrgStructureDtoResponse;
import dz.elit.sihati.application.admin.organisationalstructure.queries.getorgstructure.GetOrgStructureUseCase;
import dz.elit.sihati.web.utils.SecurityUtils;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class BaseController {

    @Autowired
    protected SecurityUtils securityUtils;
    
    protected GetOrgStructureUseCase orgStructureUseCase;

    protected GetOrgStructureDtoResponse getUserOrganisationalStructure(HttpServletRequest httpServletRequest) {
        String structureId = securityUtils.getConnectedUserOrganisationalStructure(httpServletRequest);

        return orgStructureUseCase.execute(structureId);
    }
}
