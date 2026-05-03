package dz.elit.sihati.web.reference.refcodedomain;


import dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain.CreateRefCodeDomainDto;
import dz.elit.sihati.application.reference.refcodedomain.commands.createrefcodedomain.CreateRefCodeDomainDtoResponse;
import dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain.UpdateRefCodeDomainDto;
import dz.elit.sihati.application.reference.refcodedomain.commands.updaterefcodedomain.UpdateRefCodeDomainDtoResponse;
import dz.elit.sihati.application.reference.refcodedomain.queries.getdomainrefcodelist.getdomainrefcodelist.GetDomainRefCodeListDtoResponse;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/production/refcodedomains")
public interface RefCodeDomainResource {

 @GetMapping
 @PreAuthorize("hasAnyAuthority('refcodedomain:show','refcodedomain:*','*:*')")
 List<GetDomainRefCodeListDtoResponse> getRefCodeDomainList();

 @PostMapping
 @PreAuthorize("hasAnyAuthority('refcodedomain:add','refcodedomain:*','*:*')")
 CreateRefCodeDomainDtoResponse createRefCodeDomain(@Valid @RequestBody CreateRefCodeDomainDto createRefCodeDomainDto);

 @DeleteMapping(path = "/{domain}")
 @PreAuthorize("hasAnyAuthority('refcodedomain:delete','refcodedomain:*', '*:*')")
 ResponseEntity<?> deleteRefCodeDomain(@PathVariable String domain );

 @PutMapping(path = "/{domain}")
 @PreAuthorize("hasAnyAuthority('refcodedomain:edit','refcodedomain:*', '*:*')")
 UpdateRefCodeDomainDtoResponse updateRefCodeDomain(@PathVariable String domain , @Valid @RequestBody UpdateRefCodeDomainDto refCodeDomainDto);

}
