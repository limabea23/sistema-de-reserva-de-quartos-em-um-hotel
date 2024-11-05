CREATE DATABASE reservaquartos;

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

INSERT INTO hospedes (nome, email) VALUES
('John B. Routledge', 'johnroutledg@gmail.com'),
('Sarah Cameron', 'sarahc@gmail.com'),
('Kiara Carrera', 'carrerakiara@gmail.com'),
('Pope Heyward', 'heypope@gmail.com'),
('JJ Maybank', 'jmayjbank@gmail'),
('Cleo', 'cleopogue@gmail.com'),
('Rafe Cameron', 'rafecameron@gmail.com'),
('Topper', 'topperkook@gmail.com');

INSERT INTO quartos (tipo, numero) VALUES
('Quarto Solteiro Standard', 17),
('Quarto Casal Master', 04),
('Duplo Solteiro Master', 12),
('Dormitorio Standard', 30);