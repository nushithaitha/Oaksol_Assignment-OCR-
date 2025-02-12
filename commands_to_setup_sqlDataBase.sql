create database ocr;
use ocr;

create table patient_data (
    id int auto_increment primary key,
    name varchar(100),
    dob date
);

create table form_data (
    id int auto_increment primary key,
    patient_id int,
    form_json json,
    created_at timestamp default current_timestamp,
    foreign key (patient_id) references patient_data(id)
);


show tables;
