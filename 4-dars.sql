-- -- Dars
-- CREATE DATABASE N38;
-- CREATE TABLE IF NOT EXISTS USERS (
--     ID SERIAL PRIMARY KEY,
--     NAME VARCHAR(64) NOT NULL,
--     SURNAME VARCHAR(128),
--     AGE SMALLINT DEFAULT 18,
--     CREATED_AT TIMESTAMPTZ NOT NULL DEFAULT NOW(),
--     DELETED_AT TIMESTAMPTZ
-- );
-- INSERT INTO USERS (NAME, SURNAME, AGE) VALUES ('Ali', 'Akromov', 20);
-- insert into users (name, surname, age, created_at) values ('Adrea', 'Konzelmann', 21, '2019-11-05 07:20:35');
-- insert into users (name, surname, age, created_at) values ('Angel', 'Danniell', 40, '2022-01-27 09:39:00');
-- insert into users (name, surname, age, created_at) values ('Nahum', 'Byrd', 56, '2020-12-23 02:01:00');
-- insert into users (name, surname, age, created_at) values ('Rossy', 'Muscat', 79, '2022-09-30 04:54:03');
-- insert into users (name, surname, age, created_at) values ('Pablo', null, 70, '2023-09-18 19:31:18');
-- insert into users (name, surname, age, created_at) values ('Jillian', 'Byas', 36, '2024-01-13 00:11:29');
-- insert into users (name, surname, age, created_at) values ('Rodrique', 'Espinha', 49, '2022-10-11 23:51:11');
-- insert into users (name, surname, age, created_at) values ('Merilyn', 'Rowston', 61, '2021-12-17 17:53:00');
-- insert into users (name, surname, age, created_at) values ('Blythe', null, 40, '2019-09-11 09:46:08');
-- insert into users (name, surname, age, created_at) values ('Lowrance', 'Dormand', 61, '2023-04-30 16:19:49');
-- insert into users (name, surname, age, created_at) values ('Elbert', 'Causier', 32, '2021-10-18 08:39:22');
-- insert into users (name, surname, age, created_at) values ('Danica', 'Barkworth', 25, '2020-08-01 17:40:41');
-- insert into users (name, surname, age, created_at) values ('Joletta', null, 31, '2021-04-17 21:45:05');
-- insert into users (name, surname, age, created_at) values ('Lisabeth', 'Oldknow', 62, '2022-03-10 18:27:04');
-- insert into users (name, surname, age, created_at) values ('Gustav', 'Ciani', 80, '2023-03-03 01:28:03');
-- insert into users (name, surname, age, created_at) values ('Trent', 'Craker', 63, null);
-- insert into users (name, surname, age, created_at) values ('Dominik', null, null, '2023-08-11 17:04:17');
-- insert into users (name, surname, age, created_at) values ('Xymenes', 'Wyles', null, '2021-10-10 21:11:17');
-- insert into users (name, surname, age, created_at) values ('Luce', 'Kochs', 21, '2020-02-25 08:42:25');
-- insert into users (name, surname, age, created_at) values ('Camella', null, 23, '2020-08-14 15:27:50');
-- insert into users (name, surname, age, created_at) values ('Alidia', 'Larder', 27, '2023-03-20 21:22:22');
-- insert into users (name, surname, age, created_at) values ('Xever', 'Armatidge', null, '2021-08-02 12:22:16');
-- insert into users (name, surname, age, created_at) values ('Leigha', null, 20, '2019-05-24 13:10:43');
-- insert into users (name, surname, age, created_at) values ('Farley', 'Gyorgy', 57, '2022-01-16 22:52:09');
-- insert into users (name, surname, age, created_at) values ('Meridith', null, 67, '2021-06-17 07:41:26');
-- insert into users (name, surname, age, created_at) values ('Benny', null, 19, '2021-07-13 08:52:17');
-- insert into users (name, surname, age, created_at) values ('Marco', null, 22, '2020-05-19 07:43:13');
-- insert into users (name, surname, age, created_at) values ('Michail', 'Blakeman', 69, '2021-10-23 06:14:15');
-- insert into users (name, surname, age, created_at) values ('Harland', null, 78, '2023-04-17 02:05:21');
-- insert into users (name, surname, age, created_at) values ('Feliza', null, 59, '2019-07-30 19:36:42');
-- insert into users (name, surname, age, created_at) values ('Beatrice', null, 64, '2020-05-31 12:56:48');
-- insert into users (name, surname, age, created_at) values ('Lorianne', null, 19, '2019-08-21 13:18:38');
-- insert into users (name, surname, age, created_at) values ('Kissie', 'O'' Brian', 40, '2019-06-17 00:38:42');
-- insert into users (name, surname, age, created_at) values ('Koo', 'Matzkaitis', null, '2023-04-30 10:06:15');
-- insert into users (name, surname, age, created_at) values ('Davon', 'Proctor', 23, '2019-07-26 03:00:51');
-- insert into users (name, surname, age, created_at) values ('Cleo', 'Jakubovsky', 67, '2021-09-26 00:08:44');
-- insert into users (name, surname, age, created_at) values ('Artemus', 'Gummie', 41, '2021-07-21 19:42:52');
-- insert into users (name, surname, age, created_at) values ('Fionnula', 'Redwin', 50, '2019-06-03 06:07:11');
-- insert into users (name, surname, age, created_at) values ('Janine', 'Baniard', 25, '2023-11-11 10:12:21');
-- insert into users (name, surname, age, created_at) values ('Esmaria', 'Caldroni', 33, '2020-07-11 16:43:57');
-- SELECT 
--     ID,
--     NAME,
--     SURNAME, 
--     CONCAT(NAME, ' ',SURNAME) AS FULLNAME,
--     AGE, 
--     CREATED_AT 
-- FROM USERS;
-- -- TIME -          HH:mm
-- -- DATE -          YYYY-MM-DD
-- -- TIMESTAMP -     YYYY-MM-DD HH:mm:SS
-- -- TIMESTAMPTZ -   YYYY-MM-DD HH:mm:SS (TIMEZONE)
-- SELECT 
--     COUNT(*)
-- FROM USERS
-- WHERE 
--     LENGTH(NAME) > 5 AND AGE > 40;
-- SELECT id, name, surname, age, extract(year from created_at) FROM users;
-- SELECT * FROM USERS WHERE extract(year from created_at) = 2019;
-- SELECT * FROM USERS WHERE NAME LIKE '%a%';
-- SELECT * FROM USERS WHERE NAME ILIKE '%A%';
-- -- Vazifa-1
-- CREATE TABLE users(id SERIAL PRIMARY KEY , first_name VARCHAR(64),last_name varchar(128),email varchar(64),gender varchar(32));
-- insert into users (first_name, last_name, email, gender) values ('Dame', 'Rubinsohn', 'drubinsohn0@mac.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ('Carlita', 'Mayne', 'cmayne1@github.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ('Libbey', 'Knapp', 'lknapp2@timesonline.co.uk', 'Female');
-- insert into users (first_name, last_name, email, gender) values ('Margarette', 'Norley', 'mnorley3@last.fm', 'Female');
-- insert into users (first_name, last_name, email, gender) values ('Sheela', 'Cobello', 'scobello4@aol.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ('Rosette', 'Jewers', 'rjewers5@comcast.net', 'Female');
-- insert into users (first_name, last_name, email, gender) values ('Ofelia', 'Southcoat', 'osouthcoat6@bloglines.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ('Neda', 'Toft', 'ntoft7@list-manage.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ('Umberto', 'Aireton', 'uaireton8@bloglines.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Saba', 'Levane', 'slevane9@vkontakte.ru', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Vicky', 'Aronowicz', 'varonowicza@fda.gov', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Vaughan', 'Pyford', 'vpyfordb@umn.edu', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Sherm', 'Willison', 'swillisonc@bbb.org', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Candie', 'Pickerin', 'cpickerind@mapy.cz', 'Polygender');
-- insert into users (first_name, last_name, email, gender) values ( 'Lilia', 'Edgley', 'ledgleye@youtu.be', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Trevar', 'Lafay', 'tlafayf@ning.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Sherill', 'Delaprelle', 'sdelaprelleg@google.de', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Kirbee', 'Kun', 'kkunh@tamu.edu', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Gert', 'Adanet', 'gadaneti@unc.edu', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Lynelle', 'Driussi', 'ldriussij@ox.ac.uk', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Bar', 'Deniset', 'bdenisetk@techcrunch.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Kipper', 'Caldecott', 'kcaldecottl@weather.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Ardys', 'Bythell', 'abythellm@a8.net', 'Polygender');
-- insert into users (first_name, last_name, email, gender) values ( 'Janna', 'Heinemann', 'jheinemannn@elegantthemes.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Ariel', 'O''Grogane', 'aogroganeo@alibaba.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Abdul', 'Kaufman', 'akaufmanp@umn.edu', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Hedda', 'Cantos', 'hcantosq@linkedin.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Mina', 'Touzey', 'mtouzeyr@purevolume.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Russell', 'Stanlock', 'rstanlocks@intel.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Raviv', 'Tye', 'rtyet@apple.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Emelia', 'Campa', 'ecampau@google.it', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Alessandro', 'Haucke', 'ahauckev@oakley.com', 'Non-binary');
-- insert into users (first_name, last_name, email, gender) values ( 'Cameron', 'Skill', 'cskillw@diigo.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Raye', 'Gratrex', 'rgratrexx@europa.eu', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Dorelle', 'Rajchert', 'drajcherty@wikipedia.org', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Brandise', 'Riepel', 'briepelz@dagondesign.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Dehlia', 'Lebbern', 'dlebbern10@reference.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Lisetta', 'Fraanchyonok', 'lfraanchyonok11@ibm.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Sloan', 'Wherrit', 'swherrit12@amazon.com', 'Genderqueer');
-- insert into users (first_name, last_name, email, gender) values ( 'Durward', 'Slafford', 'dslafford13@blogspot.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Teri', 'Rotherforth', 'trotherforth14@blogs.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Rowen', 'Camock', 'rcamock15@nationalgeographic.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Meredithe', 'Barszczewski', 'mbarszczewski16@artisteer.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Dorelia', 'Chevolleau', 'dchevolleau17@nasa.gov', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Allistir', 'Beavan', 'abeavan18@nytimes.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Corissa', 'Walework', 'cwalework19@biblegateway.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Hulda', 'McGeady', 'hmcgeady1a@moonfruit.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Ryon', 'Labrom', 'rlabrom1b@theglobeandmail.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Clemence', 'Blandamore', 'cblandamore1c@goo.ne.jp', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Chris', 'Kinglake', 'ckinglake1d@weebly.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Chen', 'Behn', 'cbehn1e@wunderground.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Pacorro', 'Birds', 'pbirds1f@ucoz.ru', 'Bigender');
-- insert into users (first_name, last_name, email, gender) values ( 'Adriaens', 'Branno', 'abranno1g@rambler.ru', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Myer', 'Goody', 'mgoody1h@indiatimes.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Noemi', 'Mahody', 'nmahody1i@smh.com.au', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Roda', 'Hayler', 'rhayler1j@opera.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Brinn', 'Fruchter', 'bfruchter1k@ox.ac.uk', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Brittan', 'Govern', 'bgovern1l@freewebs.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Pinchas', 'Von Welden', 'pvonwelden1m@ucla.edu', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Robbie', 'Piesold', 'rpiesold1n@bbc.co.uk', 'Bigender');
-- insert into users (first_name, last_name, email, gender) values ( 'Sheffield', 'Collingridge', 'scollingridge1o@state.gov', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Horatius', 'Khomin', 'hkhomin1p@slideshare.net', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Grove', 'Rainforth', 'grainforth1q@buzzfeed.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Avivah', 'Clubley', 'aclubley1r@state.gov', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Ade', 'Beevens', 'abeevens1s@cdbaby.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Renate', 'Burnel', 'rburnel1t@paypal.com', 'Non-binary');
-- insert into users (first_name, last_name, email, gender) values ( 'Julio', 'Skelhorn', 'jskelhorn1u@livejournal.com', 'Genderfluid');
-- insert into users (first_name, last_name, email, gender) values ( 'Peg', 'Baguley', 'pbaguley1v@list-manage.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Drusilla', 'Sinnock', 'dsinnock1w@rediff.com', 'Genderqueer');
-- insert into users (first_name, last_name, email, gender) values ( 'Gard', 'Suero', 'gsuero1x@spiegel.de', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Dominik', 'Flukes', 'dflukes1y@qq.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Dareen', 'Doumerc', 'ddoumerc1z@spiegel.de', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Perl', 'Linsay', 'plinsay20@deviantart.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Jenda', 'Adamolli', 'jadamolli21@mapy.cz', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Bridgette', 'Ericssen', 'bericssen22@eepurl.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Weber', 'Keep', 'wkeep23@miibeian.gov.cn', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Doug', 'Mahoney', 'dmahoney24@opensource.org', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Archibaldo', 'Gyppes', 'agyppes25@wikia.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Jandy', 'Diego', 'jdiego26@webs.com', 'Polygender');
-- insert into users (first_name, last_name, email, gender) values ( 'Gael', 'Walas', 'gwalas27@goo.gl', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Demott', 'Donhardt', 'ddonhardt28@example.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Wang', 'Bodiam', 'wbodiam29@hugedomains.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Alick', 'Fillis', 'afillis2a@printfriendly.com', 'Bigender');
-- insert into users (first_name, last_name, email, gender) values ( 'Durand', 'Guierre', 'dguierre2b@sbwire.com', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Aloin', 'Swanne', 'aswanne2c@google.co.jp', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Aurthur', 'Buncom', 'abuncom2d@yandex.ru', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Isabelle', 'Coventon', 'icoventon2e@youtube.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Christin', 'Roseveare', 'croseveare2f@ftc.gov', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Allin', 'Aistrop', 'aaistrop2g@purevolume.com', 'Bigender');
-- insert into users (first_name, last_name, email, gender) values ( 'Sayre', 'Hanniger', 'shanniger2h@google.de', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Wynne', 'Skelton', 'wskelton2i@surveymonkey.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Lesya', 'McQuorkel', 'lmcquorkel2j@pcworld.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Rudy', 'Learmont', 'rlearmont2k@geocities.jp', 'Male');
-- insert into users (first_name, last_name, email, gender) values ( 'Helaina', 'Scimonelli', 'hscimonelli2l@cdbaby.com', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Leontyne', 'Kloisner', 'lkloisner2m@nyu.edu', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Frayda', 'McMurtyr', 'fmcmurtyr2n@ucsd.edu', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Karoly', 'Ellcock', 'kellcock2o@ed.gov', 'Genderfluid');
-- insert into users (first_name, last_name, email, gender) values ( 'Diahann', 'Espadater', 'despadater2p@php.net', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Lianne', 'Ferry', 'lferry2q@amazon.de', 'Female');
-- insert into users (first_name, last_name, email, gender) values ( 'Prissie', 'Corbie', 'pcorbie2r@godaddy.com', 'Female');
-- SELECT * FROM users WHERE gender='Male';
-- SELECT 
--     first_name,
--     last_name, 
--     CONCAT(first_name, ' ',last_name) AS FULLNAME,
--     email
--     gender 
-- FROM users;
-- SELECT * FROM users WHERE email LIKE '%.com';
-- SELECT * FROM users WHERE first_name ILIKE '%a%';
-- SELECT * FROM users WHERE gender='Male' LIMIT 10;
-- SELECT COUNT(*) FROM users WHERE gender = 'Female';
-- -- vazifa-2
-- CREATE TABLE airport(airport_name varchar(32), built_date DATE, plane_count SMALLINT);
-- insert into airport (airport_name, built_date, plane_count) values ('Salamanca Airport', '2010-10-13', 80);
-- insert into airport (airport_name, built_date, plane_count) values ('Cluff Lake Airport', '1956-04-06', 53);
-- insert into airport (airport_name, built_date, plane_count) values ('Pensacola Regional Airport', '1989-08-02', 77);
-- insert into airport (airport_name, built_date, plane_count) values ('Interlaken Air Base', '2004-09-29', 55);
-- insert into airport (airport_name, built_date, plane_count) values ('Westerly State Airport', '1983-06-19', 93);
-- insert into airport (airport_name, built_date, plane_count) values ('Pdte. Carlos Ibañez del Campo Airport', '2005-11-25', 70);
-- insert into airport (airport_name, built_date, plane_count) values ('Sandstone Airport', '1961-03-30', 74);
-- insert into airport (airport_name, built_date, plane_count) values ('Markovo Airport', '1982-01-10', 51);
-- insert into airport (airport_name, built_date, plane_count) values ('Moshi Airport', '1983-08-08', 55);
-- insert into airport (airport_name, built_date, plane_count) values ('Athens Ben Epps Airport', '1983-08-20', 46);
-- insert into airport (airport_name, built_date, plane_count) values ('Hat Yai International Airport', '2010-09-01', 91);
-- insert into airport (airport_name, built_date, plane_count) values ('Tydeo Larre Borges Airport', '1992-03-05', 99);
-- insert into airport (airport_name, built_date, plane_count) values ('Goondiwindi Airport', '1960-10-28', 88);
-- insert into airport (airport_name, built_date, plane_count) values ('Cattle Creek Airport', '1971-02-07', 91);
-- insert into airport (airport_name, built_date, plane_count) values ('Los Alamos Airport', '1956-08-18', 23);
-- insert into airport (airport_name, built_date, plane_count) values ('Meekatharra Airport', '2002-06-01', 62);
-- insert into airport (airport_name, built_date, plane_count) values ('Chernivtsi International Airport', '1984-01-01', 90);
-- insert into airport (airport_name, built_date, plane_count) values ('Yas Island Seaplane Base', '1983-08-07', 29);
-- insert into airport (airport_name, built_date, plane_count) values ('RAF Kinloss', '1963-09-29', 65);
-- insert into airport (airport_name, built_date, plane_count) values ('Atlas Brasil Cantanhede Airport', '1991-03-09', 20);
-- insert into airport (airport_name, built_date, plane_count) values ('Qeshm International Airport', '1979-10-18', 65);
-- insert into airport (airport_name, built_date, plane_count) values ('Karimui Airport', '1993-06-16', 70);
-- insert into airport (airport_name, built_date, plane_count) values ('Lingling Airport', '1988-08-17', 21);
-- insert into airport (airport_name, built_date, plane_count) values ('Igaliku Heliport', '1964-03-27', 24);
-- insert into airport (airport_name, built_date, plane_count) values ('Salinas Municipal Airport', '1996-04-21', 41);
-- insert into airport (airport_name, built_date, plane_count) values ('Sumter Airport', '1980-05-02', 27);
-- insert into airport (airport_name, built_date, plane_count) values ('Santa Barbara Municipal Airport', '2002-09-11', 81);
-- insert into airport (airport_name, built_date, plane_count) values ('Salina Municipal Airport', '1987-10-07', 49);
-- insert into airport (airport_name, built_date, plane_count) values ('Botucatu - Tancredo de Almeida Neves Airport', '1971-03-21', 89);
-- insert into airport (airport_name, built_date, plane_count) values ('Uriman Airport', '1993-10-01', 36);
-- insert into airport (airport_name, built_date, plane_count) values ('Vichadero Airport', '2001-09-20', 34);
-- insert into airport (airport_name, built_date, plane_count) values ('Wake Island Airfield', '1988-04-03', 47);
-- insert into airport (airport_name, built_date, plane_count) values ('Leshukonskoye Airport', '1996-05-02', 35);
-- insert into airport (airport_name, built_date, plane_count) values ('Jérémie Airport', '1977-01-31', 53);
-- insert into airport (airport_name, built_date, plane_count) values ('Kenieba Airport', '1974-12-30', 74);
-- insert into airport (airport_name, built_date, plane_count) values ('Tweed New Haven Airport', '1971-03-28', 28);
-- insert into airport (airport_name, built_date, plane_count) values ('Chernivtsi International Airport', '2001-03-07', 53);
-- insert into airport (airport_name, built_date, plane_count) values ('Hiroshimanishi Airport', '2009-04-07', 90);
-- insert into airport (airport_name, built_date, plane_count) values ('Sawan Airport', '1973-08-31', 49);
-- insert into airport (airport_name, built_date, plane_count) values ('Gambell Airport', '1981-04-23', 78);
-- insert into airport (airport_name, built_date, plane_count) values ('Juanda International Airport', '2001-04-04', 25);
-- insert into airport (airport_name, built_date, plane_count) values ('Cairns AAF (Fort Rucker) Air Field', '1987-09-01', 58);
-- insert into airport (airport_name, built_date, plane_count) values ('Sable Island Landing Strip', '1971-06-04', 66);
-- insert into airport (airport_name, built_date, plane_count) values ('Nesson Airport', '2008-04-17', 25);
-- insert into airport (airport_name, built_date, plane_count) values ('Rendani Airport', '1998-09-12', 83);
-- insert into airport (airport_name, built_date, plane_count) values ('Tabuk Airport', '1979-02-07', 58);
-- insert into airport (airport_name, built_date, plane_count) values ('Nyurba Airport', '1991-05-25', 66);
-- insert into airport (airport_name, built_date, plane_count) values ('Roben Hood Airport', '2004-01-07', 37);
-- insert into airport (airport_name, built_date, plane_count) values ('Debre Tabor Airport', '2006-07-31', 76);
-- insert into airport (airport_name, built_date, plane_count) values ('Hanimaadhoo Airport', '2008-09-20', 63);
-- insert into airport (airport_name, built_date, plane_count) values ('Cataratas International Airport', '1959-09-02', 87);
-- insert into airport (airport_name, built_date, plane_count) values ('Glasgow Prestwick Airport', '2004-06-03', 71);
-- insert into airport (airport_name, built_date, plane_count) values ('Homer Airport', '1980-01-25', 56);
-- insert into airport (airport_name, built_date, plane_count) values ('Košice Airport', '1960-06-16', 30);
-- insert into airport (airport_name, built_date, plane_count) values ('Ormara Airport', '1989-09-21', 30);
-- insert into airport (airport_name, built_date, plane_count) values ('Vila Real Airport', '2001-09-29', 59);
-- insert into airport (airport_name, built_date, plane_count) values ('Yola Airport', '1992-12-28', 40);
-- insert into airport (airport_name, built_date, plane_count) values ('Zabreh Ostrava Airport', '1989-11-10', 99);
-- insert into airport (airport_name, built_date, plane_count) values ('Fazenda Cataco Airport', '1985-08-06', 98);
-- insert into airport (airport_name, built_date, plane_count) values ('Sidney Municipal Airport', '1989-01-04', 66);
-- insert into airport (airport_name, built_date, plane_count) values ('Goundam Airport', '1968-06-10', 42);
-- insert into airport (airport_name, built_date, plane_count) values ('Chennai International Airport', '1988-04-17', 74);
-- insert into airport (airport_name, built_date, plane_count) values ('Oxnard Airport', '1963-05-14', 67);
-- insert into airport (airport_name, built_date, plane_count) values ('Diyawanna Oya Seaplane Base', '1986-10-23', 65);
-- insert into airport (airport_name, built_date, plane_count) values ('Arrabury Airport', '1993-01-26', 49);
-- insert into airport (airport_name, built_date, plane_count) values ('Menorca Airport', '1965-02-11', 43);
-- insert into airport (airport_name, built_date, plane_count) values ('Dr Juan Plate Airport', '1978-02-07', 59);
-- insert into airport (airport_name, built_date, plane_count) values ('New Ishigaki Airport', '1994-04-04', 54);
-- insert into airport (airport_name, built_date, plane_count) values ('Stroudsburg Pocono Airport', '1972-11-06', 51);
-- insert into airport (airport_name, built_date, plane_count) values ('Amman-Marka International Airport', '1970-11-21', 40);
-- insert into airport (airport_name, built_date, plane_count) values ('Taliabu Island Airport', '1992-07-05', 27);
-- insert into airport (airport_name, built_date, plane_count) values ('Hana Airport', '1966-09-27', 51);
-- insert into airport (airport_name, built_date, plane_count) values ('La Cumbre Airport', '1984-03-06', 38);
-- insert into airport (airport_name, built_date, plane_count) values ('General Manuel Carlos Piar International Airport', '1983-09-26', 24);
-- insert into airport (airport_name, built_date, plane_count) values ('Paradise River Airport', '1968-01-06', 21);
-- insert into airport (airport_name, built_date, plane_count) values ('Aratika Nord Airport', '1974-11-06', 48);
-- insert into airport (airport_name, built_date, plane_count) values ('Komatsu Airport', '1965-04-22', 39);
-- insert into airport (airport_name, built_date, plane_count) values ('Balmaceda Airport', '2005-09-21', 24);
-- insert into airport (airport_name, built_date, plane_count) values ('El Nido Airport', '2001-05-13', 71);
-- insert into airport (airport_name, built_date, plane_count) values ('Albert Whitted Airport', '1968-06-03', 20);
-- insert into airport (airport_name, built_date, plane_count) values ('Allegheny County Airport', '1963-05-26', 64);
-- insert into airport (airport_name, built_date, plane_count) values ('Silvio Pettirossi International Airport', '1972-07-11', 93);
-- insert into airport (airport_name, built_date, plane_count) values ('Creech Air Force Base', '2007-05-29', 100);
-- insert into airport (airport_name, built_date, plane_count) values ('Port St Johns Airport', '1990-01-11', 96);
-- insert into airport (airport_name, built_date, plane_count) values ('Cataratas Del Iguazú International Airport', '1967-08-29', 53);
-- insert into airport (airport_name, built_date, plane_count) values ('Igloolik Airport', '1990-09-16', 90);
-- insert into airport (airport_name, built_date, plane_count) values ('Puerto La Victoria Airport', '1996-02-18', 67);
-- insert into airport (airport_name, built_date, plane_count) values ('Ewo Airport', '1972-03-09', 51);
-- insert into airport (airport_name, built_date, plane_count) values ('Wana Airport', '2007-06-28', 87);
-- insert into airport (airport_name, built_date, plane_count) values ('Nieuw Nickerie Airport', '1978-06-16', 48);
-- insert into airport (airport_name, built_date, plane_count) values ('Havadarya Airport', '1970-02-23', 66);
-- insert into airport (airport_name, built_date, plane_count) values ('Tweed New Haven Airport', '1979-12-15', 27);
-- insert into airport (airport_name, built_date, plane_count) values ('Lifou Airport', '2006-01-09', 66);
-- insert into airport (airport_name, built_date, plane_count) values ('Atauro Airport', '2002-12-25', 32);
-- insert into airport (airport_name, built_date, plane_count) values ('Webster City Municipal Airport', '1969-05-13', 61);
-- insert into airport (airport_name, built_date, plane_count) values ('Bahir Dar Airport', '1956-10-29', 88);
-- insert into airport (airport_name, built_date, plane_count) values ('Chetwynd Airport', '1964-02-07', 76);
-- insert into airport (airport_name, built_date, plane_count) values ('Josephstaal Airport', '1966-04-17', 94);
-- insert into airport (airport_name, built_date, plane_count) values ('Aratika Nord Airport', '2006-08-24', 40);
-- insert into airport (airport_name, built_date, plane_count) values ('Saidu Sharif Airport', '1956-03-15', 26);
-- SELECT * FROM airport WHERE airport_name LIKE 'A%';
-- SELECT * FROM airport WHERE extract(year from built_date)>20;





-- Homework
-- 1-vazifa
CREATE TABLE computers (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    cpu VARCHAR(50),
    frequency DECIMAL(3, 1),
    ram INT,
    os VARCHAR(50),
    price DECIMAL(6, 2)
);

INSERT INTO
    computers (brand, model, cpu, frequency, ram, os, price)
VALUES
    (
        'Apple',
        'MacBook Pro',
        'Intel Core i7',
        3.9,
        16,
        'macOS',
        2500
    ),
    (
        'Apple',
        'MacBook Air',
        'Intel Core i5',
        1.8,
        8,
        'macOS',
        1200
    ),
    (
        'ASUS',
        'ZenBook',
        'Intel Core i7',
        2.5,
        8,
        'Windows 10',
        1000
    ),
    (
        'ASUS',
        'VivoBook',
        'AMD Ryzen 5',
        2.3,
        8,
        'Windows 10',
        800
    ),
    (
        'HP',
        'Pavilion',
        'Intel Core i5',
        2.2,
        8,
        'Windows 10',
        900
    ),
    (
        'Apple',
        'MacBook Pro 16',
        'Intel Core i9',
        2.6,
        32,
        'macOS',
        3000
    ),
    (
        'ASUS',
        'ROG Strix',
        'AMD Ryzen 7',
        3.2,
        16,
        'Windows 10',
        1500
    ),
    (
        'Dell',
        'XPS',
        'Intel Core i7',
        3.5,
        16,
        'Windows 10',
        1800
    ),
    (
        'Lenovo',
        'ThinkPad',
        'Intel Core i7',
        2.8,
        16,
        'Windows 10',
        1600
    ),
    (
        'Microsoft',
        'Surface Laptop',
        'Intel Core i5',
        2.4,
        8,
        'Windows 10',
        1300
    ),
    (
        'Apple',
        'iMac',
        'Intel Core i7',
        3.5,
        32,
        'macOS',
        2800
    ),
    (
        'ASUS',
        'Chromebook',
        'Intel Celeron',
        1.2,
        4,
        'Chrome OS',
        400
    ),
    (
        'Lenovo',
        'IdeaPad',
        'AMD Ryzen 3',
        2.0,
        8,
        'Windows 10',
        600
    ),
    (
        'HP',
        'EliteBook',
        'Intel Core i7',
        2.6,
        16,
        'Windows 10',
        2000
    ),
    (
        'Microsoft',
        'Surface Book',
        'Intel Core i7',
        3.0,
        16,
        'Windows 10',
        2200
    );

SELECT
    brand,
    COUNT(*) AS count
FROM
    computers
GROUP BY
    brand
HAVING
    COUNT(*) >= 2;

SELECT
    cpu,
    COUNT(*) AS count
FROM
    computers
GROUP BY
    cpu
HAVING
    COUNT(*) >= 2;

SELECT
    *
FROM
    computers
ORDER BY
    price DESC
LIMIT
    1;

SELECT
    *
FROM
    computers
ORDER BY
    price
LIMIT
    1;

SELECT
    frequency
FROM
    computers
WHERE
    price BETWEEN 400
    AND 1000
    AND cpu LIKE '%Intel%';

SELECT
    COUNT(*) AS count
FROM
    computers
WHERE
    brand = 'Apple';

SELECT
    *
FROM
    computers
WHERE
    os = 'Windows 10'
    AND ram = 8
    AND brand = 'ASUS'
ORDER BY
    price;

--2-vazifa
CREATE DATABASE UNIVERSITET;

\ c UNIVERSITET;

CREATE TABLE talaba (
    id SERIAL PRIMARY KEY,
    talaba_ismi VARCHAR(100),
    talaba_kursi INT,
    talaba_stipendiyasi DECIMAL(10, 2)
);

INSERT INTO
    talaba (talaba_ismi, talaba_kursi, talaba_stipendiyasi)
VALUES
    ('Ali', 1, 500),
    ('Vali', 2, 550),
    ('Nodir', 1, 480),
    ('Dilshod', 3, 600),
    ('Sara', 4, 520),
    ('Shaxzoda', 2, 530),
    ('Bekzod', 3, 570),
    ('Malika', 1, 490),
    ('Xurshid', 2, 560),
    ('Xayrullo', 4, 610);

UPDATE
    talaba
SET
    talaba_kursi = 1
WHERE
    talaba_kursi = 4;

DELETE FROM
    talaba
WHERE
    talaba_kursi = 4;

SELECT
    talaba_kursi,
    COUNT(*) AS talabalar_soni
FROM
    talaba
GROUP BY
    talaba_kursi;