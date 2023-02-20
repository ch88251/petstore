package com.cfhayes.petstore.domain;

import com.cfhayes.petstore.domain.enums.CartStatus;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@Entity
@Table(name = "carts")
public class Cart extends AbstractEntity {

    @ManyToOne
    private Customer customer;

    @NotNull
    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private CartStatus status;
}