use veterinaria;


insert into DUEÑO values(1,"Laura","Velez","Av Siempre Viva 123",32495734);
insert into DUEÑO values(2,"Camilo","Perez","Cra 34 # 34-56",34078956);
insert into DUEÑO values(3,"Lorena","Goméz","Cll 9a # 234-56",30095876);
insert into DUEÑO values(4,"Andres","Murcia","Av 17 %# 5 -67",32043570);
insert into DUEÑO values(5,"Hanna","Velandia","Transversal 5 # 45-87",32960395);
insert into DUEÑO values(6,"Lady","Vargas","Cra 34 # 7 - 34",34508909);


insert into VETERINARIO values(11,"Santiago","Avella",34374814);
insert into VETERINARIO values(22,"Diana","Rodrigues",30290566);
insert into VETERINARIO values(33,"Alejanda","Mora",32156734);


insert into ENFERMEDAD(idEnfermedad,nombre) values(1,"Leishmaniosis");
insert into ENFERMEDAD(idEnfermedad,nombre) values(2,"Parvovirus");
insert into ENFERMEDAD(idEnfermedad,nombre) values(3,"Moquillo");
insert into ENFERMEDAD(idEnfermedad,nombre) values(4,"Artrosis");
insert into ENFERMEDAD(idEnfermedad,nombre) values(5,"Problemas digestivos");
insert into ENFERMEDAD(idEnfermedad,nombre) values(6,"Problemas urinarios");
insert into ENFERMEDAD(idEnfermedad,nombre) values(7,"Brucelosis");
insert into ENFERMEDAD(idEnfermedad,nombre) values(8,"Psitacosis");
insert into ENFERMEDAD(idEnfermedad,nombre) values(9,"Tularemia");
insert into ENFERMEDAD(idEnfermedad,nombre) values(10,"Leucemia felina");
insert into ENFERMEDAD(idEnfermedad,nombre) values(11,"Inmunodeficiencia felina (SIDA felino)");
insert into ENFERMEDAD(idEnfermedad,nombre) values(12,"(FUS o FLUTD)");
insert into ENFERMEDAD(idEnfermedad,nombre) values(0,"Desconocido");



insert into MES values(1,"Enero");
insert into MES values(2,"Febrero");
insert into MES values(3,"Marzo");
insert into MES values(4,"Abril");
insert into MES values(5,"Mayo");
insert into MES values(6,"Junio");
insert into MES values(7,"Julio");
insert into MES values(8,"Agosto");
insert into MES values(9,"Septiembre");
insert into MES values(10,"Octubre");
insert into MES values(11,"Noviembre");
insert into MES values(12,"Diciembre");



-- perros
INSERT INTO VACUNA VALUES (1,'Parvovirosis',1) ;
INSERT INTO VACUNA VALUES  (2,'Moquillo',2);
INSERT INTO VACUNA VALUES (3,'Leptospirosis',1);
-- gatos
INSERT INTO VACUNA VALUES (4,'Calcivirosis',2) ;
INSERT INTO VACUNA VALUES  (5,'Clamidiosis felina',3);
INSERT INTO VACUNA VALUES (6,'Bordetelosis felina',1);
-- otros
INSERT INTO VACUNA VALUES (7,'Rabia',1) ;
INSERT INTO VACUNA VALUES  (8,'Mixomatisis',1);
INSERT INTO VACUNA VALUES (9,'Bordetellas',1);


-- Especies
insert into ESPECIE values(1,"Cánidos"); #Perros domesticos
insert into ESPECIE values(2,"Felino");  
insert into ESPECIE values(3,"Équidos"); #caballos
insert into ESPECIE values(4,"Leporidae"); #roedores
insert into ESPECIE values(0,"General"); #caballos


