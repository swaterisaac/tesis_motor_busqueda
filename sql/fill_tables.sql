--Regiones
INSERT INTO regiones (nombre, abreviatura, capital, url_imagen)
VALUES
	('Arica y Parinacota','AP','Arica', 'https://chileanendemics.rbge.org.uk/images/uploads/_hero/PN-Chungar%C3%A1-Arica-Parinacota-PC-2007.jpg'),
	('Tarapacá','TA','Iquique', 'https://www.cambioclimaticochile.cl/wp-content/uploads/2018/06/Tarapaca.jpg'),
	('Antofagasta','AN','Antofagasta', 'https://lh3.googleusercontent.com/proxy/CwFUwZv4eeZoafKuPK8mDPcmqmuci9gPYKu8Flyc0J-9PDdghSzeAMFi3xbOi-0BUrujjiS5MwEfWCqFhx1rwwI_mPP9DXuDosmK7bs7hhqD10G6kQ8MCpOLItE4r8AHnNndhAeHRoVL_hVSUA_dinWicOAsi9RlErUwv7r5vJAfBdzHaSdk6QKM9ktK0htapSDWWmq10SATsuyTlxY'),
	('Atacama','AT','Copiapó', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqdmr62oRXccLXbTKUNoBJU2njhZ0kMmuS6g&usqp=CAU'),
	('Coquimbo','CO','La Serena', 'https://upload.wikimedia.org/wikipedia/commons/6/60/Cruz_del_Tercer_Milenio.jpg'),
	('Valparaiso','VA','valparaíso', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP9Sdtdqw119QDJzRlZmaP_jAYf0TX2kFaqg&usqp=CAU'),
	('Metropolitana de Santiago','RM','Santiago', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.static-af.com%2Fimages%2Fmeta%2FIDname%2FCITY-SCL-1%3Faspect_ratio%3D2%3A1%26max_width%3D1920&imgrefurl=https%3A%2F%2Fwww.airfrance.cl%2Fguia-viajes%2Fsantiago&tbnid=9wfvcXDIviTXmM&vet=12ahUKEwjZlYiXrPP0AhVeMrkGHSj0D-cQMygBegUIARDMAQ..i&docid=kfOsuyHksNGtfM&w=1920&h=960&q=Santiago&client=ubuntu&ved=2ahUKEwjZlYiXrPP0AhVeMrkGHSj0D-cQMygBegUIARDMAQ'),
	('Libertador General Bernardo OHiggins','OH','Rancagua', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgMdfKXM4NQbjl-JUAd6xb0Ij4MJ2l6iRjeg&usqp=CAU'),
	('Maule','MA','Talca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrlcmAYeF8mc3emSFtt_CvVMexqF6c3utRkg&usqp=CAU'),
	('Ñuble','NB','Chillán', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtqkcBK8bGxT_iqaU4BH6OCNqZoJtPVt3P_w&usqp=CAU'),
	('Biobío','BI','Concepción', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMnw5TF1jUBRT7Ff4aKTW6rmf2Phl8inmbMg&usqp=CAU'),
	('La Araucanía','IAR','Temuco', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxc-4rkmL1KffhmEUPPJQ2hT3BStH2ivYQWw&usqp=CAU'),
	('Los Ríos','LR','Valdivia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLYMci4pbXVejTkFTz05_6czbEAItSCbcEkA&usqp=CAU'),
	('Los Lagos','LL','Puerto Montt', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRagw6mh2F-ywpS6ZR8zZXLoJBkMBkYvVdK2g&usqp=CAU'),
	('Aysén del General Carlos Ibáñez del Campo','AI','Coyhaique', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNGZyuyG55m7gIzp-o5n3CYiBnDeetLhla2w&usqp=CAU'),
	('Magallanes y de la Antártica Chilena','MG','Punta Arenas', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKyLY7Zp5qtEJb5XUT2PCk84-q1Xg3gSBLIA&usqp=CAU');


--Consideraciones Médicas
insert into consideraciones_medicas (nombre, descripcion) values ('Ninguna', 'Ninguna');
insert into consideraciones_medicas (nombre, descripcion) values ('Problemas de visión', 'Miopía, astigmatismo, etc');
insert into consideraciones_medicas (nombre, descripcion) values ('Problemas cardiovasculares', 'Problemas al corazón');
insert into consideraciones_medicas (nombre, descripcion) values ('Problemas de movilidad', 'Considerar sitios con accesibilidad de movilidad');
insert into consideraciones_medicas (nombre, descripcion) values ('Diabetes', 'Problemas de azúcar');
insert into consideraciones_medicas (nombre, descripcion) values ('Hipertensión', 'Tensión alta');

--Proveedores
insert into proveedores (nombre, web, telefono, correo) values ('Sernatur', 'https://www.sernatur.cl/', '600 600 60 66', 'turismoatiende@sernatur.cl');

--Comunas
INSERT INTO comunas (nombre,id_region)
VALUES
	('Arica',1),
	('Camarones',1),
	('General Lagos',1),
	('Putre',1),
	('Alto Hospicio',2),
	('Iquique',2),
	('Camiña',2),
	('Colchane',2),
	('Huara',2),
	('Pica',2),
	('Pozo Almonte',2),
    ('Tocopilla',3),
    ('María Elena',3),
	('Calama',3),
	('Ollague',3),
	('San Pedro de Atacama',3),
    ('Antofagasta',3),
	('Mejillones',3),
	('Sierra Gorda',3),
	('Taltal',3),
	('Chañaral',4),
	('Diego de Almagro',4),
    ('Copiapó',4),
	('Caldera',4),
	('Tierra Amarilla',4),
    ('Vallenar',14),
	('Alto del Carmen',4),
	('Freirina',4),
	('Huasco',4),
	('La Serena',5),
    ('Coquimbo',5),
    ('Andacollo',5),
    ('La Higuera',5),
    ('Paihuano',5),
	('Vicuña',5),
	('Ovalle',5),
    ('Combarbalá',5),
    ('Monte Patria',5),
    ('Punitaqui',5),
	('Río Hurtado',5),
	('Illapel',5),
	('Canela',5),
	('Los Vilos',5),
	('Salamanca',6),
	('La Ligua',6),
    ('Cabildo',6),
	('Zapallar',6),
    ('Papudo',6),
	('Petorca',6),
	('Los Andes',6),
	('San Esteban',6),
    ('Calle Larga',6),
    ('Rinconada',6),
	('San Felipe',6),
    ('Llaillay',6),
    ('Putaendo',6),
	('Santa María',6),
	('Catemu',6),
	('Panquehue',6),
    ('Quillota',6),
    ('La Cruz',6),
	('La Calera',6),
	('Nogales',6),
    ('Hijuelas',6),
	('Valparaíso',6),	
    ('Viña del Mar',6),
	('Concón',6),
 	('Quintero',6),
    ('Puchuncaví',6),
	('Casablanca',6),
	('Juan Fernández',6),
	('San Antonio',6),
    ('Cartagena',6),
	('El Tabo',6),
	('El Quisco',6),
	('Algarrobo',6),
	('Santo Domingo',6),
	('Isla de Pascua',6),
	('Quilpué',6),
	('Limache',6),
	('Olmué',6),
	('Villa Alemana',6),
	('Colina',7),
	('Lampa',7),
	('Tiltil',7),
	('Santiago',7),
	('Vitacura',7),
    ('San Ramón',7),
	('San Miguel',7),
	('San Joaquín',7),
    ('Renca',7),
	('Recoleta',7),
    ('Quinta Normal',7),
	('Quilicura',7),
    ('Pudahuel',7),
    ('Providencia',7),
	('Peñalolén',7),
    ('Pedro Aguirre Cerda',7),
	('Ñuñoa',7),
	('Maipú',7),
	('Macul',7),
	('Lo Prado',7),
	('Lo Espejo',7),
	('Lo Barnechea',7),
	('Las Condes',7),
	('La Reina',7),
	('La Pintana',7),
	('La Granja',7),
	('La Florida',7),
    ('La Cisterna',7),
    ('Independencia',7),
    ('Huechuraba',7),
	('Estación Central',7),
    ('El Bosque',7),
    ('Conchalí',7),
    ('Cerro Navia',7),
    ('Cerrillos',7),
	('Puente Alto',7),
	('San José de Maipo',7),
    ('Pirque',7),
	('San Bernardo',7),
	('Buin',7),
    ('Paine',7),
	('Calera de Tango',7),
	('Melipilla',7),
	('Alhué',7),
	('Curacaví',7),
	('María Pinto',7),
	('San Pedro',7),
	('Isla de Maipo',7),
    ('El Monte',7),
	('Padre Hurtado',7),
	('Peñaflor',7),
	('Talagante',7),
	('Codegua',8),
	('Coínco',8),
	('Coltauco',8),
	('Doñihue',8),
	('Graneros',8),
	('Las Cabras',8),
	('Machalí',8),
	('Malloa',8),
	('Mostazal',8),
	('Olivar',8),
	('Peumo',8),
	('Pichidegua',8),
	('Quinta de Tilcoco',8),
	('Rancagua',8),
	('Rengo',8),
	('Requínoa',8),
	('San Vicente de Tagua Tagua',8),
	('Chépica',8),
	('Chimbarongo',8),
	('Lolol',8),
    ('Nancagua',8),
    ('Palmilla',8),
    ('Peralillo',8),
	('Placilla',8),
 	('Pumanque',8),
	('San Fernando',8),
	('Santa Cruz',8),
	('La Estrella',8),
	('Litueche',8),
	('Marchigüe',8),
	('Navidad',8),
	('Paredones',8),
	('Pichilemu',8),
	('Curicó',9),
	('Hualañé',9),
	('Licantén',9),
 	('Molina',9),
	('Rauco',9),
	('Romeral',9),
	('Sagrada Familia',9),
	('Teno',9),
	('Vichuquén',9),
	('Talca',9),
	('San Clemente',9),
	('Pelarco',9),
	('Pencahue',9),
	('Maule',9),
	('San Rafael',9),
	('Curepto',9),
	('Constitución',9),
	('Empedrado',9),
	('Río Claro',9),
    ('Linares',9),
	('San Javier',9),
	('Parral',9),
	('Villa Alegre',9),
	('Longaví',9),
	('Colbún',9),
	('Retiro',9),
	('Yerbas Buenas',9),
    ('Cauquenes',9),
	('Chanco',9),
	('Pelluhue',9),
	('Bulnes',10),
	('Chillán',10),
	('Chillán Viejo',10),
	('El Carmen',10),
	('Pemuco',10),
	('Pinto',10),
	('Quillón',10),
	('San Ignacio',10),
	('Yungay',10),
	('Cobquecura',10),
	('Coelemu',10),
	('Ninhue',10),
	('Portezuelo',10),
	('Quirihue',10),
	('Ránquil',10),
	('Treguaco',10),
	('San Carlos',10),
	('Coihueco',10),
	('San Nicolás',10),
	('Ñiquén',10),
	('San Fabián',10),
	('Alto Biobío',11),
	('Antuco',11),
	('Cabrero',11),
	('Laja',11),
	('Los Ángeles',11),
	('Mulchén',11),
	('Nacimiento',11),
	('Negrete',11),
	('Quilaco',11),
	('Quilleco',11),
	('San Rosendo',11),
	('Santa Bárbara',11),
	('Tucapel',11),
	('Yumbel',11),
	('Concepción',11),
	('Coronel',11),
	('Chiguayante',11),
	('Florida',11),
	('Hualpén',11),
	('Hualqui',11),
	('Lota',11),
	('Penco',11),
	('San Pedro de La Paz',11),
	('Santa Juana',11),
	('Talcahuano',11),
	('Tomé',11),
	('Arauco',11),
	('Cañete',11),
	('Contulmo',11),
	('Curanilahue',11),
	('Lebu',11),
	('Los Álamos',11),
	('Tirúa',11),
	('Angol',12),
	('Collipulli',12),
	('Curacautín',12),
	('Ercilla',12),
	('Lonquimay',12),
	('Los Sauces',12),
	('Lumaco',12),
	('Purén',12),
	('Renaico',12),
	('Traiguén',12),
	('Victoria',12),
	('Temuco',12),
	('Carahue',12),
	('Cholchol',12),
	('Cunco',12),
	('Curarrehue',12),
	('Freire',12),
	('Galvarino',12),
	('Gorbea',12),
	('Lautaro',12),
	('Loncoche',12),
	('Melipeuco',12),
	('Nueva Imperial',12),
	('Padre Las Casas',12),
	('Perquenco',12),
	('Pitrufquén',12),
	('Pucón',12),
	('Saavedra',12),
	('Teodoro Schmidt',12),
	('Toltén',12),
	('Vilcún',12),
	('Villarrica',12),
	('Valdivia',13),
	('Corral',13),
	('Lanco',13),
	('Los Lagos',13),
	('Máfil',13),
	('Mariquina',13),
	('Paillaco',13),
	('Panguipulli',13),
	('La Unión',13),
	('Futrono',13),
	('Lago Ranco',13),
	('Río Bueno',13),
	('Osorno',14),
	('Puerto Octay',14),
	('Purranque',14),
	('Puyehue',14),
	('Río Negro',14),
	('San Juan de la Costa',14),
	('San Pablo',14),
	('Calbuco',14),
	('Cochamó',14),
	('Fresia',14),
	('Frutillar',14),
	('Llanquihue',14),
	('Los Muermos',14),
	('Maullín',14),
	('Puerto Montt',14),
	('Puerto Varas',14),
	('Ancud',14),
	('Castro',14),
	('Chonchi',14),
	('Curaco de Vélez',14),
	('Dalcahue',14),
	('Puqueldón',14),
	('Queilén',14),
	('Quellón',14),
	('Quemchi',14),
	('Quinchao',14),
	('Chaitén',14),
	('Futaleufú',14),
	('Hualaihué',14),
	('Palena',14),
	('Lago Verde',15),
	('Coihaique',15),
	('Aysén',15),
	('Cisnes',15),
	('Guaitecas',15),
	('Río Ibáñez',15),
	('Chile Chico',15),
	('Cochrane',15),
	('OHiggins',15),
	('Tortel',15),
	('Natales',16),
	('Torres del Paine',16),
	('Laguna Blanca',16),
	('Punta Arenas',16),
	('Río Verde',16),
	('San Gregorio',16),
	('Porvenir',16),
	('Primavera',16),
	('Timaukel',16),
	('Cabo de Hornos',16),
	('Antártica',16);


--Usuarios

insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Goldina Probin', 'gprobin0@si.edu', '2020-03-04', 5);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Waneta Filppetti', 'wfilppetti1@reuters.com', '2003-12-17', 6);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Emilie MacCheyne', 'emaccheyne2@yelp.com', '1979-01-06', 6);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Juliette Cerman', 'jcerman3@wisc.edu', '2015-02-01', 4);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Land Kenelin', 'lkenelin4@dmoz.org', '1924-02-23', 7);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Kent Moukes', 'kmoukes5@walmart.com', '1978-07-21', 8);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Padraig Saiens', 'psaiens6@mtv.com', '1991-12-30', 3);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Fredia Brauner', 'fbrauner7@deliciousdays.com', '1980-02-10', 9);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Anthiathia Gronowe', 'agronowe8@paginegialle.it', '1989-05-20', 8);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Wilhelm Boutellier', 'wboutellier9@indiatimes.com', '2003-12-26', 2);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Giselle Rebillard', 'grebillarda@thetimes.co.uk', '1922-09-12', 2);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Horatia Doidge', 'hdoidgeb@domainmarket.com', '2001-02-14', 7);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Essie Baseley', 'ebaseleyc@canalblog.com', '1964-06-23', 6);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Myrvyn Dan', 'mdand@google.ca', '2001-05-21', 4);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Yuma Barbe', 'ybarbee@dyndns.org', '2006-11-20', 10);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Lucina Fesby', 'lfesbyf@wired.com', '1950-07-25', 3);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Alaster Bezemer', 'abezemerg@businesswire.com', '1936-07-07', 6);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Marv Ridoutt', 'mridoutth@bing.com', '1940-06-15', 1);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Heinrik Whapples', 'hwhapplesi@timesonline.co.uk', '2007-02-23', 9);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Rodolph Freemantle', 'rfreemantlej@netvibes.com', '1956-04-28', 6);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Harli Leghorn', 'hleghornk@wiley.com', '2018-07-12', 1);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Lin Drewet', 'ldrewetl@ihg.com', '1942-01-26', 6);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Ty Jeanneau', 'tjeanneaum@reddit.com', '1994-11-06', 2);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ( 'Cindy Skydall', 'cskydalln@chron.com', '1980-10-18', 1);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Abbey Fortune', 'afortuneo@topsy.com', '1967-07-10', 8);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Christal Fautley', 'cfautleyp@mlb.com', '1972-04-19', 6);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Ephrem Gillard', 'egillardq@huffingtonpost.com', '1964-04-14', 10);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Petrina Lacaze', 'placazer@foxnews.com', '1922-12-04', 5);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Nilson Riccelli', 'nriccellis@fastcompany.com', '1919-02-03', 4);
insert into usuarios (nombre, correo, fecha_nacimiento, id_comuna) values ('Orazio Ohrtmann', 'oohrtmannt@google.fr', '2004-02-10', 6);

