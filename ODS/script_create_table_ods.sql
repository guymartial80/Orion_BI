--------------------------------------------------------------------------------------------
----------------- SCRIPT DE CREATION DES DIFFERENTES TABLES DANS LA BASE ODS ----------------
--------------------------------------------------------------------------------------------

-- Création du schéma
DROP SCHEMA IF EXISTS "ORION_ODS";
CREATE SCHEMA "ORION_ODS";

-- Schéma à utiliser pour l'Operationnal Data Store (ODS)
SET SEARCH_PATH = "ORION_ODS";



----------------------------------------------------------------------------
----------------- Table N°1 : "ORION_ODS"."ODS_CUSTOMER_TYPE" ----------------
----------------------------------------------------------------------------

-- Création de la table "ORION_ODS"."ODS_CUSTOMER_TYPE"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_CUSTOMER_TYPE" ;
CREATE TABLE "ORION_ODS"."ODS_CUSTOMER_TYPE" 
(
	"CUSTOMER_TYPE_ID" 		VARCHAR(10)  NOT NULL,
	"CUSTOMER_TYPE" 		VARCHAR(100) NOT NULL,
	"CUSTOMER_GROUPE_ID" 	VARCHAR(40)  NOT NULL,
	"CUSTOMER_GROUPE" 		VARCHAR(30)  NOT NULL,
	"LB_NOM_FICHIER" 		VARCHAR(100) NOT NULL,
	"DT_INSERTION" 			TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 		INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 			VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°2 : "ORION_ODS"."ODS_CUSTOMER" ----------------
----------------------------------------------------------------------------

-- Création de la table "ORION_ODS"."ODS_CUSTOMER"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_CUSTOMER" ;
CREATE TABLE "ORION_ODS"."ODS_CUSTOMER" 
(
	"CUSTOMER_ID" 			VARCHAR(100) NOT NULL,
	"COUNTRY" 				VARCHAR(10)  NOT NULL,
	"GENDER" 				VARCHAR(10)  NOT NULL,
	"PERSONAL_ID" 			VARCHAR          	 ,
	"CUSTOMER_NAME" 		VARCHAR(255) NOT NULL,
	"CUSTOMER_FIRSTNAME"    VARCHAR(100) NOT NULL,
	"CUSTOMER_LASTNAME"     VARCHAR(100) NOT NULL,
	"BIRTH_DATE"   			VARCHAR(100) NOT NULL,
	"CUSTOMER_ADDRESS" 		VARCHAR(100) NOT NULL,
	"STREET_ID" 			VARCHAR(100) NOT NULL,
	"STREET_NUMBER" 		VARCHAR(100) NOT NULL,
	"CUSTOMER_TYPE_ID" 		VARCHAR(100) NOT NULL,
	"LB_NOM_FICHIER" 		VARCHAR(100) NOT NULL,
	"DT_INSERTION" 			TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 		INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 			VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°3 : "ORION_ODS"."ODS_PRODUCT_LEVEL" ----------------
----------------------------------------------------------------------------

-- Création de la table "ORION_ODS"."ODS_PRODUCT_LEVEL"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_PRODUCT_LEVEL" ;
CREATE TABLE "ORION_ODS"."ODS_PRODUCT_LEVEL" 
(
	"PRODUCT_LEVEL" 		VARCHAR(100) NOT NULL,
	"PRODUCT_LEVEL_NAME" 	VARCHAR(100) NOT NULL,
	"LB_NOM_FICHIER" 		VARCHAR(100) NOT NULL,
	"DT_INSERTION" 			TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 		INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 			VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°4 : "ORION_ODS"."ODS_PRODUCT_LIST" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_PRODUCT_LIST"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_PRODUCT_LIST" ;
CREATE TABLE "ORION_ODS"."ODS_PRODUCT_LIST" 
(
	"PRODUCT_ID" 		VARCHAR(100) NOT NULL,
	"PRODUCT_NAME" 		VARCHAR(100) NOT NULL,
	"SUPPLIER_ID" 		VARCHAR(100) NOT NULL,
	"PRODUCT_LEVEL" 	VARCHAR(100) NOT NULL,
	"PRODUCT_REF_ID" 	VARCHAR(100) NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°5 : "ORION_ODS"."ODS_SUPPLIER" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_SUPPLIER"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_SUPPLIER" ;
CREATE TABLE "ORION_ODS"."ODS_SUPPLIER" 
(
	"SUPPLIER_ID" 		INTEGER      NOT NULL,
	"SUPPLIER_NAME" 	VARCHAR(45)  NOT NULL,
	"STREET_ID" 		INTEGER      NOT NULL,
	"SUPPLIER_ADDRESS" 	VARCHAR(45)  NOT NULL,
	"SUP_STREET_NUMBER"	CHAR(5)      NOT NULL,
	"COUNTRY" 			CHAR(2)      NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°6 : "ORION_ODS"."ODS_CONTINENT" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_CONTINENT"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_CONTINENT" ;
CREATE TABLE "ORION_ODS"."ODS_CONTINENT" 
(
	"CONTINENT_ID" 		VARCHAR(50)  NOT NULL,
	"CONTINENT_NAME" 	VARCHAR(50)  NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°7 : "ORION_ODS"."ODS_COUNTRY" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_COUNTRY"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_COUNTRY" ;
CREATE TABLE "ORION_ODS"."ODS_COUNTRY" 
(
	"COUNTRY" 				VARCHAR(50)  NOT NULL,
	"COUNTRY_NAME" 			VARCHAR(100) NOT NULL,
	"POPULATION" 			VARCHAR              ,
	"COUNTRY_ID" 			INTEGER      NOT NULL,
	"CONTINENT_ID" 			INTEGER      NOT NULL,
	"COUNTRY_FORMERNAME"  	VARCHAR(45)      	 ,
	"LB_NOM_FICHIER" 		VARCHAR(100) NOT NULL,
	"DT_INSERTION" 			TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 		INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 			VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°8 : "ORION_ODS"."ODS_POSTAL_CODE" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_POSTAL_CODE"
DROP TABLE IF EXISTS "ODS_POSTAL_CODE" ;
CREATE TABLE "ORION_ODS"."ODS_POSTAL_CODE" 
(
	"POSTAL_CODE_ID" 	INTEGER      NOT NULL,
	"POSTAL_CODE" 		INTEGER      NOT NULL,
	"CITY_NAME" 		VARCHAR(15)  NOT NULL,
	"CITY_ID" 			INTEGER      NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°9 : "ORION_ODS"."ODS_STATE" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_STATE"
DROP TABLE IF EXISTS "ODS_STATE" ;
CREATE TABLE "ORION_ODS"."ODS_STATE" 
(
	"STATE_ID" 			INTEGER      NOT NULL,
	"STATE_TYPE" 		INTEGER      NOT NULL,
	"STATE_CODE" 		VARCHAR(15)  NOT NULL,
	"STATE_NAME" 		INTEGER      NOT NULL,
	"COUNTRY" 			CHAR(2) 	 NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°10 : "ORION_ODS"."ODS_STREET_CODE" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_STREET_CODE"
DROP TABLE IF EXISTS "ODS_STREET_CODE" ;
CREATE TABLE "ORION_ODS"."ODS_STREET_CODE" 
(
	"STREET_ID" 		INTEGER      NOT NULL,
	"COUNTRY" 			CHAR(2) 	 NOT NULL,
	"STREET_NAME" 		VARCHAR(30)  NOT NULL,
	"CITY_ID" 			INTEGER      NOT NULL,
	"POSTAL_CODE" 		INTEGER      NOT NULL,
	"FROM_STREET_NUM"	INTEGER      NOT NULL,
	"TO_STREET_NUM"		INTEGER      NOT NULL,
	"CITY_NAME" 		VARCHAR(30)  NOT NULL,
	"COUNT"		 		INTEGER              ,
	"COUNTY_ID"		 	INTEGER              ,
	"POSTAL_CODE_ID" 	INTEGER              ,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°11 : "ORION_ODS"."ODS_COUNTY" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_COUNTY"
DROP TABLE IF EXISTS "ORION_ODS"."ODS_COUNTY" ;
CREATE TABLE "ORION_ODS"."ODS_COUNTY" 
(
	"COUNTY_ID" 		INTEGER      NOT NULL,
	"COUNTY_TYPE" 		VARCHAR         	 ,
	"COUNTY_NAME" 		VARCHAR        		 ,
	"PROVINCE_TYPE" 	INTEGER      NOT NULL,
	"PROVINCE_NAME" 	VARCHAR(30)          ,
	"REGION_NAME" 		VARCHAR(30)          ,
	"REGION_TYPE" 		INTEGER      NOT NULL,
	"STATE_ID" 			INTEGER      NOT NULL,
	"COUNTRY" 			CHAR(2)      NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°12 : "ORION_ODS"."ODS_CITY" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_CITY"
DROP TABLE IF EXISTS "ODS_CITY" ;
CREATE TABLE "ORION_ODS"."ODS_CITY" 
(
	"CITY_ID" 			INTEGER    		NOT NULL,
	"CITY_NAME" 		VARCHAR(45) 	NOT NULL,
	"COUNTRY" 			CHAR(2)     	NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) 	NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 	NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 		NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) 	NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°13 : "ORION_ODS"."ODS_ORG_LEVEL" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_ORG_LEVEL"
DROP TABLE IF EXISTS "ODS_ORG_LEVEL" ;
CREATE TABLE "ORION_ODS"."ODS_ORG_LEVEL" 
(
	"ORG_LEVEL" 		INTEGER      NOT NULL,
	"ORG_LEVEL_NAME" 	VARCHAR(12)  NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°14 : "ORION_ODS"."ODS_ORGANIZATION" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_ORGANIZATION"
DROP TABLE IF EXISTS "ODS_ORGANIZATION" ;
CREATE TABLE "ORION_ODS"."ODS_ORGANIZATION" 
(
	"EMPLOYEE_ID" 		INTEGER      NOT NULL,
	"ORG_NAME" 			VARCHAR(30)  NOT NULL,
	"COUNTRY" 			CHAR(2) 	 NOT NULL,
	"ORG_LEVEL" 		INTEGER      NOT NULL,
	"START_DATE"   		DATE         NOT NULL,
	"END_DATE"   		DATE         NOT NULL,
	"ORG_REF_ID" 		INTEGER 	 NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°15 : "ORION_ODS"."ODS_DISCOUNT" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_DISCOUNT"
DROP TABLE IF EXISTS "ODS_DISCOUNT" ;
CREATE TABLE "ORION_ODS"."ODS_DISCOUNT" 
(
	"PRODUCT_ID" 		INTEGER      NOT NULL,
	"START_DATE"   		DATE         NOT NULL,
	"END_DATE"   		DATE         NOT NULL,
	"UNIT_SALES_PRICE"	DECIMAL(5,2) NOT NULL,
	"DISCOUNT"			DECIMAL(1,2)         ,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°16 : "ORION_ODS"."ODS_ORDERS" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_ORDERS"
DROP TABLE IF EXISTS "ODS_ORDERS" ;
CREATE TABLE "ORION_ODS"."ODS_ORDERS" 
(
	"ORDER_ID" 			INTEGER      NOT NULL,
	"ORDER_TYPE"   		INTEGER      NOT NULL,
	"EMPLOYEE_ID"   	INTEGER      NOT NULL,
	"CUSTOMER_ID"   	INTEGER      NOT NULL,
	"ORDER_DATE"   		DATE         NOT NULL,
	"DELIVERY_DATE"   	DATE         NOT NULL,   
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°17 : "ORION_ODS"."ODS_ORDER_ITEM" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_ORDER_ITEM"
DROP TABLE IF EXISTS "ODS_ORDER_ITEM" ;
CREATE TABLE "ORION_ODS"."ODS_ORDER_ITEM" 
(
	"ORDER_ID" 				INTEGER      NOT NULL,
	"ORDER_ITEM_NUM"   		INTEGER      NOT NULL,
	"PRODUCT_ID"  	 		INTEGER      NOT NULL,
	"QUANTITY"		   		INTEGER      NOT NULL,
	"TOTAL_PRICE_PRICE"		DECIMAL(5,2) NOT NULL,
	"COSTPRICE_PER_UNIT"	DECIMAL(5,2) NOT NULL,
	"DISCOUNT"				DECIMAL(1,2)         ,   
	"LB_NOM_FICHIER" 		VARCHAR(100) NOT NULL,
	"DT_INSERTION" 			TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 		INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 			VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
----------------- Table N°18 : "ORION_ODS"."ODS_STAFF" ----------------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_STAFF"
DROP TABLE IF EXISTS "ODS_STAFF" ;
CREATE TABLE "ORION_ODS"."ODS_STAFF" 
(
	"EMPLOYEE_ID" 		INTEGER      NOT NULL,
	"START_DATE"   		DATE         NOT NULL,
	"END_DATE"   		DATE         NOT NULL,
	"JOB_TITLE" 		VARCHAR(20)  NOT NULL,
	"SALARY" 		  	NUMERIC 	 NOT NULL,
	"GENDER" 			CHAR(1) 	 NOT NULL,
	"BIRTH_DATE"   		DATE         NOT NULL,
	"EMP_HIRE_DATE"   	DATE         NOT NULL,
	"EMP_TERM_DATE"   	DATE                ,
	"MANAGER_ID" 		INTEGER      NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"DT_INSERTION" 		TIMESTAMP 	 NOT NULL,
	"BL_LIGNE_ACTIVE" 	INTEGER 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);

	
----------------------------------------------------------------------------
----------------- Table N°19 : "ORION_ODS"."ODS_REJET" ----------------------
----------------------------------------------------------------------------

--- Création de la table "ORION_ODS"."ODS_REJET"
DROP TABLE IF EXISTS "ODS_REJET" ;
CREATE TABLE "ORION_ODS"."ODS_REJET" 
(
	"LB_CHEMIN_FICHIER" VARCHAR(255) NOT NULL,
	"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,
	"NUM_LIGNE_REJET" 	INTEGER 	 NOT NULL,
	"LB_LIGNE_REJET" 	VARCHAR(500) NOT NULL,
	"LB_MESSAGE_REJET" 	VARCHAR(100) NOT NULL,
	"LB_NOM_FLUX" 		VARCHAR(100) NOT NULL,
	"DT_REJET" 			TIMESTAMP 	 NOT NULL,
	"LB_JOB_NAME" 		VARCHAR(100) NOT NULL
);
