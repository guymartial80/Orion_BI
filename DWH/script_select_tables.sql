-- Schéma à utiliser pour le datawarehouse
SET SEARCH_PATH = "ORION_DWH";

-- Sélectionner la liste des clients
SELECT * FROM "ORION_DWH"."CUSTOMER_DIM";