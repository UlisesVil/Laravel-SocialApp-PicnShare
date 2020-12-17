/*para trabajar con la tabla creada por la libreria de autenticacion de usuarios (jetstream) 
se capturo la tabla sin el ENGINE=InnoDb ya que si se incluye nos genera el
ERROR 1824 (HY000): Failed to open the referenced table 'users'*/

/*Para generar la tabla users se usa la libreria Jetstream para generarla con los campos de la 
libreria y despues se agregan los faltantes que usaremos en adelante*/

CREATE DATABASE IF NOT EXISTS laravel_master;
USE laravel_master;

CREATE TABLE IF NOT EXISTS usuarios(
id                  int(255) auto_increment not null,
-role                varchar(20),
name                varchar(100),
-surname             varchar(200),
-nick                varchar(100),
email               varchar(255),
password            varchar(255),
-image               varchar(255), /*se cambia a profile_photo_path*/
created_at          datetime,
updated_at          datetime,
remember_token      varchar(255),
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

/*
id                  int(255) auto_increment not null,
-role                varchar(20),
name                varchar(100),
-surname             varchar(200),
-nick                varchar(100),
email               varchar(255),
email_verified_at
password            varchar(255),
two_factor_secret
two_factor_recovery_codes
remember_token      varchar(255),
current_team_id
profile_photo_path             varchar(255), //se cambia por -image
created_at          datetime,
updated_at          datetime,
*/

INSERT INTO users VALUES (NULL, 'user', 'Ulises', 'Villa','SonicSlide', 'ulisesvil5@hotmail.com', 'NULL', 'pass', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', CURTIME(), CURTIME());
INSERT INTO users VALUES (NULL, 'user', 'Adrian', 'Villa','Dramamine', 'adrian@adrian.com', 'pass', 'null', CURTIME(), CURTIME(), NULL);
INSERT INTO users VALUES (NULL, 'user', 'Cris', 'Evans','ElCap', 'cris@cris.com', 'pass', 'null', CURTIME(), CURTIME(), NULL);


CREATE TABLE IF NOT EXISTS images(
id                  int(255) auto_increment not null,
user_id             int(255),
image_path          varchar(255),
description         text,
created_at          datetime,
updated_at          datetime,
CONSTRAINT pk_images PRIMARY KEY(id),
CONSTRAINT fk_images_users FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb;



INSERT INTO images VALUES (NULL, 1, 'test1.jpg', 'Descripcion de prueba1', CURTIME(), CURTIME());
INSERT INTO images VALUES (NULL, 1, 'playa.jpg', 'Descripcion de prueba2', CURTIME(), CURTIME());
INSERT INTO images VALUES (NULL, 1, 'arena.jpg', 'Descripcion de prueba3', CURTIME(), CURTIME());
INSERT INTO images VALUES (NULL, 3, 'familia.jpg', 'Descripcion de prueba4', CURTIME(), CURTIME());


CREATE TABLE IF NOT EXISTS comments(
id                  int(255) auto_increment not null,
user_id             int(255),
image_id            int(255),
content             text,
created_at          datetime,
updated_at          datetime,
CONSTRAINT pk_comments PRIMARY KEY(id),
CONSTRAINT fk_comments_users FOREIGN KEY(user_id) REFERENCES users(id),
CONSTRAINT fk_comments_images FOREIGN KEY(image_id) REFERENCES images(id)
)ENGINE=InnoDb;

INSERT INTO comments VALUES (NULL, 1, 4, 'Buena foto de familia!!', CURTIME(), CURTIME());
INSERT INTO comments VALUES (NULL, 2, 1, 'Buena foto de PLAYA!!', CURTIME(), CURTIME());
INSERT INTO comments VALUES (NULL, 2, 4, 'que bueno!!', CURTIME(), CURTIME());

CREATE TABLE IF NOT EXISTS likes(
id                  int(255) auto_increment not null,
user_id             int(255),
image_id            int(255),
created_at          datetime,
updated_at          datetime,
CONSTRAINT pk_likes PRIMARY KEY(id),
CONSTRAINT fk_likes_users FOREIGN KEY(user_id) REFERENCES users(id),
CONSTRAINT fk_likes_images FOREIGN KEY(image_id) REFERENCES images(id)
)ENGINE=InnoDb;

INSERT INTO likes VALUES (NULL, 1, 4, CURTIME(), CURTIME());
INSERT INTO likes VALUES (NULL, 2, 4, CURTIME(), CURTIME());
INSERT INTO likes VALUES (NULL, 3, 1, CURTIME(), CURTIME());
INSERT INTO likes VALUES (NULL, 3, 2, CURTIME(), CURTIME());
INSERT INTO likes VALUES (NULL, 2, 1, CURTIME(), CURTIME());