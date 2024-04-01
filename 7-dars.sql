-- create database cars
-- create table users(
--     id bigserial primary key,
--     name varchar(29),
--     age int
-- );
-- insert into users(name, age) values
-- ('Islombek', 17),
-- ('Azizbek', 18),
-- ('Bekzod', 17);
-- create table cars(
--     id bigserial primary key ,
--     model varchar(29),
--     make varchar(29),
--     price int
-- );
-- insert into cars(model, make, price) values
-- ('Nexia2', 'GM', 7000),
-- ('BMW X7', 'BMW', 150000),
-- ('Malibu', 'GM', 35000);
-- create table savdo(
--     id bigserial primary key ,
--     users_id bigserial references users(id),
--     cars_id bigserial references cars(id)
-- );
-- insert into savdo(users_id, cars_id) values
-- (1, 2),
-- (3, 1);
-- SELECT u.id,u.name,u.age FROM users as u join savdo as s on u.id=s.users_id;
-- SELECT u.id,u.name,u.age FROM users as u left join savdo as s on u.id=s.users_id where s.users_id is null;
-- homework
-- 1-vazifa
CREATE TABLE "dars_jadval"(
    "id" BIGINT NOT NULL,
    "group_id" BIGINT NOT NULL,
    "Teacher_id" BIGINT NOT NULL,
    "subject_id" BIGINT NOT NULL,
    "date" DATE NOT NULL,
    "hafta_kuni" VARCHAR(255) NOT NULL
);

ALTER TABLE
    "dars_jadval"
ADD
    PRIMARY KEY("id");

CREATE TABLE "university"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "year" BIGINT NOT NULL,
    "addres_id" BIGINT NOT NULL
);

ALTER TABLE
    "university"
ADD
    PRIMARY KEY("id");

CREATE TABLE "imtihon_jadvali"(
    "id" BIGINT NOT NULL,
    "group_id" BIGINT NOT NULL,
    "date" DATE NOT NULL,
    "subject_id" BIGINT NOT NULL,
    "teacher_id" BIGINT NOT NULL,
    "imtihon_turi_id" BIGINT NOT NULL
);

ALTER TABLE
    "imtihon_jadvali"
ADD
    PRIMARY KEY("id");

CREATE TABLE "subject"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL
);

ALTER TABLE
    "subject"
ADD
    PRIMARY KEY("id");

CREATE TABLE "imtihon_turi"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "ball" BIGINT NOT NULL
);

ALTER TABLE
    "imtihon_turi"
ADD
    PRIMARY KEY("id");

CREATE TABLE "addres"(
    "id" BIGINT NOT NULL,
    "vil" VARCHAR(255) NOT NULL,
    "tum" VARCHAR(255) NOT NULL,
    "shahar" VARCHAR(255) NOT NULL,
    "mfy" VARCHAR(255) NOT NULL,
    "qishloq" VARCHAR(255) NOT NULL,
    "kocha" VARCHAR(255) NOT NULL,
    "uy" VARCHAR(255) NOT NULL,
    "xonadon" VARCHAR(255) NOT NULL
);

ALTER TABLE
    "addres"
ADD
    PRIMARY KEY("id");

CREATE TABLE "students"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "age" BIGINT NOT NULL,
    "addres_id" BIGINT NOT NULL,
    "group_id" BIGINT NOT NULL,
    "university_id" BIGINT NOT NULL
);

ALTER TABLE
    "students"
ADD
    PRIMARY KEY("id");

CREATE TABLE "Teacher"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "age" BIGINT NOT NULL,
    "addres_id" BIGINT NOT NULL,
    "university_id" BIGINT NOT NULL
);

ALTER TABLE
    "Teacher"
ADD
    PRIMARY KEY("id");

CREATE TABLE "group"(
    "id" BIGINT NOT NULL,
    "name" VARCHAR(255) NOT NULL
);

ALTER TABLE
    "group"
ADD
    PRIMARY KEY("id");

