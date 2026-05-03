package dz.elit.sihati.application.care.TimingDoctor.queries.getbyhealthpro;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@RequiredArgsConstructor
public class GetTimingDocByHealthProUseCase {

    private final GetTimingDocByHealthProService service;

    public List<GetTimingDocByHealthProDtoResponse> execute(Long id){
        return service.execute(id);
    }
}