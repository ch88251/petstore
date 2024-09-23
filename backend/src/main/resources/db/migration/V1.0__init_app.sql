create sequence hibernate_sequence START WITH 100 INCREMENT BY 1;

create table "customer"
(
    "id"                 bigint    not null,
    "date_created"       timestamp not null,
    "date_modified"      timestamp,
    "first_name"         varchar(255),
    "last_name"          varchar(255),    
    "email"              varchar(255),
    "phone_number"       varchar(255),
    "address1"      varchar(255),
    "address2"      varchar(255),
    "city"               varchar(32),
    "state"              varchar(32),
    "zip_code"           varchar(10),
    "enabled"            boolean   not null
);
alter table "customer"
    add constraint "customer_pk" primary key ("id");
