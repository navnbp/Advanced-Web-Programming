
    create table application (
        application_id  serial not null,
        submittedOn timestamp,
        term varchar(255) not null,
        dept_id int4,
        program_program_id int4,
        status_id int4,
        primary key (application_id)
    );

    create table application_application_status_update_history (
        application_application_id int4 not null,
        statusUpdateHistory_update_history_id int4 not null
    );

    create table application_status (
        id  serial not null,
        status varchar(255) not null,
        primary key (id)
    );

    create table application_status_update_history (
        update_history_id  serial not null,
        changed_date timestamp,
        comments varchar(255),
        application_application_id int4,
        changedBy_user_id int4,
        statusChangedTo_id int4,
        primary key (update_history_id)
    );

    create table application_student_additional_records (
        application_application_id int4 not null,
        additionalRecords_additional_record_id int4 not null
    );

    create table department (
        id  serial not null,
        name varchar(255),
        primary key (id)
    );

    create table department_additional_filed (
        additional_field_id  serial not null,
        field_name varchar(255),
        field_value_type varchar(255),
        optional boolean,
        primary key (additional_field_id)
    );

    create table department_department_additional_filed (
        department_id int4 not null,
        additionalFields_additional_field_id int4 not null
    );

    create table department_program (
        department_id int4 not null,
        programs_program_id int4 not null
    );

    create table program (
        program_id  serial not null,
        program_name varchar(255),
        primary key (program_id)
    );

    create table role (
        role_id  serial not null,
        role_name varchar(255) not null,
        primary key (role_id)
    );

    create table student_academic_record (
        academic_record_id  serial not null,
        gpa float4,
        gre int4,
        tofel int4,
        transcript varchar(255),
        primary key (academic_record_id)
    );

    create table student_additional_records (
        additional_record_id  serial not null,
        fieldValue varchar(255) not null,
        additionalField_additional_field_id int4,
        application_application_id int4,
        primary key (additional_record_id)
    );

    create table student_educational_background (
        educational_background_id  serial not null,
        degree varchar(255) not null,
        end_date timestamp,
        major varchar(255) not null,
        start_date timestamp,
        university varchar(255) not null,
        primary key (educational_background_id)
    );

    create table student_info (
        student_id  serial not null,
        cin varchar(255),
        citizenship varchar(255),
        dob timestamp,
        email varchar(255) not null,
        first_name varchar(255) not null,
        gender varchar(255),
        international_student boolean,
        last_name varchar(255) not null,
        phone_number varchar(255),
        academicRecords_academic_record_id int4,
        application_application_id int4,
        primary key (student_id)
    );

    create table student_info_student_educational_background (
        student_info_student_id int4 not null,
        educationalBackground_educational_background_id int4 not null
    );

    create table users (
        user_id  serial not null,
        email_id varchar(512) not null,
        first_name varchar(512) not null,
        last_name varchar(512) not null,
        pwd varchar(255) not null,
        role_role_id int4,
        primary key (user_id)
    );

    create table users_student_info (
        users_user_id int4 not null,
        studentInformation_student_id int4 not null
    );

    alter table application_application_status_update_history 
        add constraint UK_c0qvt1jorampb2xyrqmvtn0d2 unique (statusUpdateHistory_update_history_id);

    alter table application_student_additional_records 
        add constraint UK_9gsugjwqchy3i4yh0ct5wyjhr unique (additionalRecords_additional_record_id);

    alter table department_department_additional_filed 
        add constraint UK_jdsqtxr1musgtgy8fi1p3cac8 unique (additionalFields_additional_field_id);

    alter table department_program 
        add constraint UK_evwy0ix63mqurgd67tiw54cpi unique (programs_program_id);

    alter table student_info_student_educational_background 
        add constraint UK_o8hn0qns387bvr4s2ph6l5j3o unique (educationalBackground_educational_background_id);

    alter table users_student_info 
        add constraint UK_aph7l3comiq0b8gpkryi5ivfe unique (studentInformation_student_id);

    alter table application 
        add constraint FK_j3bac6b5yfyi4n4whpcd1wunl 
        foreign key (dept_id) 
        references department;

    alter table application 
        add constraint FK_spxqwed00hxdh65xanthn05l7 
        foreign key (program_program_id) 
        references program;

    alter table application 
        add constraint FK_5yrcnwlc91l320nm4do3c4nk2 
        foreign key (status_id) 
        references application_status;

    alter table application_application_status_update_history 
        add constraint FK_c0qvt1jorampb2xyrqmvtn0d2 
        foreign key (statusUpdateHistory_update_history_id) 
        references application_status_update_history;

    alter table application_application_status_update_history 
        add constraint FK_nvb0ih01oga762ce3isip8p70 
        foreign key (application_application_id) 
        references application;

    alter table application_status_update_history 
        add constraint FK_bld97y1rimexnawyj34fbd7la 
        foreign key (application_application_id) 
        references application;

    alter table application_status_update_history 
        add constraint FK_iycwntwmsc64sfanr71do0c60 
        foreign key (changedBy_user_id) 
        references users;

    alter table application_status_update_history 
        add constraint FK_nxssl08uyww6uu0n12gagsbnt 
        foreign key (statusChangedTo_id) 
        references application_status;

    alter table application_student_additional_records 
        add constraint FK_9gsugjwqchy3i4yh0ct5wyjhr 
        foreign key (additionalRecords_additional_record_id) 
        references student_additional_records;

    alter table application_student_additional_records 
        add constraint FK_nm0rdvyc3kwugwdvh01c9bwii 
        foreign key (application_application_id) 
        references application;

    alter table department_department_additional_filed 
        add constraint FK_jdsqtxr1musgtgy8fi1p3cac8 
        foreign key (additionalFields_additional_field_id) 
        references department_additional_filed;

    alter table department_department_additional_filed 
        add constraint FK_9opcm5n0wcnk3h2brha82ljoj 
        foreign key (department_id) 
        references department;

    alter table department_program 
        add constraint FK_evwy0ix63mqurgd67tiw54cpi 
        foreign key (programs_program_id) 
        references program;

    alter table department_program 
        add constraint FK_kk3uyb0bjxh58yfcyda4d2cw 
        foreign key (department_id) 
        references department;

    alter table student_additional_records 
        add constraint FK_g8k0oej7qy2b9fb831ie600r7 
        foreign key (additionalField_additional_field_id) 
        references department_additional_filed;

    alter table student_additional_records 
        add constraint FK_sstxeslk81cpnp6a7fovdh1dr 
        foreign key (application_application_id) 
        references application;

    alter table student_info 
        add constraint FK_ixjixhidhag0689shdled3y1 
        foreign key (academicRecords_academic_record_id) 
        references student_academic_record;

    alter table student_info 
        add constraint FK_5hnxhdsi0bc474hn57ud9xjjy 
        foreign key (application_application_id) 
        references application;

    alter table student_info_student_educational_background 
        add constraint FK_o8hn0qns387bvr4s2ph6l5j3o 
        foreign key (educationalBackground_educational_background_id) 
        references student_educational_background;

    alter table student_info_student_educational_background 
        add constraint FK_f9jhr4ou8unuwa6kaydvgrbtp 
        foreign key (student_info_student_id) 
        references student_info;

    alter table users 
        add constraint FK_jf70npbpbfq5iablqilgndfq5 
        foreign key (role_role_id) 
        references role;

    alter table users_student_info 
        add constraint FK_aph7l3comiq0b8gpkryi5ivfe 
        foreign key (studentInformation_student_id) 
        references student_info;

    alter table users_student_info 
        add constraint FK_s0ntdg2ujgf9ivqqe84hrmoc6 
        foreign key (users_user_id) 
        references users;
        

