package dz.elit.sihati.application.admin.user.queries.getuser;

import dz.elit.sihati.domain.admin.OrganisationalStructure;
import dz.elit.sihati.domain.admin.User;
import dz.elit.sihati.domain.exceptions.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
class GetUserService implements GetUserUseCase {

    private final GetUserLoad getUserLoad;
    private final GetUserMapper getUserMapper;

    @Override
    public GetUserDtoResponse execute(String userName) {
       User user = getUserLoad.findOneByUsername(userName).orElseThrow(()-> new ResourceNotFoundException(String.format("user with username : %s is not Exist",userName)));
        OrganisationalStructure uo=null;
     if(user.getOrganisationalStructure()!=null){

           uo=user.getOrganisationalStructure();

         uo.setVersion(uo.getVersion());
         if(uo.getParentOrganisationalStructure()!=null){
             uo=uo.getParentOrganisationalStructure();

             uo.setVersion(uo.getVersion());
             if(uo.getParentOrganisationalStructure()!=null){
                 uo=uo.getParentOrganisationalStructure();

                 uo.setVersion(uo.getVersion());
                 if(uo.getParentOrganisationalStructure()!=null){
                     uo=uo.getParentOrganisationalStructure();

                     uo.setVersion(uo.getVersion());
                  }
             }
         }
     }
        GetUserDtoResponse dtoResponse=     getUserMapper.userToGetUserDtoResponse(user);

       return dtoResponse;
    }
}
