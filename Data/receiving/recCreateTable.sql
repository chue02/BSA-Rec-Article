-- Table: public.rec18

-- DROP TABLE IF EXISTS public.rec18;

CREATE TABLE IF NOT EXISTS public.rec18
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
    "Ctch%" text COLLATE pg_catalog."default",
    "Yds" integer,
    "Y/R" double precision,
    "TD" integer,
    "1D" integer,
    "Succ%" double precision,
    "Lng" integer,
    "Y/Tgt" double precision,
    "R/G" double precision,
    "Y/G" double precision,
    "Fmb" integer,
    "Player-additional" text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rec18
    OWNER to postgres;