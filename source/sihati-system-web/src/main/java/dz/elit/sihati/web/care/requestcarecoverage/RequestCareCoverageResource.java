package dz.elit.sihati.web.care.requestcarecoverage;


import dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage.CancelRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoverageDto;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage.UpdateRequestCareCoverageDto;
import dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage.UpdateRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageByPatientDtoResponse;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@RequestMapping(value = "/api/production/requestcarecoverage")
public interface RequestCareCoverageResource {

    @RequestMapping(method = RequestMethod.GET)
    public List<GetRequestCareCoverageDtoResponse> loadAll();



  @PostMapping( path="/createcarecoverage")
  CreateRequestCareCoverageDtoResponse createRequestCareCoverage(@RequestBody CreateRequestCareCoverageDto requestCareCoverageDto, Principal principal);

    @PutMapping("/{code}")
    UpdateRequestCareCoverageDtoResponse updateRequestCareCoverage(
            @PathVariable String code,
            @Valid @RequestBody UpdateRequestCareCoverageDto dto,
            Principal principal
    );
    @GetMapping(path = "/my-care-coverages")
    //@PreAuthorize("isAuthenticated()")
    List<GetRequestCareCoverageByPatientDtoResponse> getMyCareConverages(Principal principal);


    @GetMapping(value = "/{id}/download", produces = "application/pdf")
    @PreAuthorize("isAuthenticated()")
    ResponseEntity<byte[]> downloadCareCoverage(@PathVariable Long id);

    @PutMapping("/cancel/{code}")
    @PreAuthorize("isAuthenticated()")
    CancelRequestCareCoverageDtoResponse cancelRequestCareCoverage(
            @PathVariable String code,
            Principal principal
    );




}
