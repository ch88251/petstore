package com.cfhayes.petstore.domain;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Embeddable
public class Address {

    @Column(name = "address_1")
    private String address1;

    @Column(name = "address_2")
    private String address2;

    @Column(name = "city")
    private String city;

    @NotNull
    @Size(max = 2)
    @Column(name = "state", length = 2, nullable = false)
    private String state;

    @NotNull
    @Size(max = 10)
    @Column(name = "zipcode", length = 10, nullable = false)
    private String zipcode;

}
