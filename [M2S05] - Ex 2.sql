CREATE TABLE IF NOT EXISTS PACIENTE (
	id serial primary key,
	nome varchar(100) not null,
	data_nascimento date,
	cpf varchar(14),
	telefone varchar(20),
	email varchar(100)
);

CREATE TABLE IF NOT EXISTS CONSULTA (
	id serial primary key,
	observacoes varchar(255)
);

CREATE TABLE IF NOT EXISTS NUTRICIONISTA (
	id serial primary key,
	crn varchar(15),
	especialidade varchar(50),
	tempo_experiencia smallint
);

DROP TABLE IF EXISTS CONSULTA;
DROP TABLE IF EXISTS PACIENTE;
DROP TABLE IF EXISTS NUTRICIONISTA;

ALTER TABLE IF EXISTS CONSULTA ADD objetivo_consulta varchar(255);
ALTER TABLE IF EXISTS PACIENTE ADD dieta_atual varchar(255);
ALTER TABLE IF EXISTS NUTRICIONISTA ADD nome varchar(50);

ALTER TABLE IF EXISTS NUTRICIONISTA DROP COLUMN nome;
ALTER TABLE IF EXISTS PACIENTE DROP COLUMN nome;

ALTER TABLE Consulta
    ADD CONSTRAINT fk_nutricionista
    FOREIGN KEY (ID)
	REFERENCES Nutricionista(ID);

ALTER TABLE Consulta
	ADD CONSTRAINT fk_paciente
	FOREIGN KEY (id)
	REFERENCES Paciente (ID);

