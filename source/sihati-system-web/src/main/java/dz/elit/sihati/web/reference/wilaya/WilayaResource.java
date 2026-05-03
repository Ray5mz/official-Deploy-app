package dz.elit.sihati.web.reference.wilaya;

//import io.swagger.annotations.Api;
//import io.swagger.annotations.ApiOperation;
//import io.swagger.annotations.ApiResponse;
//import io.swagger.annotations.ApiResponses;


import dz.elit.sihati.application.reference.wilaya.queries.getwilaya.GetWilayaDtoResponse;
import dz.elit.sihati.application.reference.wilaya.queries.getwilayalist.GetWilayaListDtoResponse;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/production")
//@Api(value = "wilaya")
public interface WilayaResource {

    @GetMapping(path = "/wilaya/{code}")
    @PreAuthorize("hasAnyAuthority('wilaya:show','wilaya:*','*:*')")
//    @ApiOperation(value = "Search for a wilaya with a code")
//    @ApiResponses(value = {
//            @ApiResponse(code = 200, message = "Successfully retrieved a wilaya"),
//            @ApiResponse(code = 401, message = "You are not authorized to view the resource"),
//            @ApiResponse(code = 403, message = "Accessing the resource you were trying to reach is forbidden"),
//            @ApiResponse(code = 404, message = "The resource you were trying to reach is not found")
//    })
    public GetWilayaDtoResponse getWilaya(@PathVariable("code") String code);

    @GetMapping(path = "/wilaya")
    @PreAuthorize("hasAnyAuthority('wilaya:list','wilaya:*', '*:*')")
//    @ApiOperation(value = "View a list of available wilayas")
//    @ApiResponses(value = {
//            @ApiResponse(code = 200, message = "Successfully retrieved a list of wilayas"),
//            @ApiResponse(code = 401, message = "You are not authorized to view the resource"),
//            @ApiResponse(code = 403, message = "Accessing the resource you were trying to reach is forbidden"),
//            @ApiResponse(code = 404, message = "The resource you were trying to reach is not found")
//    })
    public List<GetWilayaListDtoResponse> getWilayaList(HttpServletRequest httpServletRequest);



}
