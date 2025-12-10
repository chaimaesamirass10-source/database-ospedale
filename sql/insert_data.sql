USE ospedale;

INSERT INTO pazienti (nome, cognome, data_nascita, codice_fiscale, telefono, indirizzo) VALUES
('Marco', 'Rossi', '1985-02-15', 'RSSMRC85B15H501X', '3331234567', 'Via Roma 10'),
('Giulia', 'Bianchi', '1990-07-22', 'BNCGLI90L62H501Z', '3479988776', 'Via Milano 22'),
('Ahmed', 'Karim', '1978-12-01', 'KRMHMD78T01Z330Q', '3205567892', 'Via Torino 7');

INSERT INTO reparti (nome, piano) VALUES
('Cardiologia', 2),
('Ortopedia', 3),
('Pediatria', 1);

INSERT INTO ricoveri (id_paziente, id_reparto, data_ingresso, data_dimissione) VALUES
(1, 1, '2024-01-10', '2024-01-18'),
(2, 2, '2024-02-03', NULL), 
(3, 3, '2024-03-15', '2024-03-20');

INSERT INTO visite (id_paziente, data_visita, motivo, diagnosi) VALUES
(1, '2024-01-05', 'Controllo pressione', 'Ipertensione'),
(2, '2024-02-01', 'Dolore alla schiena', 'Ernia del disco'),
(3, '2024-03-10', 'Tosse persistente', 'Influenza');
