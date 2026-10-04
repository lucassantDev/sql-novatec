create schema sqlIntro;
use sqlIntro;

create table users (
	id int primary key auto_increment,
	nome varchar(250) not null,
    sobrenome varchar(250) not null,
    ano_nasc int not null,                                                                               
    cpf varchar(14) unique not null
);

INSERT INTO users (nome, sobrenome, ano_nasc, cpf) VALUES
('Ana', 'Souza', 1995, '123.456.789-09'),
('Bruno', 'Oliveira', 1973, '529.982.247-25'),
('Carla', 'Ferreira', 2010, '111.444.777-35'),
('Diego', 'Almeida', 1988, '234.567.891-73'),
('Eduarda', 'Lima', 2002, '345.678.912-28'),
('Felipe', 'Cavalcanti', 1965, '456.789.123-64'),
('Gabriela', 'Rodrigues', 1999, '567.891.234-82'),
('Henrique', 'Barbosa', 1981, '678.912.345-82'),
('Isabela', 'Martins', 2007, '789.123.456-64'),
('João', 'Pereira', 1958, '891.234.567-28'),
('Larissa', 'Gomes', 1992, '912.345.678-73'),
('Mateus', 'Carvalho', 2015, '012.345.678-90');

INSERT INTO users (nome, sobrenome, ano_nasc, cpf) VALUES
('Rafael', 'Santos', 2004, '104.332.181-00'),
('Juliana', 'Costa', 1975, '001.338.908-48'),
('Thiago', 'Ribeiro', 1993, '863.794.026-91'),
('Camila', 'Araújo', 1994, '423.511.615-05'),
('Lucas', 'Nascimento', 1987, '940.781.618-47'),
('Fernanda', 'Melo', 1979, '959.310.341-45'),
('Gustavo', 'Rocha', 1984, '164.752.553-51'),
('Beatriz', 'Dias', 1978, '192.832.764-85'),
('Pedro', 'Teixeira', 1990, '503.056.413-60'),
('Mariana', 'Moura', 1983, '376.724.238-94'),
('Rodrigo', 'Freitas', 1961, '969.653.287-38'),
('Patrícia', 'Cardoso', 2009, '012.269.166-00'),
('Vinícius', 'Correia', 1987, '848.018.451-50'),
('Letícia', 'Nunes', 1988, '627.048.281-05'),
('André', 'Mendes', 1991, '893.252.880-28'),
('Aline', 'Vieira', 1960, '701.543.039-84'),
('Marcelo', 'Monteiro', 1983, '171.822.782-51'),
('Débora', 'Batista', 2006, '896.383.465-40'),
('Caio', 'Pinto', 1979, '871.331.509-99'),
('Natália', 'Ramos', 1959, '930.103.105-10'),
('Leonardo', 'Campos', 2010, '834.738.299-94'),
('Vanessa', 'Azevedo', 2002, '376.311.656-70'),
('Otávio', 'Lopes', 1974, '701.065.133-70'),
('Priscila', 'Farias', 2006, '872.624.731-31'),
('Samuel', 'Moreira', 2012, '810.801.326-78'),
('Renata', 'Tavares', 2008, '736.026.064-73'),
('Arthur', 'Siqueira', 1957, '468.723.430-52'),
('Tatiane', 'Queiroz', 2015, '500.978.820-97'),
('Igor', 'Brandão', 1981, '121.913.619-00'),
('Bianca', 'Medeiros', 1990, '990.916.998-33');

drop table users;

select id, concat(nome, " ", sobrenome) as "Nome Completo", ano_nasc as "Ano de Nascimento", 
	cpf as "CPF" from users where ano_nasc >= 2000 and ano_nasc <= 2010;

show  tables;