CREATE TABLE "result"(
    "id" BIGINT NOT NULL,
    "student_id" BIGINT NOT NULL,
    "imtihon_id" BIGINT NOT NULL,
    "ball" BIGINT NOT NULL
);

ALTER TABLE
    "result"
ADD
    PRIMARY KEY("id");

ALTER TABLE
    "Teacher"
ADD
    CONSTRAINT "teacher_addres_id_foreign" FOREIGN KEY("addres_id") REFERENCES "addres"("id");

ALTER TABLE
    "dars_jadval"
ADD
    CONSTRAINT "dars_jadval_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "group"("id");

ALTER TABLE
    "imtihon_jadvali"
ADD
    CONSTRAINT "imtihon_jadvali_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "group"("id");

ALTER TABLE
    "dars_jadval"
ADD
    CONSTRAINT "dars_jadval_subject_id_foreign" FOREIGN KEY("subject_id") REFERENCES "subject"("id");

ALTER TABLE
    "imtihon_jadvali"
ADD
    CONSTRAINT "imtihon_jadvali_teacher_id_foreign" FOREIGN KEY("teacher_id") REFERENCES "Teacher"("id");

ALTER TABLE
    "imtihon_jadvali"
ADD
    CONSTRAINT "imtihon_jadvali_subject_id_foreign" FOREIGN KEY("subject_id") REFERENCES "subject"("id");

ALTER TABLE
    "result"
ADD
    CONSTRAINT "result_imtihon_id_foreign" FOREIGN KEY("imtihon_id") REFERENCES "imtihon_turi"("id");

ALTER TABLE
    "result"
ADD
    CONSTRAINT "result_student_id_foreign" FOREIGN KEY("student_id") REFERENCES "students"("id");

ALTER TABLE
    "students"
ADD
    CONSTRAINT "students_group_id_foreign" FOREIGN KEY("group_id") REFERENCES "group"("id");

ALTER TABLE
    "imtihon_jadvali"
ADD
    CONSTRAINT "imtihon_jadvali_imtihon_turi_id_foreign" FOREIGN KEY("imtihon_turi_id") REFERENCES "imtihon_turi"("id");

ALTER TABLE
    "students"
ADD
    CONSTRAINT "students_addres_id_foreign" FOREIGN KEY("addres_id") REFERENCES "addres"("id");

ALTER TABLE
    "dars_jadval"
ADD
    CONSTRAINT "dars_jadval_teacher_id_foreign" FOREIGN KEY("Teacher_id") REFERENCES "Teacher"("id");

ALTER TABLE
    "Teacher"
ADD
    CONSTRAINT "teacher_university_id_foreign" FOREIGN KEY("university_id") REFERENCES "university"("id");

ALTER TABLE
    "students"
ADD
    CONSTRAINT "students_university_id_foreign" FOREIGN KEY("university_id") REFERENCES "university"("id");

ALTER TABLE
    "university"
ADD
    CONSTRAINT "university_addres_id_foreign" FOREIGN KEY("addres_id") REFERENCES "addres"("id");

-- 2-vazifa
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR NOT NULL
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR NOT NULL,
    student_id INTEGER REFERENCES students(student_id)
);

INSERT INTO
    students (student_name)
VALUES
    ('Alice'),
    ('Bob'),
    ('Charlie'),
    ('David'),
    ('Eva');

INSERT INTO
    courses (course_name, student_id)
VALUES
    ('Mathematics', 1),
    ('Physics', NULL),
    ('Biology', 3),
    ('Chemistry', NULL),
    ('History', 5);

SELECT
    *
FROM
    students
WHERE
    student_id NOT IN (
        SELECT
            DISTINCT student_id
        FROM
            courses
    );

SELECT
    *
FROM
    courses
WHERE
    student_id IS NULL;

SELECT
    DISTINCT c.course_id,
    c.course_name,
    s.student_name
FROM
    courses c
    JOIN students s ON c.student_id = s.student_id;