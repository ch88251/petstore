package com.cfhayes.petstore.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.time.Instant;

@Getter
@Setter
@MappedSuperclass
public abstract class AbstractEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "date_created", nullable = false)
    private Instant dateCreated = Instant.now();

    @Version
    @Column(name = "date_modified")
    private Instant dateModified;
}