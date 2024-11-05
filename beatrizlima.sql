CREATE DATABASE reservaquartos;

\c reservaquartos;

CREATE TABLE hospedes (
    id_hospede SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);

CREATE TABLE quartos (
    id_quarto SERIAL PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    numero INT
);