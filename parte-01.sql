-- Create Tables

CREATE TABLE IF NOT EXISTS redes_sociais (
    id bigserial primary key,
    nome varchar(150) not null unique
);

CREATE TABLE IF NOT EXISTS enderecos (
    id bigserial primary key,
    rua varchar not null,
    pais varchar(100) not null,
    cidade varchar(100) not null
);

CREATE TABLE IF NOT EXISTS usuarios (
    id bigserial primary key,
    nome varchar(100),
    email varchar not null unique,
    senha varchar not null,
    endereco_id integer not null,
    foreign key (endereco_id) references enderecos (id)
);

CREATE TABLE IF NOT EXISTS usuario_redes_sociais (
    id bigserial primary key,
    usuario_id integer not null,
    rede_social_id integer not null,
    foreign key (usuario_id) references usuarios (id),
    foreign key (rede_social_id) references redes_sociais (id)
);
