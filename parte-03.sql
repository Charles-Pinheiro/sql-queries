-- Select Tables

-- 1º SELECT
SELECT *
FROM enderecos;


-- 2º SELECT
SELECT *
FROM enderecos AS e
FULL OUTER JOIN usuarios AS u
ON e.id = u.endereco_id ;


-- 3º SELECT
SELECT rs.id, rs.nome, u.id, u.nome, u.email, u.senha, u.endereco_id
FROM usuario_redes_sociais urs
FULL OUTER JOIN redes_sociais rs ON (rede_social_id = rs.id)
FULL OUTER JOIN usuarios u ON (urs.usuario_id = u.id);


-- 4º SELECT
SELECT r.id, r.nome, u.id, u.nome, u.email, u.senha, u.endereco_id, e.id, e.rua, e.pais, e.cidade 
FROM usuarios u
FULL OUTER JOIN usuario_redes_sociais AS urs ON (urs.usuario_id = u.id)
FULL OUTER JOIN redes_sociais AS r ON (urs.rede_social_id = r.id)
FULL OUTER JOIN enderecos AS e ON (u.endereco_id = e.id);


-- 5º SELECT
SELECT rs.nome, u.nome, u.email, e.cidade
FROM usuario_redes_sociais urs
FULL OUTER JOIN redes_sociais rs on (urs.rede_social_id = rs.id)
FULL OUTER JOIN usuarios u on (urs.usuario_id = u.id)
FULL OUTER JOIN enderecos e on (u.endereco_id = e.id);


-- 6º SELECT
SELECT rs.nome, u.nome, u.email, e.cidade
FROM usuario_redes_sociais urs
FULL OUTER JOIN redes_sociais rs on (urs.rede_social_id = rs.id)
FULL OUTER JOIN usuarios u on (urs.usuario_id = u.id)
FULL OUTER JOIN enderecos e on (u.endereco_id = e.id)
WHERE rs.nome = 'Youtube';


-- 7º SELECT
SELECT rs.nome, u.nome, u.email, e.cidade
FROM usuario_redes_sociais urs
FULL OUTER JOIN redes_sociais rs on (urs.rede_social_id = rs.id)
FULL OUTER JOIN usuarios u on (urs.usuario_id = u.id)
FULL OUTER JOIN enderecos e on (u.endereco_id = e.id)
WHERE rs.nome = 'Instagram';


-- 8º SELECT
SELECT rs.nome, u.nome, u.email, e.cidade
FROM usuario_redes_sociais urs
FULL OUTER JOIN redes_sociais rs on (urs.rede_social_id = rs.id)
FULL OUTER JOIN usuarios u on (urs.usuario_id = u.id)
FULL OUTER JOIN enderecos e on (u.endereco_id = e.id)
WHERE rs.nome = 'Facebook';


-- 9º SELECT
SELECT rs.nome, u.nome, u.email, e.cidade
FROM usuario_redes_sociais urs
FULL OUTER JOIN redes_sociais rs on (urs.rede_social_id = rs.id)
FULL OUTER JOIN usuarios u on (urs.usuario_id = u.id)
FULL OUTER JOIN enderecos e on (u.endereco_id = e.id)
WHERE rs.nome = 'TikTok';


-- 10º SELECT
SELECT rs.nome, u.nome, u.email, e.cidade
FROM usuario_redes_sociais urs
FULL OUTER JOIN redes_sociais rs on (urs.rede_social_id = rs.id)
FULL OUTER JOIN usuarios u on (urs.usuario_id = u.id)
FULL OUTER JOIN enderecos e on (u.endereco_id = e.id)
WHERE rs.nome = 'Twitter';