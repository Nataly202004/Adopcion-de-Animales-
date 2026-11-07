-- Ejecutar UNA vez en el SQL Editor de Supabase si ya tenías las tablas del schema anterior
alter table mascota add column if not exists raza varchar(100);
alter table solicitud_adopcion add column if not exists nombre varchar(150);
alter table solicitud_adopcion add column if not exists celular varchar(30);
alter table solicitud_adopcion add column if not exists direccion text;
alter table solicitud_adopcion add column if not exists correo varchar(150);
update mascota set estado = lower(estado);
