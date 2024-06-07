INSERT INTO paciente(
	nome, data_nascimento, cpf, telefone, email) VALUES
	('André', '1989-10-07', '000.000.000-00', '(48)99999-9999', 'andre@mail.com'),
	('Carlos', '1990-08-23', '222.222.222-22', '(21)77777-7777', 'carlos@mail.com'),
	('Ana', '1983-03-17', '333.333.333-33', '(31)66666-6666', 'ana@mail.com');

SELECT * FROM paciente;


UPDATE paciente
SET nome = 'Ana Gabriela'
WHERE nome = 'Ana';

UPDATE paciente
SET cpf = '123.456.789-00'
WHERE cpf != '222.222.222-22'

UPDATE paciente
SET cpf = '987.654.321-00'
WHERE cpf = '123.456.789-00' AND nome = 'André';

DELETE FROM paciente
WHERE nome = 'Carlos';