INSERT INTO role(role_name) VALUES ('ADMIN');
INSERT INTO role(role_name) VALUES ('STAFF');
INSERT INTO role(role_name) VALUES ('STUDENT');


INSERT INTO users( email_id, first_name, last_name, pwd, role_role_id)
    VALUES ('admin@localhost.localdomain', 'ADMIN', 'ADMIN', 'abcd', 1);
INSERT INTO users( email_id, first_name, last_name, pwd, role_role_id)
    VALUES ('staff1@localhost.localdomain', 'Staff', '1', 'staff1', 2);
INSERT INTO users(email_id, first_name, last_name, pwd, role_role_id)
    VALUES ('staff2@localhost.localdomain', 'Staff', '2', 'staff2', 2);
INSERT INTO users( email_id, first_name, last_name, pwd, role_role_id)
    VALUES ('student1@localhost.localdomain', 'Student1', 'A', 'student1', 3);
INSERT INTO users( email_id, first_name, last_name, pwd, role_role_id)
    VALUES ('student2@localhost.localdomain', 'Student2', 'B', 'student2', 3);

INSERT INTO application_status(id,status) VALUES (1,'New');
INSERT INTO application_status(id,status) VALUES (2,'Pending Review');
INSERT INTO application_status(id,status) VALUES (3,'Denied');
INSERT INTO application_status(id,status) VALUES (4,'Recommend Admit');
INSERT INTO application_status(id,status) VALUES (5,'Recommend Admit With Condition');
INSERT INTO application_status(id,status) VALUES (6,'Saved');

