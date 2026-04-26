
create database dbinfox; # teste
# a linha abaixo escolhe o banco de dados a ser utilizado
use dbinfox;
# o bloco de instruções abaixo  cria uma tabela
create table tbusuarios(
	iduser int PRIMARY KEY,
    usuario varchar(50) not null,
    fone varchar(15),
    login varchar(15) not null unique, # unique faz com que o campo seja único
    senha varchar(15) not null
);


# O comando abaixo descreve a tabela
describe tbusuarios;

# a linha abaixo insere dados na tabela (CRUD)
#Create -> insert
insert into tbusuarios(iduser, usuario, fone, login, senha)
values(1,'José de Assis', '9999-9999','joseassis','1234');
#A linha abaixo exibe os dados da tabela (CRUD) 
# read -> select
select * from tbusuarios;

#create -> insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Gustavo Baister','95266-5432', 'gustavob','coxinha123');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Gabriel Leite','4002-8922','gabriell','bosta123');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(4,'Adminisitrador','9999-6666','admin','admin');

#read -> select
select * from tbusuarios;

#update -> update
update tbusuarios set fone="8888-8888" where iduser=4;


# a linha abaixo apaga um registro da tabela
# delete -> delete
delete from tbusuarios where iduser=3;

select * from tbusuarios;



#Agora, criando uma tabela clientes
create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endclie varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

use dbinfox;
describe tbusuarios;

insert into tbclientes(nomecli,endclie,fonecli,emailcli)
values('Elon Musk', 'Rua pinto da luz, 28', '4002-8922', 'elonmusk@gmail.com');


select * from tbclientes;



create table tbos(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    equipamento varchar(150) not null,
    defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2 ),
    idcli int not null, -- essa vai ser a chave estrangeira
    foreign key(idcli) references tbclientes(idcli)
);


insert into tbos(equipamento,defeito,servico,tecnico, valor, idcli)
values
	('Notebook', 'Não liga', 'Troca da fonte', 'Zé', 87.50,1);
    
select * from tbos;

-- O código abaixo traz informações de duas tabelas
SELECT
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on  (O.idcli =C.idcli);  
