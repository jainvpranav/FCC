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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1666788569534', 1, 0);
INSERT INTO public.users VALUES (2, NULL, NULL, 215);
INSERT INTO public.users VALUES (3, NULL, 2, NULL);
INSERT INTO public.users VALUES (4, NULL, NULL, 680);
INSERT INTO public.users VALUES (5, 'user_1666788569533', 1, 0);
INSERT INTO public.users VALUES (6, NULL, NULL, 151);
INSERT INTO public.users VALUES (7, NULL, 2, NULL);
INSERT INTO public.users VALUES (8, NULL, NULL, 2);
INSERT INTO public.users VALUES (9, NULL, 2, NULL);
INSERT INTO public.users VALUES (10, NULL, NULL, 540);
INSERT INTO public.users VALUES (11, NULL, 2, NULL);
INSERT INTO public.users VALUES (12, NULL, NULL, 746);
INSERT INTO public.users VALUES (13, NULL, 2, NULL);
INSERT INTO public.users VALUES (14, NULL, NULL, 988);
INSERT INTO public.users VALUES (15, 'user_1666788624307', 1, 0);
INSERT INTO public.users VALUES (16, NULL, NULL, 974);
INSERT INTO public.users VALUES (17, NULL, 2, NULL);
INSERT INTO public.users VALUES (18, NULL, NULL, 19);
INSERT INTO public.users VALUES (19, 'user_1666788624306', 1, 0);
INSERT INTO public.users VALUES (20, NULL, NULL, 637);
INSERT INTO public.users VALUES (21, NULL, 2, NULL);
INSERT INTO public.users VALUES (22, NULL, NULL, 986);
INSERT INTO public.users VALUES (23, NULL, 2, NULL);
INSERT INTO public.users VALUES (24, NULL, NULL, 347);
INSERT INTO public.users VALUES (25, NULL, 2, NULL);
INSERT INTO public.users VALUES (26, NULL, NULL, 46);
INSERT INTO public.users VALUES (27, NULL, 2, NULL);
INSERT INTO public.users VALUES (28, NULL, NULL, 647);
INSERT INTO public.users VALUES (29, 'user_1666788787947', 1, 0);
INSERT INTO public.users VALUES (30, NULL, NULL, 888);
INSERT INTO public.users VALUES (31, NULL, 2, NULL);
INSERT INTO public.users VALUES (32, NULL, NULL, 14);
INSERT INTO public.users VALUES (33, 'user_1666788787946', 1, 0);
INSERT INTO public.users VALUES (34, NULL, NULL, 571);
INSERT INTO public.users VALUES (35, NULL, 2, NULL);
INSERT INTO public.users VALUES (36, NULL, NULL, 421);
INSERT INTO public.users VALUES (37, NULL, 2, NULL);
INSERT INTO public.users VALUES (38, NULL, NULL, 214);
INSERT INTO public.users VALUES (39, NULL, 2, NULL);
INSERT INTO public.users VALUES (40, NULL, NULL, 221);
INSERT INTO public.users VALUES (41, NULL, 2, NULL);
INSERT INTO public.users VALUES (42, NULL, NULL, 962);
INSERT INTO public.users VALUES (43, 'user_1666788873005', 1, 0);
INSERT INTO public.users VALUES (44, NULL, NULL, 847);
INSERT INTO public.users VALUES (45, NULL, 2, NULL);
INSERT INTO public.users VALUES (46, NULL, NULL, 221);
INSERT INTO public.users VALUES (47, 'user_1666788873004', 1, 0);
INSERT INTO public.users VALUES (48, NULL, NULL, 665);
INSERT INTO public.users VALUES (49, NULL, 2, NULL);
INSERT INTO public.users VALUES (50, NULL, NULL, 932);
INSERT INTO public.users VALUES (51, NULL, 2, NULL);
INSERT INTO public.users VALUES (52, NULL, NULL, 909);
INSERT INTO public.users VALUES (53, NULL, 2, NULL);
INSERT INTO public.users VALUES (54, NULL, NULL, 198);
INSERT INTO public.users VALUES (55, NULL, 2, NULL);
INSERT INTO public.users VALUES (56, NULL, NULL, 490);
INSERT INTO public.users VALUES (57, 'user_1666788904109', 1, 0);
INSERT INTO public.users VALUES (58, NULL, NULL, 651);
INSERT INTO public.users VALUES (59, NULL, 2, NULL);
INSERT INTO public.users VALUES (60, NULL, NULL, 75);
INSERT INTO public.users VALUES (61, 'user_1666788904108', 1, 0);
INSERT INTO public.users VALUES (62, NULL, NULL, 184);
INSERT INTO public.users VALUES (63, NULL, 2, NULL);
INSERT INTO public.users VALUES (64, NULL, NULL, 424);
INSERT INTO public.users VALUES (65, NULL, 2, NULL);
INSERT INTO public.users VALUES (66, NULL, NULL, 716);
INSERT INTO public.users VALUES (67, NULL, 2, NULL);
INSERT INTO public.users VALUES (68, NULL, NULL, 964);
INSERT INTO public.users VALUES (69, NULL, 2, NULL);
INSERT INTO public.users VALUES (70, NULL, NULL, 828);
INSERT INTO public.users VALUES (71, 'user_1666788954000', 1, 0);
INSERT INTO public.users VALUES (72, NULL, NULL, 45);
INSERT INTO public.users VALUES (73, NULL, 2, NULL);
INSERT INTO public.users VALUES (74, NULL, NULL, 98);
INSERT INTO public.users VALUES (75, 'user_1666788953999', 1, 0);
INSERT INTO public.users VALUES (76, NULL, NULL, 899);
INSERT INTO public.users VALUES (77, NULL, 2, NULL);
INSERT INTO public.users VALUES (78, NULL, NULL, 28);
INSERT INTO public.users VALUES (79, NULL, 2, NULL);
INSERT INTO public.users VALUES (80, NULL, NULL, 651);
INSERT INTO public.users VALUES (81, NULL, 2, NULL);
INSERT INTO public.users VALUES (82, NULL, NULL, 911);
INSERT INTO public.users VALUES (83, NULL, 2, NULL);
INSERT INTO public.users VALUES (84, NULL, NULL, 546);
INSERT INTO public.users VALUES (85, 'user_1666789047451', 1, 0);
INSERT INTO public.users VALUES (86, NULL, NULL, 344);
INSERT INTO public.users VALUES (87, NULL, 2, NULL);
INSERT INTO public.users VALUES (88, NULL, NULL, 87);
INSERT INTO public.users VALUES (89, 'user_1666789047450', 1, 0);
INSERT INTO public.users VALUES (90, NULL, NULL, 352);
INSERT INTO public.users VALUES (91, NULL, 2, NULL);
INSERT INTO public.users VALUES (92, NULL, NULL, 191);
INSERT INTO public.users VALUES (93, NULL, 2, NULL);
INSERT INTO public.users VALUES (94, NULL, NULL, 23);
INSERT INTO public.users VALUES (95, NULL, 2, NULL);
INSERT INTO public.users VALUES (96, NULL, NULL, 348);
INSERT INTO public.users VALUES (97, NULL, 2, NULL);
INSERT INTO public.users VALUES (98, NULL, NULL, 365);
INSERT INTO public.users VALUES (99, 'user_1666789067636', 1, 0);
INSERT INTO public.users VALUES (100, NULL, NULL, 650);
INSERT INTO public.users VALUES (101, NULL, 2, NULL);
INSERT INTO public.users VALUES (102, NULL, NULL, 26);
INSERT INTO public.users VALUES (103, 'user_1666789067635', 1, 0);
INSERT INTO public.users VALUES (104, NULL, NULL, 568);
INSERT INTO public.users VALUES (105, NULL, 2, NULL);
INSERT INTO public.users VALUES (106, NULL, NULL, 21);
INSERT INTO public.users VALUES (107, NULL, 2, NULL);
INSERT INTO public.users VALUES (108, NULL, NULL, 158);
INSERT INTO public.users VALUES (109, NULL, 2, NULL);
INSERT INTO public.users VALUES (110, NULL, NULL, 228);
INSERT INTO public.users VALUES (111, NULL, 2, NULL);
INSERT INTO public.users VALUES (112, NULL, NULL, 201);
INSERT INTO public.users VALUES (113, 'user_1666789200360', 1, 0);
INSERT INTO public.users VALUES (114, NULL, NULL, 330);
INSERT INTO public.users VALUES (115, NULL, 2, NULL);
INSERT INTO public.users VALUES (116, NULL, NULL, 876);
INSERT INTO public.users VALUES (117, 'user_1666789200359', 1, 0);
INSERT INTO public.users VALUES (118, NULL, NULL, 651);
INSERT INTO public.users VALUES (119, NULL, 2, NULL);
INSERT INTO public.users VALUES (120, NULL, NULL, 59);
INSERT INTO public.users VALUES (121, NULL, 2, NULL);
INSERT INTO public.users VALUES (122, NULL, NULL, 896);
INSERT INTO public.users VALUES (123, NULL, 2, NULL);
INSERT INTO public.users VALUES (124, NULL, NULL, 570);
INSERT INTO public.users VALUES (125, NULL, 2, NULL);
INSERT INTO public.users VALUES (126, NULL, NULL, 378);
INSERT INTO public.users VALUES (127, 'pran', 1, 0);
INSERT INTO public.users VALUES (128, NULL, 2, NULL);
INSERT INTO public.users VALUES (129, NULL, NULL, 1);
INSERT INTO public.users VALUES (130, NULL, 2, NULL);
INSERT INTO public.users VALUES (138, 'user_1666789685163', 2, 904);
INSERT INTO public.users VALUES (132, 'user_1666789603121', 2, 386);
INSERT INTO public.users VALUES (131, 'user_1666789603122', 5, 727);
INSERT INTO public.users VALUES (137, 'user_1666789685164', 5, 874);
INSERT INTO public.users VALUES (134, 'user_1666789648624', 2, 772);
INSERT INTO public.users VALUES (133, 'user_1666789648625', 5, 877);
INSERT INTO public.users VALUES (140, 'user_1666789713535', 2, 707);
INSERT INTO public.users VALUES (139, 'user_1666789713536', 5, 815);
INSERT INTO public.users VALUES (136, 'user_1666789669852', 2, 505);
INSERT INTO public.users VALUES (135, 'user_1666789669853', 5, 911);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 140, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