--Historial busqueda
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.', 65, 26);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', 65, 4);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 39, 7);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 59, 11);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 20, 25);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nam nulla.', 62, 5);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', 89, 17);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 36, 3);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 74, 15);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 9, 20);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 78, 14);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 94, 8);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 34, 12);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 47, 21);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 48, 13);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 82, 22);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 95, 7);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 48, 30);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Proin risus.', 100, 16);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 84, 26);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 5, 17);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 77, 24);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 66, 9);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ( 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 88, 16);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 15, 13);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 27, 30);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 6, 15);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 67, 24);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 59, 11);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 15, 7);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 31, 5);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 25, 11);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 40, 28);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 71, 23);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 64, 23);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 2, 29);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo.', 34, 2);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 1, 25);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 1, 15);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 8, 6);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 70, 21);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 88, 10);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 9, 5);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 78, 25);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 23, 8);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 39, 7);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 10, 12);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 4, 13);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Suspendisse potenti.', 77, 25);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 24, 19);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', 58, 14);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 21, 18);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 96, 2);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 38, 25);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 75, 29);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 61, 16);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus turpis.', 94, 1);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nam dui. Proin leo odio, porttitor consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.', 39, 8);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 69, 25);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 8, 17);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 100, 6);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 53, 30);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 12, 23);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', 70, 2);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 21, 16);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 87, 7);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 65, 4);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 16, 28);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 79, 1);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 81, 13);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 38, 21);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 81, 8);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 53, 25);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 86, 22);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 57, 27);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 46, 4);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Aenean auctor gravida sem.', 24, 1);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 22, 8);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', 73, 24);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 59, 18);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo.', 98, 19);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 15, 22);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 100, 2);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 66, 23);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Maecenas rhoncus aliquam lacus.', 64, 19);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 2, 9);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 48, 17);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Morbi ut odio.', 76, 18);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 55, 29);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 77, 15);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Donec dapibus. Duis at velit eu est congue elementum.', 23, 27);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 81, 27);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 45, 28);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 69, 22);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 5, 8);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 44, 8);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 95, 26);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 7, 16);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ('Sed ante. Vivamus tortor. Duis mattis egestas metus.', 55, 15);
insert into historial_busquedas (consulta, frecuencia, id_usuario) values ( 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 36, 22);