INSERT INTO department(name) VALUES ('Accounting');
INSERT INTO department(name) VALUES ('Computer Science');

INSERT INTO program(program_name) VALUES ('MS in Accounting');
INSERT INTO program(program_name) VALUES ('MS in Computer Science');
INSERT INTO program(program_name) VALUES ('MS in Finance');

INSERT INTO department_program(department_id, programs_program_id)VALUES (1,1);
INSERT INTO department_program(department_id, programs_program_id)VALUES (2,2);
INSERT INTO department_program(department_id, programs_program_id)VALUES (1,3);

INSERT INTO department_additional_filed(field_name, field_value_type, optional)VALUES ('GMAT', 'Number', false);
INSERT INTO department_additional_filed(field_name, field_value_type, optional)VALUES ('Resume', 'File', false);
INSERT INTO department_additional_filed(field_name, field_value_type, optional)VALUES ('LOR', 'File', false);
INSERT INTO department_additional_filed(field_name, field_value_type, optional)VALUES ('Resume', 'File', false);

INSERT INTO department_department_additional_filed(department_id, additionalfields_additional_field_id)VALUES (1,1);
INSERT INTO department_department_additional_filed(department_id, additionalfields_additional_field_id)VALUES (1,2);
INSERT INTO department_department_additional_filed(department_id, additionalfields_additional_field_id)VALUES (2,3);
INSERT INTO department_department_additional_filed(department_id, additionalfields_additional_field_id)VALUES (2,4);


--INSERT INTO student_academic_record(gpa,gre, tofel, transcript)   VALUES (3.2,0, 82, 'File');
--INSERT INTO student_academic_record(gpa,gre, tofel, transcript)    VALUES (3.8,0, 79, 'File');
    
--INSERT INTO student_info( citizenship, dob, email, first_name, gender, international_student, last_name, phone_number, academicrecords_academic_record_id)
--VALUES ('India', '1990-08-13', 'student1@localhost.localdomain', 'Student1', 'male', true, 'A','1234567890', 1);
--INSERT INTO student_info( citizenship, dob, email, first_name, gender, international_student, last_name, phone_number, academicrecords_academic_record_id)
--VALUES ('India', '1991-01-01', 'student2@localhost.localdomain', 'Student2', 'male', true, 'B','1234567890', 1);

--INSERT INTO application(  term,dept_id, program_program_id, status_id)    VALUES ( 'Fall 2016',1, 1, 1);
    
--UPDATE application   SET  submittedon='2016-01-01 00:00:00' WHERE application_id=1;
    
--INSERT INTO student_info_application(student_info_student_id, applications_application_id)  VALUES (1, 1);    
    
--INSERT INTO student_additional_records(fieldvalue, additionalfield_additional_field_id, 
--application_application_id) VALUES ('960', 1, 1);
--INSERT INTO student_additional_records(fieldvalue, additionalfield_additional_field_id, 
--application_application_id)  VALUES ('File', 2, 1);

-- INSERT INTO student_info_student_additional_records(student_info_student_id, additionalrecords_additional_record_id)VALUES (1, 1);
-- INSERT INTO student_info_student_additional_records(student_info_student_id, additionalrecords_additional_record_id)VALUES (1, 2);

--INSERT INTO student_educational_background(degree, end_date, major, start_date, university)
--VALUES ('B.E', '2012-05-01', 'Computer Science', '2008-08-01', 'VTU');
--INSERT INTO student_educational_background(degree, end_date, major, start_date, university)
--VALUES ('B.E', '2011-05-01', 'Information Science', '2007-08-01', 'Anna');

--INSERT INTO student_info_student_educational_background(student_info_student_id, educationalbackground_educational_background_id)
--VALUES (1, 1);
--INSERT INTO student_info_student_educational_background(student_info_student_id, educationalbackground_educational_background_id)
--VALUES (2, 2);

--INSERT INTO application_student_additional_records(application_application_id, additionalrecords_additional_record_id)
--VALUES (1, 1);
--INSERT INTO application_student_additional_records(application_application_id, additionalrecords_additional_record_id)
--VALUES (1, 2);



