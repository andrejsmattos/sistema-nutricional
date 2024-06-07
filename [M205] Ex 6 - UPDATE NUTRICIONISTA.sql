INSERT INTO nutricionista(
	crn, especialidade, tempo_experiencia) VALUES
	('123456/SC', 'nutrição funcional', 3),
	('654321/SP', 'nutrição esportiva', 5),
	('789012/RJ', 'nutrição clínica', 8);

SELECT * FROM nutricionista;

UPDATE nutricionista
SET crn = '789012/MG'
WHERE tempo_experiencia = 8;

UPDATE nutricionista
SET especialidade = 'nutrição vegana'
WHERE nutri_id = 3;

UPDATE nutricionista
SET tempo_experiencia = 4
WHERE nutri_id = 1;