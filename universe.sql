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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth character varying(30),
    approximate_radius_in_miles character varying(30),
    in_galaxy character varying(30)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    age_in_billions numeric(4,1),
    light_years_from_earth character varying(30)
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
    in_constellation character varying(60),
    moon_of text,
    has_water boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    in_constellation character varying(60) NOT NULL,
    length_of_day character varying(60),
    has_water boolean,
    distance_from_earth character varying(60),
    number_of_moons integer,
    number_of_suns integer
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
    star_type character varying(60),
    in_orbit text,
    in_constellation character varying(30),
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A', '26,000 Light-Years', '7.5 Million', 'Milky Way');
INSERT INTO public.blackhole VALUES (2, 'M87', '55 Million Light-Years', '24 Billion', 'Messier 87');
INSERT INTO public.blackhole VALUES (3, 'Cygnus X-1', '6,000 Light-Years', '18.6', 'Milky Way');
INSERT INTO public.blackhole VALUES (4, 'TON 618', '10.4 Billion Light-Years', '75 Billion', 'Quasar TON 618');
INSERT INTO public.blackhole VALUES (5, 'A0620-00', '3,000 Light-Years', '7.5', 'Milky Way');
INSERT INTO public.blackhole VALUES (6, 'V404 Cygni', '8,000 Light-Years', '9.3', 'Milky Way');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral (barred)', 13.6, '0');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral (barred)', 10.0, '2.537 Million');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral (late-type)', 10.0, '2.73 Million');
INSERT INTO public.galaxy VALUES (4, 'Bode''s', 'Spiral (barred)', 10.0, '12 Billion');
INSERT INTO public.galaxy VALUES (5, 'Canis Major Dwarf', 'Dwarf (elliptical)', 10.0, '25,000');
INSERT INTO public.galaxy VALUES (6, 'Sagittarius dE', 'Dwarf (elliptical)', 13.0, '70,000');
INSERT INTO public.galaxy VALUES (7, 'Wolf-Lundmark-Melotte', 'Dwarf (irregular)', 13.0, '3 Million');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', 'Aries', 'Mars', false, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Aries', 'Mars', NULL, 3);
INSERT INTO public.moon VALUES (4, 'Io', 'Ophiuchus', 'Jupiter', false, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Ophiuchus', 'Jupiter', true, 4);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Ophiuchus', 'Jupiter', true, 4);
INSERT INTO public.moon VALUES (7, 'Titan', 'Capricornus', 'Saturn', true, 5);
INSERT INTO public.moon VALUES (8, 'Rhea', 'Capricornus', 'Saturn', true, 5);
INSERT INTO public.moon VALUES (9, 'Iapetus', 'Capricornus', 'Saturn', true, 5);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Capricornus', 'Saturn', true, 5);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'Capricornus', 'Saturn', true, 5);
INSERT INTO public.moon VALUES (12, 'Miranda', 'Aquarius', 'Uranus', true, 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 'Aquarius', 'Uranus', true, 6);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Aquarius', 'Uranus', true, 6);
INSERT INTO public.moon VALUES (15, 'Titania', 'Aquarius', 'Uranus', true, 6);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Aquarius', 'Uranus', true, 6);
INSERT INTO public.moon VALUES (17, 'Triton', 'Aquarius', 'Neptune', true, 7);
INSERT INTO public.moon VALUES (18, 'Naiad', 'Aquarius', 'Neptune', NULL, 7);
INSERT INTO public.moon VALUES (19, 'Hippocamp', 'Aquarius', 'Neptune', NULL, 7);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Aquarius', 'Neptune', true, 7);
INSERT INTO public.moon VALUES (1, '''The Moon''', 'Varies', 'Earth', true, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Jupiter', 'Gas Giant', 'Varies', '9.9 Earth Hours', false, '391 Million Miles', 79, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Gas Giant', 'Varies', '10.7 Earth Hours', false, '746 Million Miles', 82, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Ice Giant', 'Varies', '17.2 Earth Hours', true, '1.8 Billion Miles', 27, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 'Ice Giant', 'Varies', '16 Earth Hours', true, '2.7 Billion Miles', 14, 1);
INSERT INTO public.planet VALUES (8, 'Proxima Centauri b', 'Terrestrial', 'Centaurus', '11.2 Earth Days', NULL, '4.24 Light-Years', NULL, 1);
INSERT INTO public.planet VALUES (9, 'Gliese 581g', 'Terrestrial', 'Libra', '37 Earth Days', NULL, '20.3 Light-Years', NULL, 1);
INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 'Varies', '59 Earth Days', true, '48 Million Miles', 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 'Varies', '243 Earth Days', false, '25 Million Miles', 0, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 'Terrestrial', 'Varies', '24.6 Earth Hours', true, '140 Million Miles', 2, 1);
INSERT INTO public.planet VALUES (15, 'Earth', 'Terrestrial', 'Varies', '24 Earth Hours', true, '0 Miles. It is Earth.', 1, 1);
INSERT INTO public.planet VALUES (11, '55 Cancri e', 'Super-Earth', 'Cancer', '18 Earth Days', false, '41 Light-Years', NULL, 1);
INSERT INTO public.planet VALUES (13, 'Barnard''s Star b', 'Super-Earth', 'Ophiuchus', '233 Earth Days', NULL, '6 Light-Years', NULL, 1);
INSERT INTO public.planet VALUES (10, '51 Pegasi b', 'Gas Giant', 'Pegasus', '4.2 Earth Days', false, '50.9 Light-Years', NULL, 1);
INSERT INTO public.planet VALUES (12, 'K2-18b', 'Super-Earth (Sub-Neptune)', 'Leo', 'Unknown', true, '124 Light-Years', NULL, 1);
INSERT INTO public.planet VALUES (14, 'KELT-9b', 'Hot Jupiter', 'Cygnus', '20.4 Earth Hours', false, '620 Light-Years', NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'G-Type Main-Sequence (G2V)', 'Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, & others.', 'Varies', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red Dwarf (M5.5V)', 'Proxima Centauri b', 'Centaurus', 1);
INSERT INTO public.star VALUES (3, 'Gliese 581', 'Red Dwarf (M3.5V)', 'Gliese 581b, Gliese 581c, Gliese 581d, & Gliese 581g.', 'Libra', 1);
INSERT INTO public.star VALUES (4, '51 Pegasi', 'G-Type Main-Sequence (G5V)', '51 Pegasi b', 'Pegasus', 1);
INSERT INTO public.star VALUES (5, 'K2-18', 'Red Dwarf (M2)', 'K2-18b', 'Leo', 1);
INSERT INTO public.star VALUES (6, 'KELT-9', 'A-Type Main-Sequence (A1V)', 'KELT-9b', 'Cygnus', 1);
INSERT INTO public.star VALUES (7, '55 Cancri A', 'G-Type Main-Sequence (G8V)', 'Cancri b, Cancri c, Cancri d, Cancri e, & Cancri f.', 'Cancer', 1);
INSERT INTO public.star VALUES (8, 'Barnard''s Star', 'Red Dwarf (M4Ve)', 'Barnard''s Star b', 'Ophiuchus', 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


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
-- Name: star star_in_constellation_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_constellation_unique UNIQUE (in_constellation);


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
-- Name: planet planet_in_constellation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_in_constellation_fkey FOREIGN KEY (in_constellation) REFERENCES public.star(in_constellation);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

