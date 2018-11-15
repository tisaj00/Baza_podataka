DROP DATABASE IF EXISTS edunovaj19;
CREATE DATABASE edunovaj19;
USE edunovaj19;

CREATE TABLE salon(
	sifra 		int not null primary key auto_increment,
	naziv		varchar(50) not null,
	oib 		char(11),
	lokacija	varchar(100) not null
);

CREATE TABLE djelatnik(
	sifra 		int not null primary key auto_increment,
	ime			varchar(50) not null,
	oib 		char(11),
	spol		boolean not null,
	salon		int not null
);

CREATE TABLE korisnik(
	sifra 		int not null primary key auto_increment,
	ime			varchar(50) not null,
	oib 		char(11),
	prezime		varchar(50) not null
);

CREATE TABLE posjet(
	sifra 		int not null primary key auto_increment,
	datum		datetime not null,
	korisnik 	int not null
);

CREATE TABLE usluga(
	sifra 		int not null primary key auto_increment,
	cijena		int not null,
	vrsta 		varchar(100)
);

CREATE TABLE posjet_djelatnik(
	posjet		int not null, 
	djelatnik	int	not null	
);

CREATE TABLE posjet_usluga(
	posjet		int not null,
	usluga		int not null
);

alter table djelatnik add foreign key (salon) references salon(sifra);

alter table posjet add foreign key (korisnik) references korisnik(sifra);


alter table posjet_djelatnik add foreign key (posjet) references posjet(sifra);
alter table posjet_djelatnik add foreign key (djelatnik) references djelatnik(sifra);

alter table posjet_usluga add foreign key (posjet) references posjet(sifra);
alter table posjet_usluga add foreign key (usluga) references usluga(sifra);


insert into salon (sifra,naziv,lokacija) values (null,'frizerski salon Ksenija','Beli Manastir'), (null,'frizerski salon mali repić','Osijek');
insert into djelatnik (sifra,ime,spol,salon) values (null,'Josip',true,1),(null,'Andrea',false,2);
insert into korisnik (sifra,ime,prezime) values (null,'Maja','Ilic'),(null,'Andrej','Juric'),(null,'Iva','Ivici');
insert into posjet (sifra,datum,korisnik) values (null,'2018-10-29',1),(null,'2018-10-30',2),(null,'2018-10-21',3);
insert into usluga(sifra,cijena) values (null,59),(null,129),(null,79);
insert into posjet_djelatnik (posjet,djelatnik) values (1,2),(2,1),(3,2);
insert into posjet_usluga (posjet,usluga) values (1,2),(3,3),(2,1);
