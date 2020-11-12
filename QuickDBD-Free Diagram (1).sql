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

ALTER TABLE streaming_service ADD CONSTRAINT fk_streaming_service_movie_id FOREIGN KEY(movie_id)
REFERENCES lookup (movie_id);

ALTER TABLE rating ADD CONSTRAINT fk_rating_movie_id FOREIGN KEY(movie_id)
REFERENCES lookup (movie_id);

ALTER TABLE overview ADD CONSTRAINT fk_overview_movie_id FOREIGN KEY(movie_id)
REFERENCES lookup (movie_id);

ALTER TABLE movie_details ADD CONSTRAINT fk_movie_details_movie_id FOREIGN KEY(movie_id)
REFERENCES lookup (movie_id);

ALTER TABLE genre_lookup ADD CONSTRAINT fk_genre_lookup_movie_id FOREIGN KEY(movie_id)
REFERENCES lookup (movie_id);

ALTER TABLE genre_type ADD CONSTRAINT fk_genre_type_genre_id FOREIGN KEY(genre_id)
REFERENCES genre_lookup (genre_id);

ALTER TABLE director_lookup ADD CONSTRAINT fk_director_lookup_movie_id FOREIGN KEY(movie_id)
REFERENCES lookup (movie_id);

ALTER TABLE director_names ADD CONSTRAINT fk_director_names_director_id FOREIGN KEY(director_id)
REFERENCES director_lookup (director_id);

