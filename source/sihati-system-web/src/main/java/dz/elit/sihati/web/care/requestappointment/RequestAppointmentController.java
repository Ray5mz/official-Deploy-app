package dz.elit.sihati.web.care.requestappointment;


import dz.elit.sihati.application.admin.user.queries.getuser.GetUserDtoResponse;
import dz.elit.sihati.application.admin.user.queries.getuser.GetUserUseCase;
import dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode.GetRequestAppointmentByPatientCodeDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.GetByPatientCode.GetRequestAppointmentByPatientCodeUseCase;
import dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment.CancelRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.commands.CancelRequestAppointment.CancelRequestAppointmentUseCase;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointmentDto;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.commands.createrequestappointement.CreateRequestAppointmentUseCase;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDto;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.commands.update.UpdateRequestAppointmentUseCase;
import dz.elit.sihati.application.care.RequestAppointment.get.GetRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.get.GetRequestAppointmentUseCase;
import dz.elit.sihati.application.care.RequestAppointment.get.nearest.GetNearestRequestAppointmentDtoResponse;
import dz.elit.sihati.application.care.RequestAppointment.get.nearest.GetNearestRequestAppointmentUseCase;
import dz.elit.sihati.commons.WebAdapter;
import dz.elit.sihati.web.commons.controller.BaseController;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;

import java.security.Principal;
import java.util.List;

@WebAdapter
@RequiredArgsConstructor
public class RequestAppointmentController extends BaseController implements RequestAppointmentResource {

    private final GetRequestAppointmentUseCase getRequestAppointmentUseCase;
    private final UpdateRequestAppointmentUseCase updateRequestAppointmentUseCase;
    private final GetUserUseCase getUserUseCase;
    private final CreateRequestAppointmentUseCase createRequestAppointmentUseCase;
    private final GetRequestAppointmentByPatientCodeUseCase getRequestAppointmentByPatientCodeUseCase;
    private final CancelRequestAppointmentUseCase cancelRequestAppointmentUseCase;
    private final GetNearestRequestAppointmentUseCase getNearestRequestAppointmentUseCase;
    @Override
  public List<GetRequestAppointmentDtoResponse> loadAll() {
    return getRequestAppointmentUseCase.execute();
  }



  @Override
  public UpdateRequestAppointmentDtoResponse updateRequestAppointement(@PathVariable String appointmentNumber, @Valid UpdateRequestAppointmentDto requestappointmentUpdateDto, Principal principal) {
    GetUserDtoResponse userDtoResponse = getUserUseCase.execute(principal.getName());
    String healthProfessionalCode=userDtoResponse.getUsername();
    return updateRequestAppointmentUseCase.execute(requestappointmentUpdateDto,appointmentNumber, healthProfessionalCode);
  }

  @Override
  public CreateRequestAppointmentDtoResponse createRequestAppointment(@Valid CreateRequestAppointmentDto createAppointmentsDto, Principal principal) {
    GetUserDtoResponse userDtoResponse = getUserUseCase.execute(principal.getName());
    return createRequestAppointmentUseCase.execute(createAppointmentsDto, userDtoResponse.getStructure().getCode());
  }
    @Override
    public List<GetRequestAppointmentByPatientCodeDtoResponse> getRequestAppointmentsByPatientCode(String patientCode) {
        return getRequestAppointmentByPatientCodeUseCase.execute(patientCode);
    }
    @Override
    public CancelRequestAppointmentDtoResponse cancelRequestAppointment(String appointmentNumber, Principal principal) {
        return cancelRequestAppointmentUseCase.execute(appointmentNumber);
    }
    @Override
    public ResponseEntity<GetNearestRequestAppointmentDtoResponse> getNearestRequestAppointment(String patientCode) {
        try {
            GetNearestRequestAppointmentDtoResponse result = getNearestRequestAppointmentUseCase.execute(patientCode);
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            return ResponseEntity.noContent().build(); // 204 instead of 404
        }
    }
}
