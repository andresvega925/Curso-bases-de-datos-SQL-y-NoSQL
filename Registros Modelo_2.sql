use MODELO_2;


insert into Continente values(111,"America");
insert into Continente values(222,"Asia");
insert into Continente values(333,"Europa");
insert into Continente values(444,"Africa");
insert into Continente values(555,"Oceania");


insert into Pais values(1010,"Colombia","Colombiano",111);
insert into Pais values(2020,"Argentina","Argentino",111);
insert into Pais values(3030,"Peru","Peruano",111);
insert into Pais values(4040,"Chile","Chileno",111);

insert into Pais values(5050,"Japón","Japones",222);
insert into Pais values(6060,"China","Chino",222);
insert into Pais values(7070,"India","Indio",222);
insert into Pais values(8080,"Corea del sur","Surcoreano",222);

insert into Pais values(9090,"España","Español",333);
insert into Pais values(1111,"Francia","Frances",333);
insert into Pais values(1212,"Italia","Italiano",333);
insert into Pais values(1313,"Alemania","Aleman",333);

insert into Pais values(1414,"Egipto","Egipcio",444);
insert into Pais values(1515,"Argelia","Argelino",444);
insert into Pais values(1616,"PCamerún","Camerunés",444);
insert into Pais values(1717,"Etiopía","Etíope",444);

insert into Pais values(1818,"Australia","Australiano",555);
insert into Pais values(1919,"Nueva Zelanda","Neozelandés",555);
insert into Pais values(2121,"Samo","Samoano",555);
insert into Pais values(2222,"Tonga","Tongano",555);


insert into Persona values(123,"Stefano","Bianchi",56);
insert into Persona values(456,"Fernando","Velez",23);
insert into Persona values(678,"Pedro","Rodriguez",23);
insert into Persona values(890,"Fernando","Perez",23);
insert into Persona values(1011,"Santiago","Vargas",23);



insert into Persona_has_Pais values(123,1212,333);
insert into Persona_has_Pais values(678,4040,111);
insert into Persona_has_Pais values(890,4040,111);
insert into Persona_has_Pais values(1011,1010,111);



select p.Pais, c.Nombre from Pais p inner join Continente c 
on p.Continente_idContinente = c.idContinente;


select pe.nombre, pa.Pais, pa.nacionalidad from Persona pe inner join Persona_has_Pais pp 
on pp.Persona_idPersona = pe.idPersona inner join Pais pa 
on  pa.idPais = pp.Pais_idPais;

