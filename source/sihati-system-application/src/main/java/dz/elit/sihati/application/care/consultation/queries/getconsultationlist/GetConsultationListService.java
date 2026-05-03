package dz.elit.sihati.application.care.consultation.queries.getconsultationlist;

import dz.elit.sihati.domain.care.Consultation;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
class GetConsultationListService implements GetConsultationListUseCase {

    private final GetConsultationListMapper consultationListMapper;
    private final GetConsultationListLoad consultationListLoad;

    @Override
    public List<GetConsultationListDtoResponse>  execute() {
        List<Consultation> consultations = consultationListLoad.getconsultationList( );
        return consultationListMapper.consultationToGetconsultationListDto(consultations);
    }
}
