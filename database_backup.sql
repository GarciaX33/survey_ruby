--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO "Guest";

--
-- Name: questions; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE questions (
    id bigint NOT NULL,
    question character varying,
    survey_id integer
);


ALTER TABLE questions OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE questions_id_seq OWNER TO "Guest";

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "Guest";

--
-- Name: surveys; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE surveys (
    id bigint NOT NULL,
    name character varying
);


ALTER TABLE surveys OWNER TO "Guest";

--
-- Name: surveys_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE surveys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE surveys_id_seq OWNER TO "Guest";

--
-- Name: surveys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE surveys_id_seq OWNED BY surveys.id;


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: surveys id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY surveys ALTER COLUMN id SET DEFAULT nextval('surveys_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2017-09-26 17:22:56.993179	2017-09-26 17:22:56.993179
\.


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY questions (id, question, survey_id) FROM stdin;
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('questions_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY schema_migrations (version) FROM stdin;
20170926153348
20170926175357
20170926175405
20170926180031
\.


--
-- Data for Name: surveys; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY surveys (id, name) FROM stdin;
1	Favorite Vegetables
\.


--
-- Name: surveys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('surveys_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: surveys surveys_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY surveys
    ADD CONSTRAINT surveys_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

