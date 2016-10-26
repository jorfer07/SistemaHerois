CREATE TABLE heroi
(
codigo serial primary key,
codinome varchar(100) not null,
nome varchar(50), 
descricao text,
foto varchar(100), 
inteligencia integer, 
forca integer,
velocidade integer,
resistencia integer, 
projecaoenergia integer,
habilidadecombate integer,
categoria integer, 
editora integer,
regiao integer, 
foreign key (categoria) references categoria, 
foreign key (editora) references editora, 
foreign key (regiao) references regiao 
)
