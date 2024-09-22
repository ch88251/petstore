create sequence hibernate_sequence START WITH 100 INCREMENT BY 1;

create table "carts"
(
    "id"                 bigint       not null,
    "created_date"       timestamp    not null,
    "last_modified_date" timestamp,
    "status"             varchar(255) not null,
    "customer_id"        bigint
);
alter table "carts"
    add constraint "cart_pk" primary key ("id");

create table "customers"
(
    "id"                 bigint    not null,
    "created_date"       timestamp not null,
    "last_modified_date" timestamp,
    "email"              varchar(255),
    "enabled"            boolean   not null,
    "first_name"         varchar(255),
    "last_name"          varchar(255),
    "telephone"          varchar(255)
);
alter table "customers"
    add constraint "customer_pk" primary key ("id");

alter table "carts"
    add constraint "cart_fk" foreign key ("customer_id") references "customers" ("id");
