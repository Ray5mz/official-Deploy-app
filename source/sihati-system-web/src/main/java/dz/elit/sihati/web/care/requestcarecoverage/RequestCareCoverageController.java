package dz.elit.sihati.web.care.requestcarecoverage;



import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage.CancelRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.commands.cancelrequestcarecoverage.CancelRequestCareCoverageUseCase;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoverageDto;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.commands.createrequestcarecoverage.CreateRequestCareCoverageUseCase;
import dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage.UpdateRequestCareCoverageDto;
import dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage.UpdateRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage.UpdateRequestCareCoverageUseCase;
import dz.elit.sihati.application.care.requestcarecoverage.queries.downloadcarecoverage.DownloadCareCoverageUseCase;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageByPatientUseCase;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageByPatientDtoResponse;
import dz.elit.sihati.application.care.requestcarecoverage.queries.getrequestcarecoverage.GetRequestCareCoverageUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.web.commons.controller.BaseController;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.server.ResponseStatusException;

import java.security.Principal;
import java.util.List;

@WebAdapter
@RequiredArgsConstructor
class RequestCareCoverageController extends BaseController implements RequestCareCoverageResource {
    private final DownloadCareCoverageUseCase downloadCareCoverageUseCase;
    private final GetRequestCareCoverageUseCase getRequestCareCoverageUseCase;
    private final CreateRequestCareCoverageUseCase createRequestCareCoverageUseCase ;
    private final GetUserUseCase getUserUseCase;
    private final UpdateRequestCareCoverageUseCase updateRequestCareCoverageUseCase;
    private final GetRequestCareCoverageByPatientUseCase getRequestCareCoverageByPatientUseCase;
    private final CancelRequestCareCoverageUseCase cancelRequestCareCoverageUseCase;
    @Override
    public List<GetRequestCareCoverageDtoResponse> loadAll() {
        return getRequestCareCoverageUseCase.execute();
    }



  @Override
  public CreateRequestCareCoverageDtoResponse createRequestCareCoverage(@Valid CreateRequestCareCoverageDto createcareCoveragesDto, Principal principal) {
    GetUserDtoResponse userDtoResponse = getUserUseCase.execute(principal.getName());
    return createRequestCareCoverageUseCase.execute(createcareCoveragesDto, userDtoResponse.getStructure().getCode());
  }
    @Override
    public List<GetRequestCareCoverageByPatientDtoResponse> getMyCareConverages(Principal principal) {
        if (principal == null) {
            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "Not authenticated");
        }
        return getRequestCareCoverageByPatientUseCase.execute(principal.getName());
    }
    @Override
    public UpdateRequestCareCoverageDtoResponse updateRequestCareCoverage(
            String code,
            UpdateRequestCareCoverageDto dto,
            Principal principal
    ) {
        return updateRequestCareCoverageUseCase.execute(dto, code);
    }


    @Override
    public ResponseEntity<byte[]> downloadCareCoverage(Long id) {
        byte[] pdf = downloadCareCoverageUseCase.execute(id);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentDispositionFormData("attachment", "care_coverage_" + id + ".pdf");
        return ResponseEntity.ok()
                .headers(headers)
                .body(pdf);}
        @Override
        public CancelRequestCareCoverageDtoResponse cancelRequestCareCoverage (String code, Principal principal){
            return cancelRequestCareCoverageUseCase.execute(code);
        }
    }



