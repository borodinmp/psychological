create sequence hibernate_sequence start 1 increment 1;

create table testing (
    id int8 not null,
    question varchar(255),
    checking boolean,
    primary key (id)
);

create table test_result (
    id int8 not null,
    answer boolean,
    user_id int8,
    question_id int8,
    quest varchar(255),
    check_quest boolean,
    primary key (id)
);

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    active boolean not null,
    password varchar(255) not null,
    username varchar(255) not null,
    full_name varchar(255) not null,
    primary key (id)
);

alter table if exists test_result
    add constraint test_result_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;

