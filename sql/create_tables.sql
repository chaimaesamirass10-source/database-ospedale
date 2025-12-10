CREATE DATABASE IF NOT EXISTS ospedale;
USE ospedale;

CREATE TABLE pazienti (
  id_paziente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR (30) NOT NULL,
  cognome VARCHAR (30) NOT NULL,
  data_nascita DATE NOT NULL,
  codice_fiscale varchar (50) UNIQUE NOT NULL,
  telefono VARCHAR (20),
  indirizze VARCHAR (100)
);

CREATE TABLE reparti (
  id_reparto INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR (30) NOT NULL,
  piano INT NOT NULL
);

CREATE TABLE ricoveri (
  id_ricovero INT AUTO_INCREMENT PRIMARY KEY,
  id_paziente INT NOT NULL,
  id_reparto INT NOT NULL,
  data_ingresso DATE NOT NULL,
  data_dimissione DATE,
FOREIGN KEY (id_paziente) REFERENCES pazienti(id_paziente),
FOREIGN KEY (id_reparto) REFERENCES reparti(id_reparto)
);

CREATE TABLE visite (
  id_visita INT AUTO_INCREMENT PRIMARY KEY,
  id_paziente INT NOT NULL,
  data_visita DATE NOT NULL,
  motivo VARCHAR (30),
  FOREIGN KEY (id_paziente) REFERENCES pazientti(id_paziente)