insert into RAZA values(1,"Bulldog",1);
insert into RAZA values(2,"Beagle",1);
insert into RAZA values(3,"Golde Retriever",1);
insert into RAZA values(4,"Pug",1);
insert into RAZA values(5,"Pastor Alemán",1);
insert into RAZA values(6,"Dóberma",1);
insert into RAZA values(7,"Ruso",2);
insert into RAZA values(8,"Persa",2);
insert into RAZA values(9,"Siamés",2);
insert into RAZA values(10,"Maine Coon",2);
insert into RAZA values(11,"Purasangre",3);
insert into RAZA values(12,"Frisón",3);
insert into RAZA values(13,"French Poodle",1);
insert into RAZA values(0,"Cruze",0);



-- INSERT MASCOTA
INSERT INTO MASCOTA VALUES (1,'maiky','4.5 kilos','7 años','blaco',5,5,0);
INSERT INTO MASCOTA VALUES (2,'chiripa','4.5 kilos','5 años','blaco-cafe',1,1,13);
INSERT INTO MASCOTA VALUES (3,'zeus','30.7 kilos','6 años','cafe-negro',7,4,5);
INSERT INTO MASCOTA VALUES (4,'max','10.5 kilos','8 meses','cafe',12,4,3);
INSERT INTO MASCOTA VALUES (5,'spool','6 kilos','2 años','cafe',4,4,1);
INSERT INTO MASCOTA VALUES (6,'pelusas','2.7 kilos','4 años','negro',7,6,8);
INSERT INTO MASCOTA VALUES (7,'Rayo','259.7 kilos','4 años','negro',10,2,11);
INSERT INTO MASCOTA VALUES (8,'faraon','1.5 kilos','1 años','blanco',3,3,9);




insert into HISTORIAL values(1,"2017-05-21","Vacuna","-",1); #perro
insert into HISTORIAL values(2,"2015-12-12","Vomito","Intoxicación por alimentos en mal estado",6);#gato
insert into HISTORIAL values(3,"2018-10-01","Consulta General","Todo en orden",7);#caba
insert into HISTORIAL values(4,"2018-10-01","Consulta General","Todo en orden",8);#caba
insert into HISTORIAL values(5,"2018-05-21","Vacuna","-",1); #perro
insert into HISTORIAL values(6,"2012-09-29","Vacuna","-",4);#perro
insert into HISTORIAL values(7,"2017-02-02","Corte Pelo","-",3);#perro
insert into HISTORIAL values(8,"2018-05-15","Corte Pelo","Vacuna",3);#perro
insert into HISTORIAL values(9,"2013-08-18","Corte Pelo","-",2);#perro
insert into HISTORIAL values(10,"2016-09-29","Vacuna","-",4);#perro
insert into HISTORIAL values(11,"2018-09-29","Esterilización","-",5);#perro
insert into HISTORIAL values(12,"2018-07-11","Enfermedad","Reservado",3);#perro
insert into HISTORIAL values(13,"2013-08-18","Enfermedad","Critico",2);#perro
insert into HISTORIAL values(14,"2016-09-29","Enfermedad","Reservado",4);#perro
insert into HISTORIAL values(15,"2018-09-29","Enfermedad","Sin riesgo",5);#perro


insert into HISTORIAL_has_VACUNA values(1,7);
insert into HISTORIAL_has_VACUNA values(5,7);
insert into HISTORIAL_has_VACUNA values(6,2);
insert into HISTORIAL_has_VACUNA values(10,3);




insert into Historial_has_Enfermedad values(12,3);
insert into Historial_has_Enfermedad values(14,3);
insert into Historial_has_Enfermedad values(13,1);
insert into Historial_has_Enfermedad values(15,6);
insert into Historial_has_Enfermedad values(1,3);



insert into CITA values(34,"2018-05-21","2019-05-21",11,1);
insert into CITA values(57,"2017-02-02","0000-00-00",11,7);
insert into CITA values(26,"2018-09-29","2019-09-29",22,15);
insert into CITA values(67,"2018-09-29","2018-10-03",33,14);