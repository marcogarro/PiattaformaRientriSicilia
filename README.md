# Piattaforma di Gestione dei Rientrati in Sicilia (Emergenza COVID-19)
Software per la gestione degli isolamenti fiduciari per i rientrati dall'estero in Sicilia

Per prima cosa occorre installare sul vostro sistema **[Docker](https://www.docker.com/get-started)**, **[Docker-Compose](https://docs.docker.com/compose/install/)** and **[Git](https://git-scm.com/downloads)** che sono strumenti multipiattaforma. 

Clonate questo progetto attraverso il seguente comando: 

`$ git clone https://github.com/marcogarro/PiattaformaRientriSicilia.git`

`$ cd PiattaformaRientriSicilia`

Generare l'immagine del Webserver basato sull'immagine docker php:7.3-apache

`$ sudo docker build -t rientri .`

Modificare il filedocker-compose.yaml

Sceglere la password per il vostro server MySQL

Avviare il servizio come segue: 

`$ sudo docker-compose up -d`

Adesso è necessario importare la struttura del DB rientri. 
Avviare phpMyAdmin accedendo alla URL **http://localhost:8078**
Importare il file rientri.sql 

Utilizzare phpMyAdmin per creare le utente all'interno della tabella **tbl_users**

Adesso è possibile accedere alla piattaforma attraverso la URL **http://localhost:8077**

La tabella **isolamenti_extra_ue** viene alimentata dall'export dei dati che ogni ASP può fare da CostruireSalute.it relativamente al proprio territorio.
La popolazione della suddetta tabella può avvenire anche tramite l'apposito front-end presente all'interno della piattaforma.
