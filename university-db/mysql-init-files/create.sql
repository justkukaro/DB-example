CREATE DATABASE IF NOT EXISTS university;

USE university;

CREATE TABLE IF NOT EXISTS major(
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS person(
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    is_professor BOOLEAN DEFAULT FALSE,
    major_id INT
);

ALTER TABLE person
    ADD CONSTRAINT fk_person_major FOREIGN KEY (major_id) REFERENCES major(id)
    ON DELETE CASCADE;