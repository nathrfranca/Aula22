create database Catalogo;

create table Filme(
	id int primary key identity,
	nome varchar(60) not null,
	data_de_lancamento int not null,
	duracao int not null,
);

create table Ator(
	id int primary key identity,
	nome varchar(60) not null,
	sobrenome varchar(100) not null,
);

insert into Filme(nome, data_de_lancamento, duracao)
values('Thor: Amor e Trovão', 2022, 120),
('O Homem do Norte', 2022, 137),
('O Homem nas Trevas', 2016, 88);

insert into Ator(nome, sobrenome)
values('Stephen', 'Lang'),
('Jane ', 'Levy'),
('Dylan', 'Minnette'),
('Daniel', 'Zavatto'),
('Natalie', 'Portman'),
('Christian', 'Bale'),
('Chris', 'Hemsworth'),
('Matt', 'Damon'),
('Russel', 'Crowe'),
('Anya', 'Taylor-Joy'),
('Alexander', 'Skarsgard'),
('Willian', 'Defoe'),
('Nicole', 'Kidman'),
('Ethan', 'Hawke');

create table Filme_Ator(
	id int primary key identity,
	id_Filme int,
	id_Ator int

	constraint fk_filme_id foreign key (id_Filme) references Filme(id),
	constraint fk_ator_id foreign key (id_Ator) references Ator(id)
);

select * from Filme order by nome asc;

select * from Filme order by data_de_lancamento desc;

select * from Ator order by nome asc;