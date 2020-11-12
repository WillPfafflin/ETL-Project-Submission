CREATE TABLE lookup (
    movie_id int   NOT NULL,
    title varchar(255)   NOT NULL,
    CONSTRAINT pk_lookup PRIMARY KEY (
        movie_id
     )
);

CREATE TABLE streaming_service (
    movie_id int   NOT NULL,
    netflix bool   NOT NULL,
    hulu bool   NOT NULL,
    prime_video bool   NOT NULL,
    disney_plus bool   NOT NULL
);

CREATE TABLE rating (
    movie_id int   NOT NULL,
    rotten_tomatoes int,
    imdb int
);

CREATE TABLE overview (
    movie_id int   NOT NULL,
    overview TEXT   NOT NULL
);

CREATE TABLE movie_details (
    movie_id int   NOT NULL,
    year int   NOT NULL,
    runtime int   NOT NULL
);

CREATE TABLE genre_lookup (
    movie_id int   NOT NULL,
    genre_id int   NOT NULL,
    CONSTRAINT pk_genre_lookup PRIMARY KEY (
        genre_id
     )
);

CREATE TABLE genre_type (
    genre_id int   NOT NULL,
    genre_type varchar(255)   NOT NULL
);

CREATE TABLE director_lookup (
    movie_id int   NOT NULL,
    director_id int   NOT NULL,
    CONSTRAINT pk_director_lookup PRIMARY KEY (
        director_id
     )
);

CREATE TABLE director_names (
    director_id int   NOT NULL,
    director varchar(255)   NOT NULL
);

