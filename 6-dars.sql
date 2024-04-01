-- CREATE TABLE Users(
--     ID BIGSERIAL PRIMARY KEY,
--     Name VARCHAR(32),
--     Age SERIAL
-- );

-- CREATE TABLE Shoes(
--     ID BIGSERIAL PRIMARY KEY,
--     Name VARCHAR(32),
--     Price BIGSERIAL
-- );

-- CREATE TABLE Savdo(
--     ID BIGSERIAL PRIMARY KEY,
--     User_id BIGSERIAL REFERENCES users(ID),
--     Shoes_id BIGSERIAL REFERENCES shoes(ID)
-- );

-- INSERT INTO
--     Users(Name, Age)
-- VALUES
--     ('Bekzod', 17),
--     ('Anvar', 15),
--     ('Abdulaziz', 20);

-- INSERT INTO
--     Shoes(Name, Price)
-- VALUES
--     ('Kepka', 20),
--     ('Shim', 15),
--     ('Tufli', 30);

-- INSERT INTO
--     Savdo(User_id, Shoes_id)
-- VALUES
--     (2, 1),
--     (3, 1),
--     (1, 2),
--     (3, 3),
--     (2, 2),
--     (1, 1),
--     (1, 3);

-- homework
-- CREATE TABLE Users(
--     ID BIGSERIAL PRIMARY KEY,
--     Name VARCHAR(32),
--     Age SERIAL
-- );

-- CREATE TABLE Shoes(
--     ID BIGSERIAL PRIMARY KEY,
--     Name VARCHAR(32),
--     Price BIGSERIAL
-- );

-- CREATE TABLE Savdo(
--     ID BIGSERIAL PRIMARY KEY,
--     User_id BIGSERIAL REFERENCES users(ID),
--     Shoes_id BIGSERIAL REFERENCES shoes(ID)
-- );

-- INSERT INTO
--     Users(Name, Age)
-- VALUES
--     ('Bekzod', 17),
--     ('Anvar', 15),
--     ('Abdulaziz', 20);

-- INSERT INTO
--     Shoes(Name, Price)
-- VALUES
--     ('Kepka', 20),
--     ('Shim', 15),
--     ('Tufli', 30);

-- INSERT INTO
--     Savdo(User_id, Shoes_id)
-- VALUES
--     (2, 1),
--     (3, 1),
--     (1, 2),
--     (3, 3),
--     (2, 2),
--     (1, 1),
--     (1, 3);

-- HOMEWORK

CREATE TABLE "Dars_jadvali"(
    "ID" BIGINT NOT NULL,
    "Techaer_id" SERIAL NOT NULL,
    "Day_id" SERIAL NOT NULL,
    "Group_id" SERIAL NOT NULL
);
ALTER TABLE
    "Dars_jadvali" ADD PRIMARY KEY("ID");
CREATE TABLE "Week"(
    "id" BIGINT NOT NULL,
    "Name_day" VARCHAR(255) NOT NULL,
    "date" DATE NOT NULL
);
ALTER TABLE
    "Week" ADD PRIMARY KEY("id");
CREATE TABLE "Teacher"(
    "ID" BIGINT NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "Surname" VARCHAR(255) NOT NULL,
    "Skills" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Teacher" ADD PRIMARY KEY("ID");
CREATE TABLE "Students"(
    "ID" BIGINT NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "Surname" VARCHAR(255) NOT NULL,
    "Age" BIGINT NOT NULL,
    "Group_id" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Students" ADD PRIMARY KEY("ID");
CREATE TABLE "Groups"(
    "ID" bigserial NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "Time" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "Description" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Groups" ADD PRIMARY KEY("ID");
ALTER TABLE
    "Dars_jadvali" ADD CONSTRAINT "dars_jadvali_day_id_foreign" FOREIGN KEY("Day_id") REFERENCES "Week"("id");
ALTER TABLE
    "Dars_jadvali" ADD CONSTRAINT "dars_jadvali_techaer_id_foreign" FOREIGN KEY("Techaer_id") REFERENCES "Teacher"("ID");
ALTER TABLE
    "Students" ADD CONSTRAINT "students_group_id_foreign" FOREIGN KEY("Group_id") REFERENCES "Groups"("ID");
ALTER TABLE
    "Dars_jadvali" ADD CONSTRAINT "dars_jadvali_group_id_foreign" FOREIGN KEY("Group_id") REFERENCES "Groups"("ID");


-- 2-vazifa

CREATE TABLE "Dori"(
    "id" BIGINT NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "Date" TIMESTAMP(0) WITH
        TIME zone NOT NULL,
        "Price" INTEGER NOT NULL,
        "Description" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Dori" ADD PRIMARY KEY("id");
CREATE TABLE "Dorixona"(
    "id" bigserial NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "Location" VARCHAR(255) NOT NULL,
    "Seller_id" BIGINT NOT NULL,
    "Dori_id" BIGINT NOT NULL
);
ALTER TABLE
    "Dorixona" ADD PRIMARY KEY("id");
CREATE TABLE "Users"(
    "id" BIGINT NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "Dori_id" VARCHAR(255) NOT NULL,
    "Age" INTEGER NOT NULL
);
ALTER TABLE
    "Users" ADD PRIMARY KEY("id");
CREATE TABLE "Seller"(
    "id" BIGINT NOT NULL,
    "Name" VARCHAR(255) NOT NULL,
    "Skills" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Seller" ADD PRIMARY KEY("id");
ALTER TABLE
    "Dorixona" ADD CONSTRAINT "dorixona_dori_id_foreign" FOREIGN KEY("Dori_id") REFERENCES "Dori"("id");
ALTER TABLE
    "Dorixona" ADD CONSTRAINT "dorixona_seller_id_foreign" FOREIGN KEY("Seller_id") REFERENCES "Seller"("id");
ALTER TABLE
    "Users" ADD CONSTRAINT "users_dori_id_foreign" FOREIGN KEY("Dori_id") REFERENCES "Dori"("id");