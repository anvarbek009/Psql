-- create table english_e(
--     id serial primary key,
--     t_name varchar (20),
--     s_name varchar (20)
-- );
-- insert into english_e(t_name, s_name) values('Abror','Bekzod'),('Muhammadali','Sardor');
-- insert into english_e(t_name) values('Abdulaziz');
-- create table it_e(
--     id serial primary key,
--     t_name varchar (20),
--     s_name varchar (20)
-- );
-- insert into it_e(t_name, s_name) values('Aziza','Nodira'),('Abdulloh','Abdujabbor');
-- insert into it_e(t_name) values('Nodir');
-- create table ru_e(
--     id serial primary key,
--     t_name varchar (20),
--     s_name varchar (20)
-- );
-- insert into ru_e(t_name) values('Azim');
-- insert into ru_e(t_name, s_name) values('Gulya','Ezoza'),('Muslima','Soliha');
-- SELECT e.s_name,i.s_name,r.s_name from english_e as e 
-- full join it_e i on e.s_name=i.s_name
-- full join ru_e r on e.s_name=r.s_name;
-- Homework
CREATE TABLE eng_kurslari (
    id SERIAL PRIMARY KEY,
    teacher_name VARCHAR,
    student_name VARCHAR
);

CREATE TABLE ru_kurslari (
    id SERIAL PRIMARY KEY,
    teacher_name VARCHAR,
    student_name VARCHAR
);

CREATE TABLE it_kurslari (
    id SERIAL PRIMARY KEY,
    teacher_name VARCHAR,
    student_name VARCHAR
);

INSERT INTO
    eng_kurslari (teacher_name, student_name)
VALUES
    ('John Smith', 'Alice Johnson'),
    ('Emma Brown', 'Bob Williams'),
    ('Michael Davis', 'Ella Wilson'),
    ('George Miller', NULL),
    ('Sophia Taylor', NULL);

INSERT INTO
    ru_kurslari (teacher_name, student_name)
VALUES
    ('Ivan Petrov', 'Olga Smirnova'),
    ('Maria Ivanova', NULL),
    ('Pavel Kuznetsov', 'Svetlana Volkova'),
    ('Nikolay Fedorov', NULL),
    ('Anna Popova', 'Dmitry Sokolov');

INSERT INTO
    it_kurslari (teacher_name, student_name)
VALUES
    ('Giuseppe Rossi', 'Giovanni Russo'),
    ('Sofia Romano', NULL),
    ('Marco De Luca', 'Paolo Ricci'),
    ('Luca Conti', NULL),
    ('Antonio Ferrari', NULL);

-- Barcha o'quvchilar
SELECT
    e.student_name,
    r.student_name,
    i.student_name
from
    eng_kurslari as e 
    full join ru_kurslari r on e.student_name = r.student_name 
    full join it_kurslari i on e.student_name = i.student_name;

-- Barcha ustozlar👇👇👇
SELECT
    e.teacher_name,
    r.teacher_name,
    i.teacher_name
from
    eng_kurslari as e 
    full join ru_kurslari r on e.teacher_name = r.teacher_name 
    full join it_kurslari i on e.teacher_name = i.teacher_name;

-- Barcha o'quvchilar soni👇👇👇
SELECT
    count(e.student_name)+count(r.student_name)+count(i.student_name)
from
    eng_kurslari as e 
    full join ru_kurslari r on e.student_name = r.student_name 
    full join it_kurslari i on e.student_name = i.student_name;

-- Barcha ustozlar soni👇👇👇
SELECT
    count(e.teacher_name)+count(r.teacher_name)+count(i.teacher_name)
from
    eng_kurslari as e 
    full join ru_kurslari r on e.teacher_name = r.teacher_name 
    full join it_kurslari i on e.teacher_name = i.teacher_name;

-- IT kursiga bormaydiganlar soni👇👇👇
SELECT
    eng_kurslari.student_name,
    ru_kurslari.student_name
FROM
    eng_kurslari
    full join ru_kurslari on eng_kurslari.id = ru_kurslari.id 
    full join it_kurslari on eng_kurslari.id = it_kurslari.id 
where  it_kurslari.student_name is not null;

-- Rus tili kursiga bormaydiganlar soni👇👇👇
SELECT
    eng_kurslari.student_name,
    ru_kurslari.student_name
FROM
    eng_kurslari
    full join ru_kurslari on eng_kurslari.id = ru_kurslari.id 
    full join it_kurslari on eng_kurslari.id = it_kurslari.id 
where  it_kurslari.student_name is not null;

-- English kursiga bormaydiganlar soni👇👇👇
SELECT
    eng_kurslari.student_name,
    ru_kurslari.student_name
FROM
    eng_kurslari
    full join ru_kurslari on eng_kurslari.id = ru_kurslari.id 
    full join it_kurslari on eng_kurslari.id = it_kurslari.id 
where  it_kurslari.student_name is not null;

