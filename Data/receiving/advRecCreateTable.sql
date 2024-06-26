-- Table: advrec.advrec18

DROP TABLE IF EXISTS advrec.advrec18;

CREATE TABLE advrec.advrec18
(
    "Rk" integer,
    "Player" text COLLATE pg_catalog."default",
    "Tm" text COLLATE pg_catalog."default",
    "Age" integer,
    "Pos" text COLLATE pg_catalog."default",
    "G" integer,
    "GS" integer,
    "Tgt" integer,
    "Rec" integer,
    "Yds" integer,
    "TD" integer,
    "1D" integer,
    "YBC" integer,
    "YBC/R" double precision,
    "YAC" integer,
    "YAC/R" double precision,
    "ADOT" double precision,
    "BrkTkl" integer,
    "Rec/Br" double precision,
    "Drop" integer,
    "Drop%" double precision,
    "Int" integer,
    "Rat" double precision,
	"Player-additional" text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS advrec.advrec18
    OWNER to postgres;