--------------------------------------------------------------------------------------------
----------------- SCRIPT DE CREATION DES DIFFERENTES TABLES DANS LA BASE ODS ----------------
--------------------------------------------------------------------------------------------

-- Schéma à utiliser pour l'ODS'
SET SEARCH_PATH = "PARAMS_LOG";

----------------------------------------------------------------------------
------------ Requête N°1 : Insertion des paramètres de contexte ------------
----------------------------------------------------------------------------
INSERT INTO "PARAMS_LOG"."CONTEXTE"
VALUES
('serverName','localhost'),
('database','ORION_INGESTION_DB'),
('port','5432'),
('schema_ods','ORION_ODS'),
('utilisateur','postgres'),
('password',''),
('additionalParams','')
('schema_param','PARAMS_LOG'),
('projectFolder','D:/GIT_PROJECTS/Orion_BI/'),
('fieldSeparator',';'),
('encodage','UTF-8');