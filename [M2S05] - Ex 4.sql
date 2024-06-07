CREATE TABLE IF NOT EXISTS PACIENTE (
	paciente_id serial primary key,
	nome varchar(100) not null,
	data_nascimento date,
	cpf varchar(14),
	telefone varchar(20),
	email varchar(100)
);

CREATE TABLE IF NOT EXISTS CONSULTA (
	consulta_id serial primary key,
	observacoes varchar(255)
);

CREATE TABLE IF NOT EXISTS NUTRICIONISTA (
	nutri_id serial primary key,
	crn varchar(15),
	especialidade varchar(50),
	tempo_experiencia smallint
);

ALTER TABLE CONSULTA
    ADD COLUMN paciente_id integer,
    ADD COLUMN nutri_id integer;

ALTER TABLE Consulta
    ADD CONSTRAINT fk_nutricionista
    FOREIGN KEY (nutri_id)
	REFERENCES Nutricionista(nutri_id);

ALTER TABLE Consulta
	ADD CONSTRAINT fk_paciente
	FOREIGN KEY (paciente_id)
	REFERENCES Paciente (paciente_id);

DROP TABLE IF EXISTS CONSULTA;
DROP TABLE IF EXISTS PACIENTE;
DROP TABLE IF EXISTS NUTRICIONISTA;
