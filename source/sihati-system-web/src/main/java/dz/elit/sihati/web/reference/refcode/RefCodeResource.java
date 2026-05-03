package dz.elit.sihati.web.reference.refcode;


import dz.elit.sihati.application.reference.refcode.command.createrefcode.CreateRefCodeDto;
import dz.elit.sihati.application.reference.refcode.command.createrefcode.CreateRefCodeDtoResponse;
import dz.elit.sihati.application.reference.refcode.command.updaterefcode.UpdateRefCodeDto;
import dz.elit.sihati.application.reference.refcode.command.updaterefcode.UpdateRefCodeDtoResponse;
import dz.elit.sihati.application.reference.refcode.queries.getrefcode.GetRefCodeDtoResponse;
import dz.elit.sihati.application.reference.refcode.queries.getrefcodelist.GetRefCodeListDtoResponse;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/api/production/refcodes")
public interface RefCodeResource {



 @GetMapping(path = "/{idDomain}")
 @PreAuthorize("hasAnyAuthority('refcode:show','refcode:*','*:*')")
 GetRefCodeListDtoResponse getRefCodeList(@PathVariable Long idDomain);


    @GetMapping(path = "/{idDomain}/{id}")
    @PreAuthorize("hasAnyAuthority('refcode:show','refcode:*','*:*')")
    GetRefCodeDtoResponse getRefCodeByIdDomainById(@PathVariable Long idDomain , @PathVariable Long id);

    @PostMapping
     @PreAuthorize("hasAnyAuthority('refcode:add','refcode:*','*:*')")
    CreateRefCodeDtoResponse createRefCode(@Valid @RequestBody CreateRefCodeDto createRefCodeDto);

    @DeleteMapping(path = "/{domain}/{code}")
    @PreAuthorize("hasAnyAuthority('refcode:delete','refcode:*', '*:*')")
    ResponseEntity<?> deleteRefCode(@PathVariable String domain ,@PathVariable String code);

    @PutMapping(path = "/{domain}/{code}")
     @PreAuthorize("hasAnyAuthority('refcode:edit','refcode:*', '*:*')")
    UpdateRefCodeDtoResponse updateRefCode(@PathVariable String domain ,@PathVariable String code, @Valid @RequestBody UpdateRefCodeDto refCodeDto);

}

