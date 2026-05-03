package dz.elit.sihati.web.reference.AyantDroit;

import dz.elit.sihati.application.reference.agent.AyantDroitParentDtoResponse;
import dz.elit.sihati.application.reference.ayantdroit.AyantDroitByEmployeeNumberDtoResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/production/ayantdroit")
@RequiredArgsConstructor
public class AyantDroitResource {

    private final AyantDroitController controller;

    /**
     * GET /api/production/ayantdroit/{employeeNumber}
     * Retourne la liste des ayants droit pour un employé donné
     */
    @GetMapping("/{code}")
    public List<AyantDroitByEmployeeNumberDtoResponse> getAyantsDroitByEmployeeNumber(
            @PathVariable("code") String code) {

        // Appel du controller applicatif
        return controller.getAyantsDroit(code);
    }



    @GetMapping("/parent/{code}")
    public List<AyantDroitParentDtoResponse> getEmployeeByPatientCode(
            @PathVariable("code") String code) {
        return (List<AyantDroitParentDtoResponse>) controller.getEmployeeByPatientCode(code);
    }

}