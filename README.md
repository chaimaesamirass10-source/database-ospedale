#  Progetto database-ospedale
** Progettazione e implementazione di un database relazionale completo (MySQL)**
Realizzato da ** Chaiame Samirass** come progetto dimostrativo per competenze da Junior Data Engineer/ Data Analyst.
---
# Obiettivi del progetto
- Modellazione concenttuale con diagramma ER
- Normalizzazione fino alla 3NF
- Implementazione del databse in MYSQL
- Con dati realistici
- Realizzazione di query SQL che includono JOIN,condizioni di filtro e calcoli semplici
- Utilizzo di MYSQL WORKBENCH per la creazione del database, delle tabelle e l'esecuzione delle query
---
# Diagramma ER
Il seguente è il diagramma ER utilizzato per progettare il database:
![Diagramma ER] (diagram/er_diagram.png)
---
# Struttura del database
Il database include le seguenti tabelle:
- ** pazienti ** - Anagrafica dei pazienti
- ** reparti ** - Strutture ospedaliere
- ** Ricoveri ** - Informazioni sui ricoveri, ingressi e dimissioni
- ** Visite ** - Visite mediche dei pazienti
---
# Struttura del repository

La struttura del progetto è organizzata in cartelle per rendere il lavoro chiaro e professionale:

```
database-ospedale/
├─ sql/
│  ├─ create_tables.sql       # Definizione tabelle
│  ├─ insert_data.sql         # Dati di esempio
│  └─ query_avanzate.sql      # Query SQL avanzate
├─ diagram/
│  └─ er_diagram.png          # Diagramma ER
├─ README.md                  # Documentazione del progetto
└─ .gitignore                 # File per escludere file inutili
```






