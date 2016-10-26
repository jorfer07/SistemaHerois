CREATE TABLE heroiequipe
(
heroi integer,
equipe integer,
primary key (heroi,equipe),
foreign key (heroi) references heroi, 
foreign key (equipe) references equipe
)