--------------------------------------------------------------------------------------------
----------------- SCRIPT DE CREATION DES DIFFERENTES TABLES DANS LA BASE ODS ----------------
--------------------------------------------------------------------------------------------

-- Création du schéma
DROP SCHEMA IF EXISTS "PARAMS_LOG";
CREATE SCHEMA "PARAMS_LOG";

-- Schéma à utiliser pour le datawarehouse
SET SEARCH_PATH = "PARAMS_LOG";

----------------------------------------------------------------------------
----------------- Table N°1 : "PARAMS_LOG"."CONTEXTE" ----------------
----------------------------------------------------------------------------

-- Création de la table "PARAMS_LOG"."CONTEXTE"
-- DROP TABLE IF EXISTS "CONTEXTE" ;
CREATE TABLE "PARAMS_LOG"."CONTEXTE" 
(
	key 	VARCHAR(100) NOT NULL,
	value 	VARCHAR(255),
	CONSTRAINT "CONTEXTE_PKEY" PRIMARY KEY (key)
);
