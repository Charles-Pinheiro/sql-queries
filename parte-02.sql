-- Populate tables

INSERT INTO
    enderecos (rua, pais, cidade)
VALUES
    ('Avenida Higienópolis', 'Brasil', 'Londrina'),
    ('Avenida Paulista', 'Brasil', 'São Paulo'),
    ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');


INSERT INTO 
    usuarios
    VALUES
        (DEFAULT, 'Cauan', 'cauan@exemple.com', '1234',
        (SELECT id
            FROM enderecos
        WHERE rua LIKE '%Paulista%'
            AND cidade = 'São Paulo')),
        (DEFAULT, 'Chrystian', 'chrystian@exemple.com', '4321',
        (SELECT id
            FROM enderecos
        WHERE rua LIKE '%Marcelino%'
            AND cidade = 'Curitiba')),
        (DEFAULT, 'Matheus', 'matheus@exemple.com', '3214',
        (SELECT id
            FROM enderecos
        WHERE rua LIKE '%Higienópolis%'
            AND cidade = 'Londrina'));


INSERT INTO
    redes_sociais (nome)
VALUES
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok');


INSERT INTO
    usuario_redes_sociais
VALUES
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Cauan'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Youtube')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Chrystian'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Youtube')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Matheus'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Youtube')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Chrystian'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Twitter')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Cauan'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Twitter')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Matheus'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Instagram')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Matheus'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Facebook')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Chrystian'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'Instagram')),
    (DEFAULT,
    (SELECT id
        FROM usuarios
    WHERE nome = 'Cauan'),
    (SELECT id
        FROM redes_sociais
    WHERE nome = 'TikTok'));