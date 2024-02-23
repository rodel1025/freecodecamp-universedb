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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    distance_from_earth integer,
    description text,
    galaxy_type character varying(255)
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
    orbiting_planet character varying(255),
    is_spherical boolean,
    description text,
    planet_id integer,
    moon_name character varying(255) NOT NULL
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
    planet_name character varying(255) NOT NULL,
    size integer NOT NULL,
    description text,
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
    star_name character varying(40) NOT NULL,
    size integer NOT NULL,
    color character varying(255),
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL
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

INSERT INTO public.galaxy VALUES (4, 'Adromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Galaxy1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Galaxy2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Galaxy3', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, 2, 'Callisto');
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, 2, 'IO');
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 2, 'Mimas');
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 2, 'Buck moon');
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 2, 'Flower moon');
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 3, 'Miranda');
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 3, 'Sturgeon moon');
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 3, 'Ganymede');
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 3, 'Amalthea');
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 3, 'Atlas');
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 4, 'Cold moon');
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 4, 'Harvest moon');
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 4, 'Pink moon');
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 4, 'Thebe');
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 4, 'Europa');
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 5, 'Eencaladus');
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 5, 'Blue moon');
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 5, 'Epimetheus');
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 5, 'Himalia');
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 5, 'Strawberry moon');
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, 5, 'Adrastea');
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, 6, 'Worm moon');
INSERT INTO public.moon VALUES (23, NULL, NULL, NULL, 6, 'Wolf moon');
INSERT INTO public.moon VALUES (24, NULL, NULL, NULL, 6, 'Moontoon');
INSERT INTO public.moon VALUES (25, NULL, NULL, NULL, 6, 'Moon cake');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 212312312, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 212312312, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Venus', 212312312, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'Mercury', 212312312, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Jupiter', 212312312, NULL, NULL, 4);
INSERT INTO public.planet VALUES (7, 'Saturn', 212312312, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Uranus', 212312312, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Neptune', 212312312, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Pluto', 212312312, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Kepler1', 212312312, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Kepler2', 212312312, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, 'Kepler3', 212312312, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Aquila', 123123, 'Red', 123123123, 4);
INSERT INTO public.star VALUES (3, 'Antares', 123123, 'Green', 123123123, 5);
INSERT INTO public.star VALUES (4, 'Canis', 123123, 'Green', 123123123, 6);
INSERT INTO public.star VALUES (5, 'Gemini', 123123, 'Yellow', 123123123, 7);
INSERT INTO public.star VALUES (6, 'Leo', 123123, 'Yellow', 123123123, 8);
INSERT INTO public.star VALUES (7, 'Cancer', 123123, 'Yellow', 123123123, 9);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

