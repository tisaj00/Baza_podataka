DROP DATABASE IF EXISTS	edunovaj19;
CREATE DATABASE	edunovaj19;
USE edunovaj19;

CREATE TABLE Samostan(
	Sifra 		int,
	naziv		varchar(50),
	lokacija	varchar(100)
);

CREATE TABLE Svecenici(
	Sifra 		int,
	Oib			char(11),
	Ime			varchar(100),
	Prezime		varchar(100),
	Nadredeni	int,
	Samostan	int
);

CREATE TABLE Posao(
	Sifra 		int,
	Vrsta_posla	varchar(100),
	Tezina		boolean
);

CREATE TABLE Nadredeni(
	Sifra 		int,
	Oib			char(11),
	Ime			varchar(100),
	Prezime		varchar(100)
);

CREATE TABLE Svecenici_posao(
	Posao 		int,
	Svecenici	int
);