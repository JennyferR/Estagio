create database estagio1;
use estagio1;

create table supervisor(
nome varchar (100) not null,
cpf numeric (20) not null,
e_mailSuper varchar (100),
telefoneSuper numeric(15),
cargoSuper varchar (100) not null,
formacaoSuper varchar (100) not null,
CNPJcon numeric (50) not null,
primary key (cpf),
foreign key (CNPJcon) references concedente (CNPJcon)
);

create table concedente(
setorEsta varchar (80) not null,
razaoSLP varchar (80),
representanteConc varchar (80) not null,
CNPJcon numeric (50) not null,
cidadeCon varchar (80),
enderecoCon varchar (80) not null,
bairroCon varchar (80),
ufCon varchar (80),
cepCon numeric (20),
ramoAtividade varchar (80),
conselhoProfi varchar (80),
cargoRepre varchar (80),
primary key (cnpjCon)
);

create table estagio(
codigoEs numeric (50) not null,
dataInicio numeric (10) not null,
dataFinal numeric (10) not null,
descricaoEs varchar (400) not null,
duracaoEs varchar (50),
horario varchar (50),
cargaHoraDia varchar (50),
cargaHoraSemana varchar (50),
cargaHoraTotal varchar (50),
CNPJcon numeric (50) not null,
CNPJinst numeric (50) not null,
primary key (codigoEs),
foreign key (CNPJcon) references concedente (CNPJcon),
foreign key (CNPJinst) references instituicao (CNPJinst)

);

create table instituicao(
representanteInst varchar (50) not null,
nomeInst varchar (80) not null,
CNPJinst numeric (50) not null,
telefoneInst numeric (15),
cargoRepreInst varchar (80),
cidadeInst varchar (80),
enderecoInst varchar (80) not null,
bairroInst varchar (80),
ufInst varchar (80),
cepInst numeric (20),
primary key (CNPJinst)
);

create table estagiario(
cpfEsta numeric (20) not null,
matricula numeric (20) not null,
cidadeEsta varchar (80),
nomeEsta varchar (50) not null,
enderecoEsta varchar (80) not null,
bairroEsta varchar (80),
ufEsta varchar (80),
cepEsta numeric (20),
rgEsta numeric (20),
orgaoExpeEsta varchar (10),
dataExpeEsta numeric (20),
grauEscola varchar (10),
telefoneEsta numeric (20) not null,
periodoEsta varchar (20) not null,
turnoEsta varchar (20),
e_mailEsta varchar (50),
dataNasEsta varchar (20) not null,
cursoEsta varchar (50),
orientador varchar (50),
CPFsuper numeric (20) not null,
CNPJinst numeric (50) not null,
codigoEs numeric (50) not null,
primary key (cpfEsta),
foreign key (CPFsuper) references supervisor (CPFsuper),
foreign key (CNPJinst) references instituto (CNPJinst),
foreign key (codigoEs) references estagio (codigoEs)
);


