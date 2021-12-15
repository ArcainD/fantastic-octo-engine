create table if not exists Жанр (
    id serial primary key,
    name varchar(40) not null
);

create table if not exists Исполнитель (
    id serial primary key,
    name varchar(40) not null,
    genre_id integer references Жанр(id)
);

create table if not exists Альбом(
    id serial primary key,
    name varchar(40) not null,
    year integer,
    singer_id integer references Исполнитель(id)
);

create table if not exists Трэк (
    id serial primary key,
    name varchar(40) not null,
    duration interval minute to second,
    album_id integer references Альбом(id)
);

create table if not exists Исполнители_в_жанре (
    singer_id integer references Исполнитель(id)
    genre_id integer references Жанр(id)
);