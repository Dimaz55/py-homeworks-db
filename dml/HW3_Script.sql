create table if not exists genres (
	id serial primary key,
	name char(100) not null unique
);

create table if not exists artists (
	id serial primary key,
	name char(100) not null unique,
);

create table if not exists artists_genres (
	artist_id int references artists(id),
	genre_id int references genres(id),
	constraint art_gen_pk primary key (artist_id, genre_id)
);

create table if not exists albums (
	id serial primary key,
	name char(100) not null unique,
	release_year int
);

create table if not exists artists_albums (
	artist_id int references artists(id),
	album_id int references albums(id),
	constraint art_alb_pk primary key (artist_id, album_id)
);

create table if not exists tracks (
	id serial primary key,
	name char(100) not null,
	duration interval minute to second (2) not null,
	album_id int references albums(id)
);

create table if not exists collections (
	id serial primary key,
	name char(100) not null unique,
	release_year int
);

create table if not exists collections_tracks (
	collection_id int references collections(id),
	track_id int references tracks(id),
	constraint col_tr_pk primary key (collection_id, track_id)
);
