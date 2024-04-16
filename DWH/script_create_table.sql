--------------------------------------------------------------------------------------------
----------------- SCRIPT DE CREATION DES DIFFERENTES TABLES DIMENSIONNELLES ----------------
--------------------------------------------------------------------------------------------

-- Création du schéma
DROP SCHEMA IF EXISTS "ORION_DWH";
CREATE SCHEMA "ORION_DWH";

-- Schéma à utiliser pour le datawarehouse
SET SEARCH_PATH = "ORION_DWH";

----------------------------------------------------------------------------
----------------- Table Dimension N°1 : "ORION_DWH"."CUSTOMER_DIM" ----------------
----------------------------------------------------------------------------

-- Création de la table "ORION_DWH"."CUSTOMER_DIM"
-- DROP TABLE IF EXISTS "CUSTOMER_DIM" ;
CREATE TABLE "ORION_DWH"."CUSTOMER_DIM" 
(
	"ID_DIM_CUSTOMER" 	SERIAL 	    NOT NULL,
	"CUSTOMER_COUNTRY" 	CHAR(2)     NOT NULL,
	"CUSTOMER_GROUP" 	VARCHAR(40) NOT NULL,
	"CUSTOMER_TYPE" 	VARCHAR(40) NOT NULL,
	"CUSTOMER_GENDER" 	CHAR(1)     NOT NULL,
	"CUSTOMER_AGE_GROUP" 	VARCHAR(12) NOT NULL,
	"CUSTOMER_AGE" 		SMALLINT    NOT NULL,
	"CUSTOMER_NAME" 	VARCHAR(40) NOT NULL,
	"CUSTOMER_FIRSTNAME"    VARCHAR(20) NOT NULL,
	"CUSTOMER_LASTNAME"     VARCHAR(30) NOT NULL,
	"CUSTOMER_BIRTH_DATE"   DATE        NOT NULL,
CONSTRAINT "CUSTOMER_DIM_PKEY" PRIMARY KEY ("ID_DIM_CUSTOMER")
);


----------------------------------------------------------------------------
----------------- Table Dimension N°2 : "ORION_DWH"."PRODUCT_DIM" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_DWH"."PRODUCT_DIM"
DROP TABLE IF EXISTS "PRODUCT_DIM" ;
CREATE TABLE "ORION_DWH"."PRODUCT_DIM" 
(
	"ID_DIM_PRODUCT" 	SERIAL 	    NOT NULL,
	"PRODUCT_ID" 		INTEGER     NOT NULL,
	"PRODUCT_LINE" 		VARCHAR(20) NOT NULL,
	"PRODUCT_CATEGORY" 	VARCHAR(25) NOT NULL,
	"PRODUCT_GROUP" 	VARCHAR(25) NOT NULL,
	"PRODUCT_NAME" 		VARCHAR(45) NOT NULL,
	"SUPPLIER_COUNTRY" 	VARCHAR(2)  NOT NULL,
	"SUPPLIER_NAME" 	VARCHAR(30) NOT NULL,
	"SUPPLIER_ID" 		INTEGER     NOT NULL,
CONSTRAINT "PRODUCT_DIM_PKEY" PRIMARY KEY ("ID_DIM_PRODUCT")
);


----------------------------------------------------------------------------
----------------- Table Dimension N°3 : "ORION_DWH"."ORGANIZATION_DIM" ----------------
----------------------------------------------------------------------------

--- Création de la table "ORION_DWH"."ORGANIZATION_DIM"
DROP TABLE IF EXISTS "ORGANIZATION_DIM" ;
CREATE TABLE "ORION_DWH"."ORGANIZATION_DIM" 
(
	"ID_DIM_ORGANIZATION"     SERIAL      NOT NULL,
	"EMPLOYEE_ID"             INTEGER     NOT NULL,
	"EMPLOYEE_COUNTRY"        CHAR(2)     NOT NULL,
	"COMPANY" 		  CHAR(30)    NOT NULL,
	"DEPARTMENT" 		  VARCHAR(40) NOT NULL,
	"SECTION" 		  VARCHAR(40) NOT NULL,
	"ORG_GROUP" 		  VARCHAR(40) NOT NULL,
	"JOB_TITLE" 		  VARCHAR(25) NOT NULL,
	"EMPLOYEE_NAME" 	  VARCHAR(40) NOT NULL,
	"EMPLOYEE_GENDER" 	  CHAR(1)     NOT NULL,
	"SALARY" 		  DECIMAL(13) NOT NULL,
	"EMPLOYEE_BIRTH_DATE"     DATE 	      NOT NULL,
	"EMPLOYEE_HIRE_DATE"      DATE        NOT NULL,
	"EMPLOYEE_TERM_DATE"      DATE        NOT NULL,
CONSTRAINT "ORGANIZATION_DIM_PKEY" PRIMARY KEY ("ID_DIM_ORGANIZATION")
);


