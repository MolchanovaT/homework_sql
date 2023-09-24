create table if not exists Genre (
genre_id serial primary key,
name varchar(60) not null
);

create table if not exists Singer (
singer_id serial primary key,
name varchar(60) not null
);

create table if not exists GenreSinger (
genre_id integer references Genre(genre_id),
singer_id integer references Singer(singer_id),
constraint genre_pk primary key (genre_id, singer_id)
);

create table if not exists Album (
album_id serial primary key,
name varchar(60) not null,
album_year integer not null
);

create table if not exists SingerAlbum (
singer_id integer references Singer(singer_id),
album_id integer references Album(album_id),
constraint album_pk primary key (singer_id, album_id)
);

create table if not exists Track (
track_id serial primary key,
name varchar(60) not null,
duration integer not null,
album_id integer not null references Album(album_id)
);

create table if not exists Collection (
collection_id serial primary key,
name varchar(60) not null,
collection_year integer not null
);

create table if not exists TrackCollection (
track_id integer references Track(track_id),
collection_id integer references Collection(collection_id),
constraint collection_pk primary key (track_id, collection_id)
);













