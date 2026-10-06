create schema sqlIntro;
use sqlIntro;

create table users (
	id int primary key auto_increment,
	nome varchar(250) not null,
    sobrenome varchar(250) not null,
    email varchar(250) not null,
    ano_nasc int not null,                                                                               
    cpf varchar(14) unique not null
);

INSERT INTO users (nome, sobrenome, email, ano_nasc, cpf) VALUES
('Ana', 'Souza', 'ana.souza@email.com', 1995, '123.456.789-09'),
('Bruno', 'Oliveira', 'brunooliveira@exemplo.com.br', 1973, '529.982.247-25'),
('Carla', 'Ferreira', 'carla_ferreira10@teste.com', 2010, '111.444.777-35'),
('Diego', 'Almeida', 'dalmeida@mail.com', 1988, '234.567.891-73'),
('Eduarda', 'Lima', 'eduarda.lima@email.com', 2002, '345.678.912-28'),
('Felipe', 'Cavalcanti', 'felipecavalcanti@exemplo.com.br', 1965, '456.789.123-64'),
('Gabriela', 'Rodrigues', 'gabriela_rodrigues99@teste.com', 1999, '567.891.234-82'),
('Henrique', 'Barbosa', 'hbarbosa@mail.com', 1981, '678.912.345-82'),
('Isabela', 'Martins', 'isabela.martins@email.com', 2007, '789.123.456-64'),
('João', 'Pereira', 'joaopereira@exemplo.com.br', 1958, '891.234.567-28'),
('Larissa', 'Gomes', 'larissa_gomes92@teste.com', 1992, '912.345.678-73'),
('Mateus', 'Carvalho', 'mcarvalho@mail.com', 2015, '012.345.678-90'),
('Rafael', 'Santos', 'rafael.santos@email.com', 2004, '104.332.181-00'),
('Juliana', 'Costa', 'julianacosta@exemplo.com.br', 1975, '001.338.908-48'),
('Thiago', 'Ribeiro', 'thiago_ribeiro93@teste.com', 1993, '863.794.026-91'),
('Camila', 'Araújo', 'caraujo@mail.com', 1994, '423.511.615-05'),
('Lucas', 'Nascimento', 'lucas.nascimento@email.com', 1987, '940.781.618-47'),
('Fernanda', 'Melo', 'fernandamelo@exemplo.com.br', 1979, '959.310.341-45'),
('Gustavo', 'Rocha', 'gustavo_rocha84@teste.com', 1984, '164.752.553-51'),
('Beatriz', 'Dias', 'bdias@mail.com', 1978, '192.832.764-85'),
('Pedro', 'Teixeira', 'pedro.teixeira@email.com', 1990, '503.056.413-60'),
('Mariana', 'Moura', 'marianamoura@exemplo.com.br', 1983, '376.724.238-94'),
('Rodrigo', 'Freitas', 'rodrigo_freitas61@teste.com', 1961, '969.653.287-38'),
('Patrícia', 'Cardoso', 'pcardoso@mail.com', 2009, '012.269.166-00'),
('Vinícius', 'Correia', 'vinicius.correia@email.com', 1987, '848.018.451-50'),
('Letícia', 'Nunes', 'leticianunes@exemplo.com.br', 1988, '627.048.281-05'),
('André', 'Mendes', 'andre_mendes91@teste.com', 1991, '893.252.880-28'),
('Aline', 'Vieira', 'avieira@mail.com', 1960, '701.543.039-84'),
('Marcelo', 'Monteiro', 'marcelo.monteiro@email.com', 1983, '171.822.782-51'),
('Débora', 'Batista', 'deborabatista@exemplo.com.br', 2006, '896.383.465-40'),
('Caio', 'Pinto', 'caio_pinto79@teste.com', 1979, '871.331.509-99'),
('Natália', 'Ramos', 'nramos@mail.com', 1959, '930.103.105-10'),
('Leonardo', 'Campos', 'leonardo.campos@email.com', 2010, '834.738.299-94'),
('Vanessa', 'Azevedo', 'vanessaazevedo@exemplo.com.br', 2002, '376.311.656-70'),
('Otávio', 'Lopes', 'otavio_lopes74@teste.com', 1974, '701.065.133-70'),
('Priscila', 'Farias', 'pfarias@mail.com', 2006, '872.624.731-31'),
('Samuel', 'Moreira', 'samuel.moreira@email.com', 2012, '810.801.326-78'),
('Renata', 'Tavares', 'renatatavares@exemplo.com.br', 2008, '736.026.064-73'),
('Arthur', 'Siqueira', 'arthur_siqueira57@teste.com', 1957, '468.723.430-52'),
('Tatiane', 'Queiroz', 'tqueiroz@mail.com', 2015, '500.978.820-97'),
('Igor', 'Brandão', 'igor.brandao@email.com', 1981, '121.913.619-00'),
('Bianca', 'Medeiros', 'biancamedeiros@exemplo.com.br', 1990, '990.916.998-33');

# listar todos os usuarios
select * from users;

# apenas nome e email
select nome, email from users;

# usuarios nascidos apenas em 1990
select * from users where ano_nasc = 1990;

# usuarios nascidos antes de 1970
select * from users where ano_nasc < 1970;

# usuarios ordenados por nome, em ordem alfabetica
select * from users order by nome;

# os 5 usuarios mais novos
select * from users order by ano_nasc desc limit 5;



drop table users;

select id, concat(nome, " ", sobrenome) as "Nome Completo", ano_nasc as "Ano de Nascimento", 
	email as "E-mail", cpf as "CPF" from users;
    
select id, concat(nome, " ", sobrenome) as "Nome Completo", ano_nasc as "Ano de Nascimento", 
	email as "E-mail", cpf as "CPF" from users where ano_nasc >= 2000 and ano_nasc <= 2010;

select id, concat(nome, " ", sobrenome) as "Nome Completo", ano_nasc as "Ano de Nascimento", 
	email as "E-mail", cpf as "CPF" from users where nome like "B_A%";
    
select id, concat(nome, " ", sobrenome) as "Nome Completo", ano_nasc as "Ano de Nascimento", 
	email as "E-mail", cpf as "CPF" from users where nome like "C%";

show  tables;