----------------------------------------------------------------------------
----------------- Table Dimension N°4 : "ORION_DWH"."GEOGRAPHY_DIM" ----------------
----------------------------------------------------------------------------
--- Création de la table "ORION_DWH"."GEOGRAPHY_DIM"
DROP TABLE IF EXISTS "GEOGRAPHY_DIM" ;
CREATE TABLE "ORION_DWH"."GEOGRAPHY_DIM" 
(
	"ID_DIM_GEOGRAPHY"    SERIAL      NOT NULL,
	"STREET_ID"           INTEGER     NOT NULL,
	"CONTINENT"           VARCHAR(30) NOT NULL,
	"COUNTRY"             CHAR(2)     NOT NULL,
	"STATE_CODE"          CHAR(2)     NOT NULL,
	"STATE"               VARCHAR(25) NOT NULL,
	"REGION"              VARCHAR(30) NOT NULL,
	"PROVINCE"            VARCHAR(30) NOT NULL,
	"COUNTY"              VARCHAR(60) NOT NULL,
	"CITY"                VARCHAR(30) NOT NULL,
	"POSTAL_CODE"         CHAR(10)    NOT NULL,
	"STREET_NAME"         VARCHAR(45) NOT NULL,
CONSTRAINT "GEOGRAPHY_DIM_PKEY" PRIMARY KEY ("ID_DIM_GEOGRAPHY")
);


----------------------------------------------------------------------------
----------------- Table Dimension N°5 : "ORION_DWH"."TIME_DIM" ----------------
----------------------------------------------------------------------------
--- Création de la table "ORION_DWH"."TIME_DIM"
DROP TABLE IF EXISTS "TIME_DIM" ;
CREATE TABLE "ORION_DWH"."TIME_DIM" 
(
	"ID_DIM_CALENDAR"   SERIAL      NOT NULL,
	"DATE_ID"           DATE        NOT NULL,
	"YEAR_ID"           CHAR(4)     NOT NULL,
	"QUARTER"           CHAR(6)     NOT NULL,
	"MONTH_NAME"        VARCHAR(20) NOT NULL,
	"WEEKDAY_NAME"      VARCHAR(20) NOT NULL,
	"MONTH_NUM"         SMALLINT    NOT NULL,
	"WEEKDAY_NUM"       SMALLINT    NOT NULL,
CONSTRAINT "TIME_DIM_PKEY" PRIMARY KEY ("ID_DIM_CALENDAR")
);


----------------------------------------------------------------------------
----------------- Table DE FAITS : "ORION_DWH"."ORDER_FACT" ----------------
----------------------------------------------------------------------------
--- Création de la table "ORION_DWH"."ORDER_FACT"
DROP TABLE IF EXISTS "ORDER_FACT" ;
CREATE TABLE "ORION_DWH"."ORDER_FACT" 
(
	"ID_FACT_ORDER"   	SERIAL    	  NOT NULL,
	"ID_DIM_CUSTOMER"     	INTEGER   	  NOT NULL,
	"ID_DIM_PRODUCT"     	INTEGER 	  NOT NULL,
	"ID_DIM_ORGANIZATION"   INTEGER 	  NOT NULL,
	"ID_DIM_GEOGRAPHY"     	INTEGER 	  NOT NULL,
	"ID_DIM_CALENDAR" 	  	INTEGER 	  NOT NULL,
	"ORDER_ID" 	  	INTEGER 	  NOT NULL,
	"ORDER_TYPE" 	  	SMALLINT     	  NOT NULL,
	"DELIVERY_DATE"   	DATE 		  NOT NULL,
	"QUANTITY" 	  	SMALLINT 	  NOT NULL,
	"TOTAL_RETAIL_PRICE"    NUMERIC 	  NOT NULL,
	"COSTPRICE_PER_UNIT"    NUMERIC 	  NOT NULL,
	"DISCOUNT" 		NUMERIC      NOT NULL,
	CONSTRAINT "ORDER_FACT_PKEY" PRIMARY KEY ("ID_FACT_ORDER"),
	CONSTRAINT "CALENDAR_FACT_FKEY" FOREIGN KEY ("ID_DIM_CALENDAR") REFERENCES "TIME_DIM" ("ID_DIM_CALENDAR"),
	CONSTRAINT "CUSTOMER_FACT_FKEY" FOREIGN KEY ("ID_DIM_CUSTOMER") REFERENCES "CUSTOMER_DIM" ("ID_DIM_CUSTOMER"),
	CONSTRAINT "PRODUCT_FACT_FKEY" FOREIGN KEY ("ID_DIM_PRODUCT") REFERENCES "PRODUCT_DIM" ("ID_DIM_PRODUCT"),
	CONSTRAINT "ORGANIZATION_FACT_FKEY" FOREIGN KEY ("ID_DIM_ORGANIZATION") REFERENCES "ORGANIZATION_DIM" ("ID_DIM_ORGANIZATION"),
	CONSTRAINT "GEOGRAPHY_FACT_FKEY" FOREIGN KEY ("ID_DIM_GEOGRAPHY") REFERENCES "GEOGRAPHY_DIM" ("ID_DIM_GEOGRAPHY")
);