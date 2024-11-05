CREATE DATABASE reservaquartos;

\c reservaquartos;

CREATE TABLE hospedes (
    id_hospedes SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
);