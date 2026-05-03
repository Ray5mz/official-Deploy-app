package dz.elit.sihati.application.reference.Provider.providerbycat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class GetProviderBySpeDtoResponse {

    private String name;
    private String phone;
    private String email;
    private String address;
    private String code ;

}
