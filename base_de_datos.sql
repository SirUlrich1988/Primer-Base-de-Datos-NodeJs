CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "courses_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar UNIQUE NOT NULL,
  "url" varchar NOT NULL
);

CREATE TABLE "courses_category" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "carge_position" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "courses_academlo" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "course_title" varchar NOT NULL,
  "level" varchar NOT NULL,
  "completed" int NOT NULL
);

CREATE TABLE "normalization_one_a" (
  "user_id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "courses_id" uuid NOT NULL
);

CREATE TABLE "normalization_one_b" (
  "courses_id" uuid PRIMARY KEY,
  "courses_video_id" uuid NOT NULL
);

ALTER TABLE "normalization_one_a" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "normalization_one_a" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "normalization_one_b" ADD FOREIGN KEY ("courses_video_id") REFERENCES "courses_video" ("id");

ALTER TABLE "normalization_one_b" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

-- ALTA DE USUARIOS 

insert into users 
(id, 
name,
email,
password,
age) values (
'42240130-173e-475f-95d6-495181e5632f',
'Fernanda',
'fer@example.com',
'fe68521',
26
), (
'1d2c6c82-045c-4789-9dd1-8d2e22b19474',
'Santiago',
'saj@example.com',
'sj42685',
38
), (
'86813471-7676-4c6e-89b7-e562ff8b9caf',
'Christhoper',
'cl@example.com',
'sc74123',
20
), (
'c4a1216e-0fbd-4b9f-ae9f-61da8a344f5f',
'Jesus',
'fc@example.com',
'jc96357',
35
), (
'b2175727-3017-48fa-9dae-c5125af011c6',
'Benjamin',
'bm@example.com',
'bj12357',
31
), (
'abc78656-05c9-4221-b127-e37e66507b50',
'Sahid',
'sd@example.com',
'sh12358',
27
), (
'7c84112d-4ae8-427e-aaca-c4cdd62dde93',
'Jorge',
'jb@example.com',
'jg78952',
30
);

-- ALTA DE CARGOS

insert into carge_position  ( 
id,
name
) values ( 
'e18651a4-df47-40f5-b809-2b2e19eca210',
'Student'
), ( 
'bcfc2d89-d772-4718-891b-810a25e65db5',
'Teacher'
), ( 
'f035e247-88e7-4c7e-a5e6-c77a1068e655',
'Admin');

-- ALTA DE CATEGORIAS

insert into courses_category ( 
id,
name
) values ( 
'7a12caa8-4567-4db7-ae08-4c6291e09448',
'Framework'
), ( 
'dedee2ef-c165-4e38-9d8b-1f05e91d9940',
'React'
), ( 
'923691c0-ce27-49ea-9566-d722694c7033',
'NodeJs');

-- HALTA DE CURSOS

insert into courses (
id,
title,
description,
level,
teacher 
) values (
'7c7f529c-6f85-464d-8983-35cb6483f17a',
'Fundamentos',
'El estudiante obtendrá las habilidades para desarrollar de manera correcta la parte visual de un sitio web responsivo sin utilizar librerías, así como agregar contenido dinámico con javascript, trabajar de manera colaborativa con git.',
'Beginner',
'Jesus'
), (
'0fb13fd1-ff43-4ac9-a740-f3c94a4920bc',
'React',
'El estudiante aprenderá a crear aplicaciones web con React JS, logrando una gran interacción con el usuario usando los conocimientos previos de HTML, CSS y Javascript.',
'Medium',
'Benjamin'
), (
'25ace28f-d82a-46bc-9ba4-75abf6cb9802',
'NodeJs',
'El estudiante aprenderá a construir una aplicación desde el servidor con Node y Express hasta el despliegue en un servidor. Tendrá la habilidad de realizar una API Rest con una base de datos relacional, autenticación de usuarios, seguridad ante ataques XSS y CSRF, podrá validar los datos que recibe el servidor',
'Advanced',
'Sahid'
);

-- EJECUCION DE UN UPDATE POR ERROR DE CAPTURA

update courses_category set name = 'Front-End' where id = 'dedee2ef-c165-4e38-9d8b-1f05e91d9940';
update courses_category set name = 'Back-End' where id = '923691c0-ce27-49ea-9566-d722694c7033';

-- ALTA DE URL CURSOS

insert into courses_video ( 
id,
title,
url 
) values (
'0f57e727-a2d2-4913-adc3-6b1931639b3c',
'Visual Studio Code',
'https://www.youtube.com/watch?v=eurOEmEnwyg&ab_channel=yacklyon'
), (
'abab1f03-eef0-4764-a996-9910b9d2e73a',
'Funciones',
'https://www.youtube.com/watch?v=AvMFiQl7AU0&ab_channel=FalconMasters'
), (
'3be5e6a4-cd80-4940-bb78-1852cd406ab7',
'Javascript',
'https://www.youtube.com/watch?v=z95mZVUcJ-E&ab_channel=SoyDalto'
), (
'a59f5a32-d077-4a2b-ac1e-4d6b6874d01d',
'UseState',
'https://www.youtube.com/watch?v=PKKhpVC9_qM&ab_channel=jonmircha'
), (
'73badc53-8119-4d7a-a77d-95950de8949d',
'UseEffect',
'https://www.youtube.com/watch?v=6lvI-gTF_X8&t=957s&ab_channel=LuisCabrera'
), (
'fd3e63da-f874-4bcf-9798-c312262b6894',
'Props',
'https://www.youtube.com/watch?v=yBHEjEmk0ss&ab_channel=RaulPalacios'
) ,(
'0636b6e1-2981-4168-8a9b-df1215b846af',
'Postgress',
'https://www.youtube.com/watch?v=jxIEDKzGrOs&list=PL8gxzfBmzgex2nuVanqvxoTXTPovVSwi2&ab_channel=Tecnolog%C3%ADaBinaria%3B'
), (
'b3984d85-43d2-4597-ad0d-343cdbd89297',
'Base de Datos',
'https://www.youtube.com/watch?v=uUdKAYl-F7g&ab_channel=HolaMundo'
), (
'0caa94b3-a0fb-4041-8f81-010012109f8c',
'Joins',
'https://www.youtube.com/watch?v=2LtcWYdVx_I&ab_channel=pildorasinformaticas'
);

-- ALTA DE 1 NORMALIZACION

insert into courses_academlo  (
id,
name,
course_title,
level,
completed 
) values (
'a680e330-5467-42e7-9a3c-28b42984f23a',
'Fernanda',
'Visual Studio Code',
'Beginner',
100
), (
'6961df15-e24e-472e-9997-5ddade3c7d28',
'Fernanda',
'Funciones',
'Beginner',
100
), (
'e9b4820a-d8e2-4790-a522-6d9157fef2fa',
'Fernanda',
'Javascript',
'Beginner',
50
), (
'c2bafdd7-94f6-4bc2-93cf-7f4896086d1a',
'Santiago',
'Postgress',
'Advanced',
100
), (
'adbfb40c-ad15-4872-80de-1deaff227a95',
'Santiago',
'UseEffect',
'Medium',
100
), (
'eaf8a4c5-ab5d-4d60-99b1-ff4ab9ce1faf',
'Santiago',
'Joins',
'Advanced',
75
), (
'd982e4cc-0b7c-4b32-a229-b2b0ac7d7bda',
'Chisthoper',
'UseState',
'Medium',
35
), (
'3c915882-2921-46eb-98ff-56816f86d147',
'Chisthoper',
'Props',
'Medium',
100
), (
'67933230-eec5-4ebe-a81d-7248bc55694e',
'Chisthoper',
'Base de Datos',
'Advanced',
35
);

