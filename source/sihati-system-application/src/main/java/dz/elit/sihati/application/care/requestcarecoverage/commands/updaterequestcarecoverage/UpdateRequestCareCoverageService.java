package dz.elit.sihati.application.care.requestcarecoverage.commands.updaterequestcarecoverage;

import dz.elit.sihati.domain.care.RequestCareCoverage;
import dz.elit.sihati.domain.care.enumeration.RequestCareCoverageStatus;
import dz.elit.sihati.domain.exceptions.ActionNotAllowedException;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class UpdateRequestCareCoverageService implements UpdateRequestCareCoverageUseCase {

    private final UpdateRequestCareCoverage updateRequestCareCoverage;

    @Override
    @Transactional
    public UpdateRequestCareCoverageDtoResponse execute(
            UpdateRequestCareCoverageDto dto,
            String code
    ) {

        RequestCareCoverage request = updateRequestCareCoverage
                .findRequestCareCoverageByCode(code)
                .orElseThrow(() ->
                        new ResourceNotFoundException(
                                "RequestCareCoverage with code=" + code + " not found"
                        )
                );


        if (request.getStatus() != RequestCareCoverageStatus.PENDING) {
            throw new ActionNotAllowedException(
                    "Only requests with status PENDING can be modified"
            );
        }

        // Update fields li rahom ra7 yupdaytaw
        request.setNotes(dto.getNotes());
        request.setStartDate(dto.getStartDate());
        request.setEndDate(dto.getEndDate());
        request.setHasCancer(dto.getHasCancer());

        RequestCareCoverage saved =
                updateRequestCareCoverage.save(request);

        return UpdateRequestCareCoverageDtoResponse.builder()
                .code(saved.getCode())
                .notes(saved.getNotes())
                .startDate(saved.getStartDate())
                .endDate(saved.getEndDate())
                .hasCancer(saved.isHasCancer())
                .status(saved.getStatus().name())
                .build();
    }
}