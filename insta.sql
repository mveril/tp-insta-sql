CREATE DATABASE tpinstasql;

USE tpinstasql;

CREATE TABLE users(
  id INT AUTO_INCREMENT PRIMARY KEY,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(50) NOT NULL UNIQUE,
  avatar VARCHAR(100) NOT NULL
);

CREATE TABLE photos(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  image_url VARCHAR(100) NOT NULL,
  user_id INT,
  FOREIGN KEY(user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE likes(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  user_id INT,
  photo_id INT NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  FOREIGN KEY(photo_id) REFERENCES photos(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE comments(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  user_id INT,
  photo_id INT NOT NULL,
  content VARCHAR(100),
  FOREIGN KEY(user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  FOREIGN KEY(photo_id) REFERENCES photos(id) ON UPDATE CASCADE ON DELETE CASCADE
);

insert into users (id, username, last_name, first_name, email, avatar) values (1, 'lswires0', 'Swires', 'Lusa', 'lswires0@pagesperso-orange.fr', 'https://robohash.org/estinciduntquibusdam.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (2, 'kburling1', 'Burling', 'Karita', 'kburling1@furl.net', 'https://robohash.org/laborumaddicta.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (3, 'kbester2', 'Bester', 'Kearney', 'kbester2@nps.gov', 'https://robohash.org/etidab.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (4, 'jbudibent3', 'Budibent', 'Jocelyne', 'jbudibent3@4shared.com', 'https://robohash.org/quilaudantiumquasi.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (5, 'cparke4', 'Parke', 'Callie', 'cparke4@jalbum.net', 'https://robohash.org/accusamusautemfugiat.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (6, 'rbodsworth5', 'Bodsworth', 'Ralina', 'rbodsworth5@shinystat.com', 'https://robohash.org/etetomnis.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (7, 'climpkin6', 'Limpkin', 'Celinka', 'climpkin6@ca.gov', 'https://robohash.org/idpariaturmolestias.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (8, 'hmaunton7', 'Maunton', 'Harv', 'hmaunton7@answers.com', 'https://robohash.org/autestsed.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (9, 'jblaisdale8', 'Blaisdale', 'Jeffy', 'jblaisdale8@aboutads.info', 'https://robohash.org/nemosequitotam.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (10, 'mbitchener9', 'Bitchener', 'Maxim', 'mbitchener9@msu.edu', 'https://robohash.org/dictanihilrepellendus.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (11, 'dmcauslenea', 'McAuslene', 'Dionisio', 'dmcauslenea@sourceforge.net', 'https://robohash.org/sitinciduntin.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (12, 'wcervantesb', 'Cervantes', 'Willi', 'wcervantesb@ucoz.com', 'https://robohash.org/doloremquasisint.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (13, 'mfayermanc', 'Fayerman', 'Marrilee', 'mfayermanc@clickbank.net', 'https://robohash.org/culpanisiet.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (14, 'fbirdd', 'Bird', 'Fidole', 'fbirdd@tripadvisor.com', 'https://robohash.org/distinctioaliasvoluptas.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (15, 'ksyrade', 'Syrad', 'Katine', 'ksyrade@list-manage.com', 'https://robohash.org/officiaaccusantiumsit.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (16, 'dbaniardf', 'Baniard', 'Darrelle', 'dbaniardf@mapquest.com', 'https://robohash.org/sitveroenim.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (17, 'bhammong', 'Hammon', 'Briney', 'bhammong@amazon.com', 'https://robohash.org/quasasint.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (18, 'ecreginh', 'Cregin', 'Eva', 'ecreginh@va.gov', 'https://robohash.org/nullarerumaliquid.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (19, 'leyckelbecki', 'Eyckelbeck', 'Leroi', 'leyckelbecki@shutterfly.com', 'https://robohash.org/maioresvelitautem.png?size=50x50&set=set1');
insert into users (id, username, last_name, first_name, email, avatar) values (20, 'kablottj', 'Ablott', 'Karmen', 'kablottj@apache.org', 'https://robohash.org/idrepudiandaeeum.png?size=50x50&set=set1');

insert into photos (image_url, user_id) values ('http://dummyimage.com/185x100.png/dddddd/000000', 11);
insert into photos (image_url, user_id) values ('http://dummyimage.com/237x100.png/ff4444/ffffff', 6);
insert into photos (image_url, user_id) values ('http://dummyimage.com/168x100.png/ff4444/ffffff', 18);
insert into photos (image_url, user_id) values ('http://dummyimage.com/236x100.png/cc0000/ffffff', 19);
insert into photos (image_url, user_id) values ('http://dummyimage.com/192x100.png/dddddd/000000', 19);
insert into photos (image_url, user_id) values ('http://dummyimage.com/167x100.png/dddddd/000000', 13);
insert into photos (image_url, user_id) values ('http://dummyimage.com/190x100.png/ff4444/ffffff', 10);
insert into photos (image_url, user_id) values ('http://dummyimage.com/184x100.png/5fa2dd/ffffff', 18);
insert into photos (image_url, user_id) values ('http://dummyimage.com/220x100.png/cc0000/ffffff', 17);
insert into photos (image_url, user_id) values ('http://dummyimage.com/120x100.png/cc0000/ffffff', 18);
insert into photos (image_url, user_id) values ('http://dummyimage.com/224x100.png/cc0000/ffffff', 7);
insert into photos (image_url, user_id) values ('http://dummyimage.com/155x100.png/ff4444/ffffff', 8);
insert into photos (image_url, user_id) values ('http://dummyimage.com/146x100.png/5fa2dd/ffffff', 19);
insert into photos (image_url, user_id) values ('http://dummyimage.com/182x100.png/ff4444/ffffff', 6);
insert into photos (image_url, user_id) values ('http://dummyimage.com/117x100.png/dddddd/000000', 17);
insert into photos (image_url, user_id) values ('http://dummyimage.com/146x100.png/ff4444/ffffff', 2);
insert into photos (image_url, user_id) values ('http://dummyimage.com/173x100.png/5fa2dd/ffffff', 20);
insert into photos (image_url, user_id) values ('http://dummyimage.com/207x100.png/dddddd/000000', 5);
insert into photos (image_url, user_id) values ('http://dummyimage.com/219x100.png/dddddd/000000', 15);
insert into photos (image_url, user_id) values ('http://dummyimage.com/176x100.png/ff4444/ffffff', 2);
insert into photos (image_url, user_id) values ('http://dummyimage.com/237x100.png/ff4444/ffffff', 18);
insert into photos (image_url, user_id) values ('http://dummyimage.com/226x100.png/cc0000/ffffff', 12);
insert into photos (image_url, user_id) values ('http://dummyimage.com/137x100.png/dddddd/000000', 19);
insert into photos (image_url, user_id) values ('http://dummyimage.com/129x100.png/5fa2dd/ffffff', 1);
insert into photos (image_url, user_id) values ('http://dummyimage.com/148x100.png/cc0000/ffffff', 12);
insert into photos (image_url, user_id) values ('http://dummyimage.com/102x100.png/cc0000/ffffff', 13);
insert into photos (image_url, user_id) values ('http://dummyimage.com/211x100.png/5fa2dd/ffffff', 6);
insert into photos (image_url, user_id) values ('http://dummyimage.com/218x100.png/cc0000/ffffff', 11);
insert into photos (image_url, user_id) values ('http://dummyimage.com/113x100.png/cc0000/ffffff', 13);
insert into photos (image_url, user_id) values ('http://dummyimage.com/186x100.png/5fa2dd/ffffff', 6);
insert into photos (image_url, user_id) values ('http://dummyimage.com/168x100.png/5fa2dd/ffffff', 15);
insert into photos (image_url, user_id) values ('http://dummyimage.com/213x100.png/dddddd/000000', 9);
insert into photos (image_url, user_id) values ('http://dummyimage.com/221x100.png/dddddd/000000', 3);
insert into photos (image_url, user_id) values ('http://dummyimage.com/180x100.png/dddddd/000000', 7);
insert into photos (image_url, user_id) values ('http://dummyimage.com/185x100.png/ff4444/ffffff', 12);
insert into photos (image_url, user_id) values ('http://dummyimage.com/117x100.png/5fa2dd/ffffff', 16);
insert into photos (image_url, user_id) values ('http://dummyimage.com/179x100.png/5fa2dd/ffffff', 3);
insert into photos (image_url, user_id) values ('http://dummyimage.com/161x100.png/ff4444/ffffff', 13);
insert into photos (image_url, user_id) values ('http://dummyimage.com/240x100.png/cc0000/ffffff', 2);
insert into photos (image_url, user_id) values ('http://dummyimage.com/195x100.png/dddddd/000000', 1);
insert into photos (image_url, user_id) values ('http://dummyimage.com/192x100.png/5fa2dd/ffffff', 7);
insert into photos (image_url, user_id) values ('http://dummyimage.com/245x100.png/cc0000/ffffff', 14);
insert into photos (image_url, user_id) values ('http://dummyimage.com/234x100.png/ff4444/ffffff', 8);
insert into photos (image_url, user_id) values ('http://dummyimage.com/191x100.png/dddddd/000000', 4);
insert into photos (image_url, user_id) values ('http://dummyimage.com/139x100.png/5fa2dd/ffffff', 20);
insert into photos (image_url, user_id) values ('http://dummyimage.com/206x100.png/5fa2dd/ffffff', 1);
insert into photos (image_url, user_id) values ('http://dummyimage.com/218x100.png/cc0000/ffffff', 16);
insert into photos (image_url, user_id) values ('http://dummyimage.com/118x100.png/ff4444/ffffff', 3);
insert into photos (image_url, user_id) values ('http://dummyimage.com/101x100.png/cc0000/ffffff', 19);
insert into photos (image_url, user_id) values ('http://dummyimage.com/237x100.png/5fa2dd/ffffff', 17);
insert into photos (image_url, user_id) values ('http://dummyimage.com/114x100.png/5fa2dd/ffffff', 20);
insert into photos (image_url, user_id) values ('http://dummyimage.com/115x100.png/dddddd/000000', 3);
insert into photos (image_url, user_id) values ('http://dummyimage.com/170x100.png/dddddd/000000', 6);
insert into photos (image_url, user_id) values ('http://dummyimage.com/134x100.png/ff4444/ffffff', 14);
insert into photos (image_url, user_id) values ('http://dummyimage.com/232x100.png/ff4444/ffffff', 9);
insert into photos (image_url, user_id) values ('http://dummyimage.com/136x100.png/ff4444/ffffff', 6);
insert into photos (image_url, user_id) values ('http://dummyimage.com/109x100.png/cc0000/ffffff', 12);
insert into photos (image_url, user_id) values ('http://dummyimage.com/133x100.png/cc0000/ffffff', 4);
insert into photos (image_url, user_id) values ('http://dummyimage.com/134x100.png/cc0000/ffffff', 16);
insert into photos (image_url, user_id) values ('http://dummyimage.com/243x100.png/dddddd/000000', 12);