-- Ofertas turísticas

insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Utah', '81603', '2020-06-23', '2021-05-08', 1, 10);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Donald', '17865', '2019-04-26', '2021-01-27', 1, 5);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Packers', '67991', '2019-05-28', '2021-06-17', 1, 10);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Meadow Vale', '5789', '2019-04-18', '2021-08-16', 1, 8);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Lindbergh', '55644', '2021-01-12', '2021-10-09', 1, 8);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Monterey', '95944', '2020-03-14', '2021-08-07', 1, 6);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Tony', '67138', '2019-06-28', '2021-04-25', 1, 6);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Forest Dale', '79426', '2019-09-15', '2021-06-11', 1, 3);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Oriole', '8904', '2019-02-13', '2021-04-25', 1, 1);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Arizona', '28384', '2019-08-26', '2020-10-27', 1, 9);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Evergreen', '82919', '2019-11-19', '2021-05-29', 1, 1);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Warbler', '22965', '2020-06-15', '2020-10-29', 1, 9);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Clove', '59926', '2020-12-17', '2021-04-28', 1, 3);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Dryden', '65888', '2020-12-07', '2021-03-13', 1, 4);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Sundown', '65560', '2019-02-13', '2020-12-15', 1, 7);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Nancy', '85047', '2020-12-21', '2021-01-18', 1, 10);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Ridge Oak', '66201', '2020-12-05', '2021-09-20', 1, 3);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Hovde', '38419', '2020-04-04', '2021-02-10', 1, 4);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Havey', '93150', '2020-03-05', '2021-09-15', 1, 3);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Bellgrove', '37357', '2019-05-22', '2021-07-24', 1, 4);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Kropf', '10245', '2020-05-07', '2021-01-28', 1, 1);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Acker', '32937', '2019-09-23', '2021-04-06', 1, 3);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Grayhawk', '9408', '2020-11-11', '2020-12-30', 1, 2);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ( 'Bay', '25542', '2019-12-05', '2020-11-29', 1, 6);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Marquette', '7983', '2020-06-03', '2021-06-23', 1, 7);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Pennsylvania', '11770', '2019-05-08', '2021-10-06', 1, 10);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Jenifer', '97398', '2019-04-18', '2021-08-31', 1, 9);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Carey', '13436', '2019-04-27', '2021-05-26', 1, 3);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Schlimgen', '35435', '2020-08-05', '2021-02-27', 1, 7);
insert into ofertas_turisticas (nombre, precio, fecha_inicio, fecha_final, id_proveedor, id_comuna) values ('Ohio', '53685', '2019-10-08', '2021-07-02', 1, 6);

