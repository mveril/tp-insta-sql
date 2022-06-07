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

alter table photos add column creation_date DATETIME DEFAULT CURRENT_TIMESTAMP
alter table comments add column creation_date DATETIME DEFAULT CURRENT_TIMESTAMP

insert into likes (user_id, photo_id) values (16, 9);
insert into likes (user_id, photo_id) values (4, 11);
insert into likes (user_id, photo_id) values (4, 21);
insert into likes (user_id, photo_id) values (5, 46);
insert into likes (user_id, photo_id) values (1, 4);
insert into likes (user_id, photo_id) values (11, 29);
insert into likes (user_id, photo_id) values (4, 54);
insert into likes (user_id, photo_id) values (2, 33);
insert into likes (user_id, photo_id) values (11, 12);
insert into likes (user_id, photo_id) values (17, 58);
insert into likes (user_id, photo_id) values (1, 30);
insert into likes (user_id, photo_id) values (3, 14);
insert into likes (user_id, photo_id) values (5, 28);
insert into likes (user_id, photo_id) values (17, 2);
insert into likes (user_id, photo_id) values (14, 42);
insert into likes (user_id, photo_id) values (12, 47);
insert into likes (user_id, photo_id) values (7, 58);
insert into likes (user_id, photo_id) values (19, 46);
insert into likes (user_id, photo_id) values (2, 26);
insert into likes (user_id, photo_id) values (3, 14);
insert into likes (user_id, photo_id) values (1, 37);
insert into likes (user_id, photo_id) values (20, 4);
insert into likes (user_id, photo_id) values (20, 17);
insert into likes (user_id, photo_id) values (11, 58);
insert into likes (user_id, photo_id) values (12, 55);
insert into likes (user_id, photo_id) values (17, 50);
insert into likes (user_id, photo_id) values (13, 52);
insert into likes (user_id, photo_id) values (7, 24);
insert into likes (user_id, photo_id) values (16, 34);
insert into likes (user_id, photo_id) values (6, 9);
insert into likes (user_id, photo_id) values (4, 5);
insert into likes (user_id, photo_id) values (19, 1);
insert into likes (user_id, photo_id) values (8, 22);
insert into likes (user_id, photo_id) values (7, 59);
insert into likes (user_id, photo_id) values (8, 33);
insert into likes (user_id, photo_id) values (9, 57);
insert into likes (user_id, photo_id) values (3, 53);
insert into likes (user_id, photo_id) values (17, 3);
insert into likes (user_id, photo_id) values (11, 5);
insert into likes (user_id, photo_id) values (17, 38);
insert into likes (user_id, photo_id) values (3, 36);
insert into likes (user_id, photo_id) values (11, 35);
insert into likes (user_id, photo_id) values (16, 51);
insert into likes (user_id, photo_id) values (17, 22);
insert into likes (user_id, photo_id) values (18, 11);
insert into likes (user_id, photo_id) values (5, 39);
insert into likes (user_id, photo_id) values (20, 48);
insert into likes (user_id, photo_id) values (12, 40);
insert into likes (user_id, photo_id) values (9, 23);
insert into likes (user_id, photo_id) values (17, 37);
insert into likes (user_id, photo_id) values (6, 27);
insert into likes (user_id, photo_id) values (4, 24);
insert into likes (user_id, photo_id) values (13, 31);
insert into likes (user_id, photo_id) values (17, 18);
insert into likes (user_id, photo_id) values (10, 54);
insert into likes (user_id, photo_id) values (4, 50);
insert into likes (user_id, photo_id) values (1, 10);
insert into likes (user_id, photo_id) values (5, 24);
insert into likes (user_id, photo_id) values (1, 32);
insert into likes (user_id, photo_id) values (2, 35);

