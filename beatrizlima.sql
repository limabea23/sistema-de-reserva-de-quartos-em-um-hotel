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

CREATE TABLE reservas (
    id_reserva SERIAL PRIMARY KEY,
    datainicio DATE NOT NULL,
    datatermino DATE NOT NULL,
    hora_reserva TIME NOT NULL,
    id_hospede INT NOT NULL,
    id_quarto INT NOT NULL,
    CONSTRAINT fk_hospede FOREIGN KEY (id_hospede) REFERENCES hospedes(id_hospede),
    CONSTRAINT fk_reserva FOREIGN KEY (id_reserva) REFERENCES reservas(id_reserva)
);