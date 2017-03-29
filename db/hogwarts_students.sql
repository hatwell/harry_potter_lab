
DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses (
  id SERIAL8 PRIMARY KEY,
  url_address VARCHAR(255),
  house_name VARCHAR(255),
  bio TEXT
);

CREATE TABLE students (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house_id INT4 REFERENCES houses(id),
  age INT2
);
