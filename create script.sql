create table tbJogador(
	id int identity(1,1) not null,
	nome nvarchar(52) not null,
	apelido nvarchar (52) not null,
	email nvarchar (52) not null,
	senha nvarchar (52) not null
	
	constraint pk_jogador_id primary key clustered (id asc)
)

create table tbCampeonato(
	id int identity(1,1) not null,
	id_gerente int not null,
	nome nvarchar (52) not null,
	data_inicio datetime not null,
	data_fim datetime not null

	constraint fk_gerente_campeonato_id foreign key (id_gerente) references tbJogador (id)
	constraint pk_campeonato_id primary key clustered (id asc)
)

create table tbTime(
	id int identity (1,1) not null,
	id_campeonato int not null,
	nome nvarchar (52) not null

	constraint pk_time_id primary key clustered (id asc)
	constraint fk_campeonato_time_id foreign key (id_campeonato) references tbJogador (id)
)


create table tbPartida(
	id int identity (1,1) not null,
	id_campeonato int not null,
	id_time_casa int not null,
	id_time_visitante int not null,
	gol_casa int not null,
	gol_visitante int not null,
	endereco nvarchar(100) not null,
	data datetime not null,
	finalizada bit not null,

	constraint pk_partida_id primary key clustered (id asc),
	constraint fk_campeonato_partida_id foreign key (id_campeonato) references tbCampeonato (id),
	constraint fk_time_casa_id foreign key (id_time_casa) references tbTime (id),
	constraint fk_time_visitante_id foreign key (id_time_visitante) references tbTime (id)
)

drop table tbCampeonato
drop table tbJogador
drop table tbPartida
drop table tbTime