--Historial regiones
insert into historial_regiones (frecuencia, id_usuario, id_region) values (99, 9, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (9, 8, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (34, 4, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (2, 23, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (37, 17, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (63, 11, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (46, 16, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (92, 25, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (84, 24, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (85, 9, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (28, 9, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (69, 5, 7);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (5, 14, 7);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (70, 1, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (9, 11, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (56, 25, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (8, 10, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (21, 30, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (56, 19, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (37, 17, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (78, 5, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (44, 27, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (5, 19, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (77, 8, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (74, 26, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (73, 20, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (30, 23, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (13, 17, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (20, 23, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (72, 15, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (14, 26, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (8, 2, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (62, 30, 1);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (64, 3, 1);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (100, 3, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (84, 6, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (77, 6, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (80, 13, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (36, 12, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (86, 29, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (57, 7, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (52, 22, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (42, 2, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (2, 2, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (48, 27, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (63, 24, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (91, 30, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (67, 16, 7);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (18, 12, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (59, 9, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (15, 25, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (100, 6, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (52, 2, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (73, 26, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (57, 6, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (39, 6, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (78, 19, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (67, 12, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (76, 6, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (88, 22, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (27, 18, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (56, 2, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (58, 6, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (47, 15, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (13, 9, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (11, 7, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (26, 17, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (21, 17, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (1, 26, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (53, 27, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (59, 27, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (65, 9, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (61, 14, 7);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (16, 5, 1);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (51, 1, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (17, 7, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (29, 19, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (48, 4, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (97, 24, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (29, 9, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (62, 13, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (43, 10, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (36, 11, 7);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (74, 29, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (14, 12, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (98, 18, 3);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (42, 11, 7);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (69, 20, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (57, 23, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (48, 2, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (94, 15, 10);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (8, 21, 6);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (6, 5, 2);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (71, 22, 5);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (26, 19, 8);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (20, 26, 7);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (56, 7, 4);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (70, 28, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (52, 17, 9);
insert into historial_regiones (frecuencia, id_usuario, id_region) values (85, 28, 5);



--Historial comunas
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (12, 18, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (34, 5, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (62, 25, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (41, 10, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (69, 5, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (93, 29, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (78, 2, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (91, 16, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (15, 28, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (1, 24, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (56, 28, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (65, 21, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (7, 24, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (87, 5, 4);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (22, 21, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (94, 30, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (30, 13, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (71, 28, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (72, 27, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (5, 23, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (75, 28, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (89, 18, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (13, 6, 4);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (32, 12, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (54, 30, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (54, 6, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (65, 12, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (79, 16, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (47, 8, 4);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (59, 6, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (23, 5, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (17, 3, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (54, 20, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (39, 19, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (100, 24, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (4, 19, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (72, 23, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (29, 10, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (93, 15, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (3, 22, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (36, 19, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (58, 7, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (81, 15, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (1, 29, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (23, 20, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (58, 7, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (93, 21, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (14, 5, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (44, 14, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (70, 22, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (42, 10, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (62, 16, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (90, 10, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (23, 23, 4);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (80, 1, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (7, 27, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (34, 5, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (41, 16, 4);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (2, 4, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (89, 26, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (22, 30, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (24, 18, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (93, 8, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (40, 9, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (76, 13, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (96, 30, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (60, 9, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (20, 17, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (100, 9, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (5, 5, 4);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (2, 23, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (34, 10, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (19, 29, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (94, 4, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (44, 11, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (48, 30, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (40, 6, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (10, 29, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (96, 25, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (1, 14, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (18, 28, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (71, 21, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (27, 13, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (96, 4, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (83, 29, 10);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (88, 2, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (27, 4, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (45, 4, 9);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (67, 22, 6);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (54, 5, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (98, 7, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (64, 18, 7);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (35, 19, 1);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (73, 21, 2);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (43, 2, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (5, 7, 4);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (37, 29, 5);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (38, 10, 8);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (38, 22, 3);
insert into historial_comunas (frecuencia, id_usuario, id_comuna) values (74, 23, 1);

--Usuario consideración
insert into usuario_consideraciones (id_usuario, id_consideracion) values (1, 2);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (29, 4);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (18, 2);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (27, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (20, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (19, 2);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (18, 6);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (23, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (27, 2);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (15, 4);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (9, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (4, 6);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (5, 4);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (26, 6);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (8, 4);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (6, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (22, 3);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (27, 1);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (27, 6);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (11, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (8, 3);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (29, 2);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (19, 3);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (26, 6);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (4, 6);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (27, 4);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (11, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (28, 5);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (23, 6);
insert into usuario_consideraciones (id_usuario, id_consideracion) values (13, 5);

--Historial oferta
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (83, 2, 9);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (392, 6, 1);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (781, 8, 20);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (172, 8, 4);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (32, 10, 1);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (319, 8, 25);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (586, 30, 17);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (955, 19, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (549, 29, 8);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (269, 23, 25);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (608, 17, 20);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (321, 28, 25);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (603, 30, 25);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (386, 8, 24);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (856, 27, 19);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (977, 22, 21);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (329, 17, 8);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (957, 26, 18);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (643, 26, 23);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (405, 24, 29);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (219, 7, 23);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (975, 13, 22);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (124, 17, 28);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (767, 14, 28);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (380, 30, 23);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (39, 14, 30);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (777, 15, 15);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (524, 29, 5);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (528, 23, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (803, 6, 27);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (178, 22, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (295, 27, 3);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (63, 11, 22);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (312, 29, 19);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (430, 12, 19);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (716, 25, 2);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (418, 12, 14);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (785, 30, 20);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (661, 27, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (338, 15, 1);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (216, 22, 5);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (385, 24, 13);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (552, 19, 7);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (944, 4, 6);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (56, 18, 15);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (684, 21, 24);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (946, 29, 5);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (849, 25, 23);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (751, 9, 9);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (360, 23, 14);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (577, 8, 24);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (645, 28, 21);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (465, 29, 23);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (924, 14, 2);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (614, 20, 29);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (904, 27, 30);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (30, 24, 8);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (643, 25, 14);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (603, 6, 21);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (154, 4, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (145, 18, 10);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (251, 18, 28);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (900, 6, 8);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (429, 21, 10);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (667, 27, 11);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (525, 11, 24);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (216, 26, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (201, 7, 10);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (257, 23, 15);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (228, 16, 20);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (501, 17, 19);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (955, 13, 1);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (598, 23, 21);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (246, 25, 11);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (325, 9, 16);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (509, 1, 25);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (297, 11, 9);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (357, 28, 3);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (356, 14, 10);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (976, 18, 17);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (727, 7, 7);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (215, 21, 14);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (49, 24, 25);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (171, 21, 9);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (886, 26, 17);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (123, 3, 9);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (934, 14, 20);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (798, 5, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (537, 5, 7);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (887, 5, 30);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (954, 4, 4);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (265, 26, 29);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (556, 2, 24);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (571, 9, 16);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (552, 21, 14);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (602, 5, 6);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (41, 16, 2);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (982, 2, 26);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (770, 1, 7);
insert into historial_ofertas (frecuencia, id_usuario, id_oferta) values (234, 14, 10);

--Oferta consideración
insert into oferta_consideraciones (id_consideracion, id_oferta) values (5, 3);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 3);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 12);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 17);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 15);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 26);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (4, 11);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 27);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (5, 25);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 8);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (4, 24);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 16);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 7);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (4, 30);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 14);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (5, 7);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 26);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 18);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 8);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 30);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (4, 19);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (6, 13);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 13);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 1);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 16);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 23);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 26);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 11);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (4, 18);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (6, 24);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (5, 19);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (6, 19);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 2);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 4);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 5);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 6);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (4, 9);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 10);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 20);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 21);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (5, 22);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (3, 28);
insert into oferta_consideraciones (id_consideracion, id_oferta) values (2, 29);