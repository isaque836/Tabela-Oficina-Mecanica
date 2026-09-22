-- Database: Aula03_oficinaMecanica

-- DROP DATABASE IF EXISTS "Aula03_oficinaMecanica";
/*
CREATE DATABASE "Aula03_oficinaMecanica"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False; */
--create table nome_tabela
--(
   --campos tipo_de_dados,
   --campos tipo_de_dados,
   
--);
--trigramacao = latim(3 letras do nome do obejeto)
--)
   CREATE TABLE Cliente (
    ind_cli      INT,
    cpf_cli      VARCHAR(50),
    tel_cli      NUMERIC(9),
    endereco_cli VARCHAR(50)
);

CREATE TABLE veiculo (
    id_vei   INT,
    renavam  NUMERIC(9),
    casi     VARCHAR(17),
    modelo   VARCHAR(20),
    ano      NUMERIC(4),
    cor      VARCHAR(20),
    placa    VARCHAR(7),
    id_cli   INT
);

CREATE TABLE relato (
    id_rel      INT,
    descricao_rel TEXT,
    dt_rel      DATE,
    id_veiculo  INT
);

create table peca (
   id_pec  int,
   descricao_pec text,
   valor_pec numeric(7,2)

);

create table servico (
 id_ser  int,
 descreicao_ser text,
 valor_ser numeric(7,2),
 tempo_ser time 
);

create table orcamento(
 id_orc  int,
 id_vei int,
 ide_pec int,
 ide_ser int,
 valor_total_orc numeric(7,2),
 nome_mec varchar(50),
 forma_pagto varchar(20)
);

--inserir dados nas tabelas 
--sintaxe do insert = insert into nome_tabela values (valor', valor2,...);

INSERT INTO cliente(ind_cli, cpf_cli, tel_cli, endereco_cli) 
VALUES (100, '11122233322', 955554444, 'Rua Alex,200');

INSERT INTO cliente(ind_cli, cpf_cli, tel_cli, endereco_cli) 
VALUES (300, '11122233352', 955554433, 'Rua A,100');

INSERT INTO cliente(ind_cli, cpf_cli, tel_cli, endereco_cli) 
VALUES (200, '11122233390', 955554423, 'Rua B,300');
--consultar os dados inseridos 
select * from cliente;

--outra forma de inserir dados 
INSERT INTO cliente VALUES 
(400, '11122233380', 'pedro Garro', 965554423, 'Rua c,320'),
(250, '12122233390', 'joao Garro',  966554423, 'Rua d,321');

--inserir dados na tabela de veiculos 
INSERT INTO veiculo VALUES 
(1000, 111111111, '1ght1111rrtt', 'tcros', 2026, 'azul',  'tcp4856', 100),
(2000, 222222222, '5252ggghhhtt', 'tigo',  2023, 'cinza', 'rrt4585', 200);
select * from veiculo;

insert into relato values 
(10,'oleo vazando','31-08-2026',1000),
(11,'ar condicionado com mal cheiro','31-08-2026',2000)
select * from relato;

insert into peca values
(1,'para-choque',500.00),
(2,'pneus',1000.00);
select * from peca;

insert into servico values
(1,'troca de pneus',5.25,'00:10:00'),
(1,'limpeza de ar condicionado','1000.25','01:20:20');
select * from servico;

insert into orcamento values (600,100,2,1,500.00,'joao','pix');
select * from orcamento;




