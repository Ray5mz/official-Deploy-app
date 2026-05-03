package dz.elit.sihati.web.commons.enums.controller;

import dz.elit.sihati.domain.admin.StructureType;
import dz.elit.sihati.web.commons.enums.dto.EnumDto;
import dz.elit.sihati.web.commons.enums.mapper.EnumsMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(value = "/api/production")
@RequiredArgsConstructor
//@Api(value = "Enums")
public class EnumsController {

    private final EnumsMapper enumsMapper;

    @GetMapping(value = "/years")
//    @ApiOperation(value = "View a list of years")
//    @ApiResponses(value = {
//            @ApiResponse(code = 200, message = "Successfully retrieved a list of years"),
//            @ApiResponse(code = 401, message = "You are not authorized to view the resource"),
//            @ApiResponse(code = 403, message = "Accessing the resource you were trying to reach is forbidden"),
//            @ApiResponse(code = 404, message = "The resource you were trying to reach is not found")
//    })
    public List<String> getYears() {
        List<String> years = new ArrayList<>();
        int startYear = 2020;
        int currentYear = LocalDate.now().getYear();

        for (int i = currentYear; i >= startYear; i--) {
            years.add(String.valueOf(i));
        }

        return years;
    }

    @GetMapping(value = "/structuretypes")
//    @ApiOperation(value = "View a list of available structure types")
//    @ApiResponses(value = {
//            @ApiResponse(code = 200, message = "Successfully retrieved a list of structure types"),
//            @ApiResponse(code = 401, message = "You are not authorized to view the resource"),
//            @ApiResponse(code = 403, message = "Accessing the resource you were trying to reach is forbidden"),
//            @ApiResponse(code = 404, message = "The resource you were trying to reach is not found")
//    })
    public List<EnumDto> getStructureTypes() {
        return enumsMapper.structureTypeToEnumDto(StructureType.values());
    }
}
