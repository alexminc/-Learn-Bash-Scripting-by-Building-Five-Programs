--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying(50) NOT NULL,
    circumference integer,
    surface integer,
    has_life boolean,
    brojce numeric(5,1),
    opis text
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    circumference integer,
    surface integer,
    has_life boolean,
    brojce numeric(5,1),
    opis text,
    fk_star_galaxy integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    circumference integer,
    surface integer,
    has_life boolean,
    brojce numeric(5,1),
    opis text,
    fk_moon_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    circumference integer,
    surface integer,
    has_life boolean,
    brojce numeric(5,1),
    opis text,
    fk_planet_star integer,
    fk_moon_planet integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    circumference integer,
    surface integer,
    has_life boolean,
    brojce numeric(5,1),
    opis text,
    fk_star_galaxy integer,
    fk_planet_star integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'prva', NULL, NULL, NULL, 33.4, 'text1');
INSERT INTO public.fifth VALUES (2, 'vtora', NULL, NULL, NULL, 33.2, 'text2');
INSERT INTO public.fifth VALUES (3, 'treta', NULL, NULL, NULL, 343.2, 'text3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL, 34.4, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'andromeda', NULL, NULL, NULL, 22.5, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'orion', NULL, NULL, NULL, 443.5, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'ganimed', NULL, NULL, NULL, 44.5, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'spaso', NULL, NULL, NULL, 33.9, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'ango', NULL, NULL, NULL, 321.9, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (93, 'sani', NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (94, 'hani', NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES (95, 'bani', NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (96, 'nani', NULL, NULL, NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES (97, 'qani', NULL, NULL, NULL, NULL, NULL, 23);
INSERT INTO public.moon VALUES (98, 'wani', NULL, NULL, NULL, NULL, NULL, 24);
INSERT INTO public.moon VALUES (99, 'eani', NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES (100, 'rani', NULL, NULL, NULL, NULL, NULL, 25);
INSERT INTO public.moon VALUES (101, 'seni', NULL, NULL, NULL, NULL, NULL, 26);
INSERT INTO public.moon VALUES (102, 'heni', NULL, NULL, NULL, NULL, NULL, 27);
INSERT INTO public.moon VALUES (103, 'beni', NULL, NULL, NULL, NULL, NULL, 28);
INSERT INTO public.moon VALUES (104, 'neni', NULL, NULL, NULL, NULL, NULL, 37);
INSERT INTO public.moon VALUES (105, 'qEni', NULL, NULL, NULL, NULL, NULL, 38);
INSERT INTO public.moon VALUES (106, 'weni', NULL, NULL, NULL, NULL, NULL, 39);
INSERT INTO public.moon VALUES (107, 'eeni', NULL, NULL, NULL, NULL, NULL, 40);
INSERT INTO public.moon VALUES (108, 'reni', NULL, NULL, NULL, NULL, NULL, 41);
INSERT INTO public.moon VALUES (109, 'rEni', NULL, NULL, NULL, NULL, NULL, 42);
INSERT INTO public.moon VALUES (110, 'geni', NULL, NULL, NULL, NULL, NULL, 43);
INSERT INTO public.moon VALUES (111, 'deni', NULL, NULL, NULL, NULL, NULL, 44);
INSERT INTO public.moon VALUES (112, 'dani', NULL, NULL, NULL, NULL, NULL, 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (17, 'gani1', NULL, NULL, NULL, NULL, NULL, 13, 17);
INSERT INTO public.planet VALUES (18, 'gani2', NULL, NULL, NULL, NULL, NULL, 14, 18);
INSERT INTO public.planet VALUES (19, 'jani', NULL, NULL, NULL, NULL, NULL, 15, 19);
INSERT INTO public.planet VALUES (20, 'gini', NULL, NULL, NULL, NULL, NULL, 15, 20);
INSERT INTO public.planet VALUES (21, 'sani', NULL, NULL, NULL, NULL, NULL, 14, 21);
INSERT INTO public.planet VALUES (22, 'hani', NULL, NULL, NULL, NULL, NULL, 14, 22);
INSERT INTO public.planet VALUES (23, 'bani', NULL, NULL, NULL, NULL, NULL, 14, 23);
INSERT INTO public.planet VALUES (24, 'nani', NULL, NULL, NULL, NULL, NULL, 14, 24);
INSERT INTO public.planet VALUES (25, 'qani', NULL, NULL, NULL, NULL, NULL, 14, 25);
INSERT INTO public.planet VALUES (26, 'wani', NULL, NULL, NULL, NULL, NULL, 14, 26);
INSERT INTO public.planet VALUES (27, 'eani', NULL, NULL, NULL, NULL, NULL, 14, 27);
INSERT INTO public.planet VALUES (28, 'rani', NULL, NULL, NULL, NULL, NULL, 14, 28);
INSERT INTO public.planet VALUES (37, 'denki', NULL, NULL, NULL, NULL, NULL, 13, 37);
INSERT INTO public.planet VALUES (38, 'renki', NULL, NULL, NULL, NULL, NULL, 16, 38);
INSERT INTO public.planet VALUES (39, 'tenki', NULL, NULL, NULL, NULL, NULL, 17, 39);
INSERT INTO public.planet VALUES (40, 'yenki', NULL, NULL, NULL, NULL, NULL, 18, 40);
INSERT INTO public.planet VALUES (41, 'uenki', NULL, NULL, NULL, NULL, NULL, 17, 41);
INSERT INTO public.planet VALUES (42, 'ienki', NULL, NULL, NULL, NULL, NULL, 16, 42);
INSERT INTO public.planet VALUES (43, 'oenki', NULL, NULL, NULL, NULL, NULL, 15, 43);
INSERT INTO public.planet VALUES (44, 'penki', NULL, NULL, NULL, NULL, NULL, 14, 44);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (13, 'sun', NULL, NULL, NULL, NULL, NULL, 1, 13);
INSERT INTO public.star VALUES (14, 'kepler1', NULL, NULL, NULL, NULL, NULL, 2, 14);
INSERT INTO public.star VALUES (15, 'kepler2', NULL, NULL, NULL, NULL, NULL, 3, 15);
INSERT INTO public.star VALUES (16, 'dzani', NULL, NULL, NULL, NULL, NULL, 4, 16);
INSERT INTO public.star VALUES (17, 'aca', NULL, NULL, NULL, NULL, NULL, 6, 17);
INSERT INTO public.star VALUES (18, 'rozalinda', NULL, NULL, NULL, NULL, NULL, 5, 18);


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 112, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 44, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_star UNIQUE (fk_star_galaxy);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: fifth unique_name_fifth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT unique_name_fifth UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: planet unique_planet_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_moon UNIQUE (fk_moon_planet);


--
-- Name: moon unique_planet_moon_2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_planet_moon_2 UNIQUE (fk_moon_planet);


--
-- Name: star unique_star_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_galaxy UNIQUE (fk_star_galaxy);


--
-- Name: star unique_star_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_planet UNIQUE (fk_planet_star);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (fk_star_galaxy) REFERENCES public.galaxy(fk_star_galaxy);


--
-- Name: star fk_galaxy_2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_2 FOREIGN KEY (fk_star_galaxy) REFERENCES public.galaxy(fk_star_galaxy);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (fk_moon_planet) REFERENCES public.planet(fk_moon_planet);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (fk_planet_star) REFERENCES public.star(fk_planet_star);


--
-- PostgreSQL database dump complete
--

