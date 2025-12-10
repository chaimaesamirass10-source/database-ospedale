USE ospedale;

-- ===============================
-- 1) Lista completa dei ricoveri
-- ===============================
SELECT p.nome, p.cognome, rep.nome AS reparto, r.data_ingresso, r.data_dimissione
FROM ricoveri r
JOIN pazienti p ON r.id_paziente = p.id_paziente
JOIN reparti rep ON r.id_reparto = rep.id_reparto;

-- ============================================
-- 2) Ricoveri attualmente in corso (non dimessi)
-- ============================================
SELECT p.nome, p.cognome, rep.nome AS reparto, r.data_ingresso
FROM ricoveri r
JOIN pazienti p ON r.id_paziente = p.id_paziente
JOIN reparti rep ON r.id_reparto = rep.id_reparto
WHERE r.data_dimissione IS NULL;

-- ====================================
-- 3) Durata del ricovero in giorni
-- ====================================
SELECT p.nome, p.cognome,
       DATEDIFF(COALESCE(r.data_dimissione, CURDATE()), r.data_ingresso) AS durata_giorni
FROM ricoveri r
JOIN pazienti p ON r.id_paziente = p.id_paziente;

-- =================================
-- 4) Elenco visite per ogni paziente
-- =================================
SELECT p.nome, p.cognome, v.data_visita, v.motivo, v.diagnosi
FROM visite v
JOIN pazienti p ON v.id_paziente = p.id_paziente;

-- ======================================
-- 5) Numero ricoveri per reparto (aggregazione)
-- ======================================
SELECT rep.nome AS reparto, COUNT(*) AS totale_ricoveri
FROM ricoveri r
JOIN reparti rep ON r.id_reparto = rep.id_reparto
GROUP BY rep.nome;

-- ======================================
-- 6) Visita: ricoveri_estesi 
-- ======================================
CREATE OR REPLACE VIEW ricoveri_estesi AS
SELECT
  r.id_ricovero,
  p.id_paziente,
  p.nome AS paziente_nome,
  p.cognome AS paziente_cognome,
  rep.id_reparto,
  rep.nome AS reparto,
  r.data_ingresso,
  r.data_dimissione,
  r.diagnosi
FROM ricoveri r
LEFT JOIN pazienti p ON r.id_paziente = p.id_paziente
LEFT JOIN reparti rep ON r.id_reparto = rep.id_reparto;

