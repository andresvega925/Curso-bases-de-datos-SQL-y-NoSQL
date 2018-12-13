# Mostrar el nombre de todas las espececies 

select nombre from especie;

# Mostrar el nombre de todas las razas

select nombre from raza;

# Mostrar el nombre y telefono de los dueños

select nombre, telefono from dueño; 

# Mostrar las mascotas agrupadas por especies
select nombre from especie group by nombre;

# Mostrar toda la información de las mascotas donde su nombre inicie por m
select * from mascota where nombre like "m%";

# Mostrar toda la información de las razas donde su nombre termine en e
select * from raza where nombre like "%e";

# Mostrar nombre de las especies que no contengan la letra r 
select * from especie where nombre not like "%r%";


# Mostrar los nombres de los dueños con el nombre de sus respectivas mascotas
select d.nombre, m.nombre from dueño d inner join mascota m
on m.Dueño_idDueño = d.idDueño;

# Mostrar el nombre de la mascota con su raza y especie
# además cada columna tiene que tener un alias representativo
select  m.nombre MASCOTA, r.nombre RAZA, e.nombre ESPECIE from mascota m inner join raza r 
on m.Raza_idRaza = r.idRaza inner join especie e on
e.idEspecie = r.Especie_idEspecie;


# Mostrar el historial de una mascota con su respectivo nombre, además de la fecha de la consulta, el
# motivo de la consulta y el  diagnostico
select m.nombre MASCOTA, h.fecha FECHA_CONSULTA, h.motivoAtencion MOTIVO_CONSULTA , h.diagnostico DIAGNOSTICO
from mascota m inner join  historial h 
on h.Mascota_idMascota = m.idMascota;
 
 


# Mostrar el nombre de las mascotas que en su historial tengan vacunas, 
# así como el tipo de vacuna que tienen
select m.nombre MASCOTA, v.tipoVacuna VACUNA from mascota m
inner join historial h on m.idMAscota = h.Mascota_idMascota
inner join historial_has_vacuna hv on hv.Historial_idHistorial = h.idHistorial
inner join vacuna v on v.idVacuna = hv.Vacuna_idVacuna;

# Mostrar el nombre de las mascotas que en su historial tengan enfermedades, 
# así como el tipo de enfermedades que tienen
select m.nombre MASCOTA, e.nombre ENFERMEDAD from mascota m
inner join historial h on h.Mascota_idMascota = m.idMascota 
inner join historial_has_enfermedad he on he.Historial_idHistorial = h.idHistorial
inner join enfermedad e on e.idEnfermedad = he.Enfermedad_idEnfermedad;



# Mostrar el nombre de la mascota y la fecha de la cita
# también se desea conocer el nombre del dueño de la mascota
# además también se desea conocer el nombre del veterinario encargado de la cita
select d.nombre DUEÑO, m.nombre MASCOTA, c.fechaAtencion FECHA_ATENCIÓN, v.nombre VETERINARIO
from mascota m
inner join historial h on h.Mascota_idMascota = m.idMascota
inner join cita c on c.Historial_idHistorial = h.idHistorial
inner join dueño d on d.idDueño = m.Dueño_idDueño
inner join veterinario v on v.idVeterinario = c.Veterinario_idVeterinario;


# mostrar el nombre de un mascota que pertenezca  a un determinada raza, el tipo de raza a buscar se 
# debe hacer a través de una subcosulta
select nombre from mascota where Raza_idRaza = (select idRaza from raza where nombre = "Pastor Alemán");

# Mostrar nombre del veterinario, dueño y mascota, también el mes de nacimiento de la mascota,
# la raza, la especie, el motivo de atención, el diagnostico, el tipo de vacuna y el nombre de la enfermedad
select ve.nombre VETERINARIO, d.nombre DUEÑO, m.nombre MASCOTA, me.nombre MES_NACIMIENTO, r.nombre RAZA, e.nombre ESPECIE, h.motivoAtencion MOTIVO_ATENCIÓN, h.DIAGNOSTICO from mascota m
inner join dueño d on d.idDueño = m.Dueño_idDueño
inner join historial h on h.Mascota_idMascota = m.idMascota
inner join mes me on me.idMes = m.Mes_idMes
inner join raza r on r.idRaza = m.Raza_idRaza
inner join especie e on e.idEspecie = r.Especie_idEspecie
inner join historial_has_vacuna hv  on hv.Historial_idHistorial = h.idHistorial
inner join vacuna v on v.idVacuna = hv.Vacuna_idVacuna
inner join historial_has_enfermedad he on he.Historial_idHistorial = h.idHistorial
inner join enfermedad en on en.idEnfermedad = he.Enfermedad_idEnfermedad
inner join cita c on  c.Historial_idHistorial = h.idHistorial
inner join veterinario ve on ve.idVeterinario = c.Veterinario_idVeterinario;




