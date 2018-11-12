DROP DATABASE IF EXISTS edunovaj19;
CREATE DATABASE edunovaj19;
USE edunovaj19;

CREATE TABLE salon(
	Sifra 		int not null primary key auto_increment,
	naziv		varchar(50) not null,
	oib 		char(11),
	lokacija	varchar(100) not null
);

CREATE TABLE djelatnik(
	Sifra 		int not null primary key auto_increment,
	ime			varchar(50) not null,
	oib 		char(11),
	spol		boolean not null,
	salon		int not null,
	posjet		int not null
);

CREATE TABLE korisnik(
	Sifra 		int not null primary key auto_increment,
	ime			varchar(50) not null,
	oib 		char(11),
	prezime		varchar(50) not null
);

CREATE TABLE posjet(
	Sifra 		int not null primary key auto_increment,
	datum		datetime,
	korisnik 	int not null,
	usluga		int not null
);

CREATE TABLE usluga(
	Sifra 		int not null primary key auto_increment,
	cijena		int not null,
	vrsta 		varchar(100),
	posjet		int not null
);

CREATE TABLE posjet_djelatnik(
	posjet 		int not null, 
	djelatnik	int		
);

CREATE TABLE posjet_usluga(
	posjet 		int not null,
	usluga		int
);

alter table djelatnik add foreign key (salon) references salon(sifra);

alter table posjet add foreign key (korisnik) references korisnik(sifra);


alter table posjet_djelatnik add foreign key(posjet) references posjet(sifra);
alter table posjet_djelatnik add foreign key(djelatnik) references djelatnik(sifra);

alter table posjet_usluga add foreign key(posjet) references posjet(sifra);
alter table posjet_usluga add foreign key(usluga) references usluga(sifra);



