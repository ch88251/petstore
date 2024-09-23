package petstore.service;

import lombok.NoArgsConstructor;
import petstore.domain.Address;
import petstore.web.dto.AddressDto;
import lombok.AccessLevel;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class AddressService {

    public static Address createFromDto(AddressDto addressDto) {
        return new Address(
                addressDto.getAddress1(),
                addressDto.getAddress2(),
                addressDto.getCity(),
                addressDto.getState(),
                addressDto.getZipCode()
        );
    }

    public static AddressDto mapToDto(Address address) {
        return new AddressDto(
                address.getAddress1(),
                address.getAddress2(),
                address.getCity(),
                address.getState(),
                address.getZipCode()
        );

    }
}
