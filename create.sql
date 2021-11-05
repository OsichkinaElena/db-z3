create table if not exists Альбомы (
id serial primary key,
название varchar (100) not null,
год_выпуска integer not null);
create table if not exists Исполнители (
id serial primary key,
имя varchar (100));
create table if not exists АльбИсполн (
id serial primary key,
альбом_id integer not null references Альбомы(id),
исполнитель_id integer not null references Исполнители (id));
create table if not exists Сборники (
id serial primary key,
название varchar (100) not null,
год_выпуска integer not null);
create table if not exists Треки (
id serial primary key,
название varchar (150) not null,
длительность integer not null,
альбом_id integer not null references Альбомы(id));
create table if not exists Жанры (
id serial primary key,
название varchar (20) not null);
create table if not exists ИсполнЖанры (
id serial primary key,
жанр_id integer not null references Жанры(id),
исполнитель_id integer not null references Исполнители (id));
create table if not exists ТрекСборник (
id serial primary key,
трек_id integer not null references Треки(id),
сборник_id integer not null references Сборники(id));