insert into comments (user_id, photo_id, content) values (11, 8, 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque');
insert into comments (user_id, photo_id, content) values (14, 56, 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac');
insert into comments (user_id, photo_id, content) values (20, 42, 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum');
insert into comments (user_id, photo_id, content) values (5, 56, 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor');
insert into comments (user_id, photo_id, content) values (1, 11, 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at');
insert into comments (user_id, photo_id, content) values (2, 60, 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam');
insert into comments (user_id, photo_id, content) values (5, 51, 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla');
insert into comments (user_id, photo_id, content) values (19, 18, 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac');
insert into comments (user_id, photo_id, content) values (2, 37, 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh');
insert into comments (user_id, photo_id, content) values (19, 57, 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a');
insert into comments (user_id, photo_id, content) values (16, 60, 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea');
insert into comments (user_id, photo_id, content) values (12, 11, 'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus');
insert into comments (user_id, photo_id, content) values (11, 40, 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor');
insert into comments (user_id, photo_id, content) values (15, 6, 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy');
insert into comments (user_id, photo_id, content) values (11, 38, 'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio');
insert into comments (user_id, photo_id, content) values (6, 44, 'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus');
insert into comments (user_id, photo_id, content) values (5, 3, 'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut');
insert into comments (user_id, photo_id, content) values (16, 24, 'condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in');
insert into comments (user_id, photo_id, content) values (2, 44, 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi');
insert into comments (user_id, photo_id, content) values (12, 32, 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum');
insert into comments (user_id, photo_id, content) values (10, 12, 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis');
insert into comments (user_id, photo_id, content) values (9, 22, 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non');
insert into comments (user_id, photo_id, content) values (15, 22, 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas');
insert into comments (user_id, photo_id, content) values (4, 15, 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam');
insert into comments (user_id, photo_id, content) values (18, 10, 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero');
insert into comments (user_id, photo_id, content) values (13, 23, 'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in');
insert into comments (user_id, photo_id, content) values (16, 34, 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit');
insert into comments (user_id, photo_id, content) values (5, 11, 'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat');
insert into comments (user_id, photo_id, content) values (10, 29, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio');
insert into comments (user_id, photo_id, content) values (3, 27, 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem');
insert into comments (user_id, photo_id, content) values (6, 20, 'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum');
insert into comments (user_id, photo_id, content) values (13, 57, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas');
insert into comments (user_id, photo_id, content) values (2, 47, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at');
insert into comments (user_id, photo_id, content) values (16, 4, 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse');
insert into comments (user_id, photo_id, content) values (1, 54, 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi');
insert into comments (user_id, photo_id, content) values (19, 32, 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate');
insert into comments (user_id, photo_id, content) values (15, 12, 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin');
insert into comments (user_id, photo_id, content) values (2, 49, 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante');
insert into comments (user_id, photo_id, content) values (6, 25, 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu');
insert into comments (user_id, photo_id, content) values (4, 26, 'congue etiam justo etiam pretium iaculis justo in hac habitasse');
insert into comments (user_id, photo_id, content) values (19, 44, 'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci');
insert into comments (user_id, photo_id, content) values (4, 41, 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent');
insert into comments (user_id, photo_id, content) values (18, 5, 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam');
insert into comments (user_id, photo_id, content) values (6, 31, 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam');
insert into comments (user_id, photo_id, content) values (19, 25, 'adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');
insert into comments (user_id, photo_id, content) values (6, 49, 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum');
insert into comments (user_id, photo_id, content) values (13, 13, 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus');
insert into comments (user_id, photo_id, content) values (7, 35, 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh');
insert into comments (user_id, photo_id, content) values (9, 23, 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula');
insert into comments (user_id, photo_id, content) values (2, 57, 'potenti in eleifend quam a odio in hac habitasse platea dictumst');
insert into comments (user_id, photo_id, content) values (2, 6, 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu');
insert into comments (user_id, photo_id, content) values (2, 28, 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing');
insert into comments (user_id, photo_id, content) values (2, 2, 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien');
insert into comments (user_id, photo_id, content) values (9, 7, 'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis');
insert into comments (user_id, photo_id, content) values (16, 14, 'duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis');
insert into comments (user_id, photo_id, content) values (12, 26, 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac');
insert into comments (user_id, photo_id, content) values (20, 36, 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique');
insert into comments (user_id, photo_id, content) values (6, 8, 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra');
insert into comments (user_id, photo_id, content) values (7, 47, 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin');
insert into comments (user_id, photo_id, content) values (2, 7, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed');

SELECT users.username, comments.content FROM comments JOIN users ON comments.user_id=users.id;

SELECT photos.image_url, comments.content FROM comments JOIN photos ON comments.photos_id=photos.id;

SELECT photos.image_url, users.username FROM users JOIN photos ON users.id=photos.user_id;

SELECT users.username, comments.content FROM users JOIN comments ON users.id=comments.user_id WHERE comments.photo_id=3;
