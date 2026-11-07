-- Esquema completo (base nueva). Si ya creaste las tablas, usa migracion.sql
create table if not exists usuario (
  id_usuario serial primary key,
  nombre_completo varchar(150) not null,
  correo varchar(150) unique not null,
  contrasena varchar(255) not null,
  rol varchar(20) not null default 'usuario', -- usuario / admin
  fecha_registro timestamp default now()
);

create table if not exists mascota (
  id_mascota serial primary key,
  nombre varchar(100) not null,
  especie varchar(50) not null,
  raza varchar(100),
  edad integer,
  sexo varchar(20),
  tamano varchar(20),
  descripcion text,
  foto_url text,
  estado varchar(20) default 'disponible', -- disponible / adoptada
  id_admin_registro integer references usuario(id_usuario)
);

create table if not exists solicitud_adopcion (
  id_solicitud serial primary key,
  id_usuario integer references usuario(id_usuario),
  id_mascota integer references mascota(id_mascota),
  nombre varchar(150),
  celular varchar(30),
  direccion text,
  correo varchar(150),
  fecha_solicitud timestamp default now(),
  estado varchar(20) default 'pendiente', -- pendiente / aprobada / rechazada
  comentario text
);
