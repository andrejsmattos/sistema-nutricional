INSERT INTO consulta(
	paciente_id, nutri_id, observacoes) VALUES
	(2, 1, 'Consulta inicial para avaliação nutricional'),
	(3, 2, 'Acompanhamento nutricional para atleta profissional'),
	(4, 3, 'Consulta de rotina para controle de peso e saúde');

SELECT * FROM consulta;

UPDATE consulta
SET data = '2024-06-07'
WHERE consulta_id = 4;

UPDATE consulta
SET data = '2024-10-07'
WHERE consulta_id = 6;

UPDATE consulta
SET observacoes = 'Consulta de rotina para controle de peso'
WHERE consulta_id = 6;