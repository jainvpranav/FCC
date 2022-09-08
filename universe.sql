--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.five (
    five_id integer NOT NULL,
    int1 integer,
    int2 integer,
    "numeric" numeric(10,1),
    txt text,
    bool1 boolean,
    bool2 boolean,
    name character varying(30),
    extra_1 character varying(30) NOT NULL
);


ALTER TABLE public.five OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.five_five_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.five_five_id_seq OWNER TO freecodecamp;

--
-- Name: five_five_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.five_five_id_seq OWNED BY public.five.five_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    int1 integer,
    int2 integer,
    "numeric" numeric(10,1),
    txt text,
    bool1 boolean,
    bool2 boolean,
    extra_1 character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    int1 integer,
    int2 integer,
    "numeric" numeric(10,1),
    txt text,
    bool1 boolean,
    bool2 boolean,
    extra_1 character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    int1 integer,
    int2 integer,
    "numeric" numeric(10,1),
    txt text,
    bool1 boolean,
    bool2 boolean,
    extra_1 character varying(30) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    int1 integer,
    int2 integer,
    "numeric" numeric(10,1),
    txt text,
    bool1 boolean,
    bool2 boolean,
    extra_1 character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: five five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five ALTER COLUMN five_id SET DEFAULT nextval('public.five_five_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.five VALUES (1, 1, 2, 1234.0, '6txt', true, false, '1', 'E');
INSERT INTO public.five VALUES (2, 2, 2, 1234.0, '6txt', true, false, '1', 'E');
INSERT INTO public.five VALUES (3, 3, 2, 1234.0, '6txt', true, false, '1', 'E');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'FIRST', 1, 2, 1234.0, 'FIRST_txt', true, false, 'E');
INSERT INTO public.galaxy VALUES (3, 'SECOND', 2, 2, 1234.0, 'SECOND_txt', true, false, 'E');
INSERT INTO public.galaxy VALUES (4, 'THIRD', 3, 2, 1234.0, 'THIRD_txt', true, false, 'E');
INSERT INTO public.galaxy VALUES (5, '4', 4, 2, 1234.0, '4_txt', true, false, 'E');
INSERT INTO public.galaxy VALUES (6, '6', 5, 2, 1234.0, '5_txt', true, false, 'E');
INSERT INTO public.galaxy VALUES (7, '7', 6, 2, 1234.0, '6_txt', true, false, 'E');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 1, 2, 1234.0, '6txt', true, false, 'E', 1);
INSERT INTO public.moon VALUES (2, '1', 2, 2, 1234.0, '6txt', true, false, 'E', 3);
INSERT INTO public.moon VALUES (4, '1', 3, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (5, '1', 4, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (6, '1', 5, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (7, '1', 6, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (8, '1', 7, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (9, '1', 8, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (10, '1', 9, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (11, '1', 10, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (12, '1', 11, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (13, '1', 12, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (14, '1', 13, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (15, '1', 14, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (16, '1', 15, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (17, '1', 16, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (18, '1', 17, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (19, '1', 18, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (20, '1', 19, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.moon VALUES (21, '1', 20, 2, 1234.0, '6txt', true, false, 'E', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1', 1, 2, 1234.0, '6txt', true, false, 'E', 1);
INSERT INTO public.planet VALUES (2, '1', 2, 2, 1234.0, '6txt', true, false, 'E', 3);
INSERT INTO public.planet VALUES (3, '1', 3, 2, 1234.0, '6txt', true, false, 'E', 4);
INSERT INTO public.planet VALUES (4, '1', 4, 2, 1234.0, '6txt', true, false, 'E', 5);
INSERT INTO public.planet VALUES (5, '1', 5, 2, 1234.0, '6txt', true, false, 'E', 6);
INSERT INTO public.planet VALUES (6, '1', 6, 2, 1234.0, '6txt', true, false, 'E', 7);
INSERT INTO public.planet VALUES (7, '1', 7, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.planet VALUES (8, '1', 8, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.planet VALUES (9, '1', 9, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.planet VALUES (10, '1', 10, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.planet VALUES (11, '1', 11, 2, 1234.0, '6txt', true, false, 'E', NULL);
INSERT INTO public.planet VALUES (12, '1', 12, 2, 1234.0, '6txt', true, false, 'E', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1', 1, 2, 1234.0, '1_txt', true, false, 'E', 1);
INSERT INTO public.star VALUES (3, '2', 2, 2, 1234.0, '2_txt', true, false, 'E', 3);
INSERT INTO public.star VALUES (4, '3', 3, 2, 1234.0, '3_txt', true, false, 'E', 4);
INSERT INTO public.star VALUES (5, '4', 4, 2, 1234.0, '4_txt', true, false, 'E', 5);
INSERT INTO public.star VALUES (6, '5', 5, 2, 1234.0, '5_txt', true, false, 'E', 6);
INSERT INTO public.star VALUES (7, '6', 6, 2, 1234.0, '6_txt', true, false, 'E', 7);


--
-- Name: five_five_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.five_five_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 21, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 12, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 7, true);


--
-- Name: five five_int1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_int1_key UNIQUE (int1);


--
-- Name: five five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.five
    ADD CONSTRAINT five_pkey PRIMARY KEY (five_id);


--
-- Name: galaxy galaxy_int1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_int1_key UNIQUE (int1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_int1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_int1_key UNIQUE (int1);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_int1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_int1_key UNIQUE (int1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_int1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_int1_key UNIQUE (int1);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

