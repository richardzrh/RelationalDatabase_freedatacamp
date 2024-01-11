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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--
CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_ly integer,
    distance_mly numeric,
    is_visiable boolean
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
    name character varying(30) NOT NULL,
    discover_year integer,
    groups text,
    planet_id integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation text,
    galaxy_id integer
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_km integer,
    distance_from_star_mkm numeric,
    has_life boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    type text,
    brightness integer,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'
::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 100000, 0, true);
INSERT INTO public.galaxy VALUES (2, 'LMC', 14000, 0.158, true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 220000, 2.5, true);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 37000, 11.5, false);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 170000, 20.87, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 50000, 29.35, false);
INSERT INTO public.galaxy VALUES (7, 'Whirpool Galaxy', 60000, 30, false);
INSERT INTO public.galaxy VALUES (8, 'NGC1300', 110000, 61, false);
INSERT INTO public.galaxy VALUES (9, 'Tadpole Galaxy', 280000, 420, false);
INSERT INTO public.galaxy VALUES (10, 'Hoag Object', 100000, 600, false);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Metis', 1979, 'Inner', 5);
INSERT INTO public.moon VALUES (2, 'Adrastea', 1979, 'Inner', 5);
INSERT INTO public.moon VALUES (3, 'Thebe', 1892, 'Inner', 5);
INSERT INTO public.moon VALUES (4, 'Amalthea', 1979, 'Inner', 5);
INSERT INTO public.moon VALUES (5, 'Io', 1610, 'Galilean', 5);
INSERT INTO public.moon VALUES (6, 'Europa', 1610, 'Galilean', 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 1610, 'Galilean', 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 1610, 'Galilean', 5);
INSERT INTO public.moon VALUES (9, 'Themistot', 1975, 'Themisto', 5);
INSERT INTO public.moon VALUES (10, 'Leda', 1974, 'Himalia', 5);
INSERT INTO public.moon VALUES (11, 'Ersa', 2018, 'Himalia', 5);
INSERT INTO public.moon VALUES (12, 'S2018J2', 2018, 'Himalia', 5);
INSERT INTO public.moon VALUES (13, 'Himalia', 1904, 'Himalia', 5);
INSERT INTO public.moon VALUES (14, 'Pandia', 2017, 'Himalia', 5);
INSERT INTO public.moon VALUES (15, 'Lysithea', 1938, 'Himalia', 5);
INSERT INTO public.moon VALUES (16, 'Elara', 1905, 'Himalia', 5);
INSERT INTO public.moon VALUES (17, 'S2011J3', 2011, 'Himalia', 5);
INSERT INTO public.moon VALUES (18, 'Dia', 2000, 'Himalia', 5);
INSERT INTO public.moon VALUES (19, 'Pan', 1990, 'TBD', 6);
INSERT INTO public.moon VALUES (20, 'Atlas', 1980, 'TBD', 6);

--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'milky way', 'Sagittarius', 1);
INSERT INTO public.more_info VALUES (2, 'Andromeda Galaxy', 'Andromeda', 3);
INSERT INTO public.more_info VALUES (3, 'Cigar Galaxy', 'Ursa Major', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 5000, 58, false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 12000, 108, false, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 7000, 228, false, 7);
INSERT INTO public.planet VALUES (5, 'Jupter', 140000, 778, false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 120000, 1430, false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 51000, 2870, false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 49000, 3500, false, 7);
INSERT INTO public.planet VALUES (9, 'Corot-7b', NULL, 2.6, false, 8);
INSERT INTO public.planet VALUES (10, 'GLIESE 581d', NULL, 32.9, false, 9);
INSERT INTO public.planet VALUES (11, 'GLIESE 581e', NULL, 4.5, false, 9);
INSERT INTO public.planet VALUES (12, 'HD209458b', NULL, 7, false, 10);
INSERT INTO public.planet VALUES (3, 'Earth', 13000, 150, true, 7);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 'supergiant', 2, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'main sequence', 26000000, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'main sequence', 2, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'main supergiant', 140000, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 'supergiant', 53800, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'white dwarf', 37, 1);
INSERT INTO public.star VALUES (7, 'Sun', 'main sequence', 1, 1);
INSERT INTO public.star VALUES (8, 'Corot-7', 'main sequence', NULL, 1);
INSERT INTO public.star VALUES (9, 'Gliese 581', 'red dwarf', 0, 1);
INSERT INTO public.star VALUES (10, 'HD209458', 'main sequence', NULL, 1);

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

--
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
-- Name: more_info more_info_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

