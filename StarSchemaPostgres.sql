CREATE TABLE IF NOT EXISTS client_dimension(
  id SERIAL PRIMARY KEY,
  customer_id_sakila INT NOT NULL,
  created_day INT NOT NULL,
  created_month INT NOT NULL,
  created_year INT NOT NULL,
  name VARCHAR(91) NOT NULL,
  active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS region_dimension(
  id SERIAL PRIMARY KEY,
  country_id_sakila INT NOT NULL,
  city_id_sakila INT NOT NULL,
  address_id_sakila INT NOT NULL,
  country VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  district VARCHAR(20) NOT NULL,
  address VARCHAR(50) NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS movie_dimension(
  id SERIAL PRIMARY KEY,
  film_id_sakila INT NOT NULL,
  category_id_sakila INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  release_year INT NOT NULL,
  length SMALLINT NOT NULL,
  rating VARCHAR(45) NOT NULL,
  rental_rate DECIMAL(4,2) NOT NULL,
  category VARCHAR(25) NOT NULL,
  rental_duration SMALLINT NOT NULL,	
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);


CREATE TABLE IF NOT EXISTS time_dimension(
  id SERIAL PRIMARY KEY,
  year SMALLINT NOT NULL,
  month SMALLINT NOT NULL,
  day SMALLINT NOT NULL,
  hour SMALLINT NOT NULL,
  day_of_week VARCHAR(20) NOT NULL,
  rental_id_sakila INT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS rental_fact (
  rental_amount DECIMAL(5,2) NOT NULL,
  id_time_dimension INT NOT NULL REFERENCES time_dimension(id),
  id_region_dimension INT NOT NULL REFERENCES region_dimension(id),
  id_movie_dimension INT NOT NULL REFERENCES movie_dimension(id),
  id_client_dimension INT NOT NULL REFERENCES client_dimension(id),
  PRIMARY KEY (id_time_dimension, id_region_dimension, id_movie_dimension, id_client_dimension)
);