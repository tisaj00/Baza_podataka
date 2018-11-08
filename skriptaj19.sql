DROP DATABASE IF EXISTS edunovaj19;
CREATE DATABASE edunovaj19;
USE edunovaj19;

CREATE TABLE salon(
	Sifra 		int,
	naziv		varchar(50),
	oib 		char(11),
	lokacija	varchar(100)
);

CREATE TABLE djelatnik(
	Sifra 		int,
	ime		varchar(50),
	oib 		char(11),
	spol		boolean,
	salon		int,
	posjet		int
);

CREATE TABLE korisnik(
	Sifra 		int,
	ime		varchar(50),
	oib 		char(11),
	prezime		varchar(50)
);

CREATE TABLE posjet(
	Sifra 		int,
	datum		datetime,
	korisnik 	int,
	usluga		int
);

CREATE TABLE usluga(
	Sifra 		int,
	cijena		int,
	vrsta 		varchar(100),
	posjet		int
);

CREATE TABLE posjet_djelatnik(
	posjet 		int,
	djelatnik	int		
);

CREATE TABLE posjet_usluga(
	posjet 		int,
	usluga		int
);