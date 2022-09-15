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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    has_life boolean,
    asteroid_id integer NOT NULL,
    name character varying(50),
    description text NOT NULL,
    distance_from_earth integer NOT NULL,
    size numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    age_in_millions_years integer,
    distance_from_earth integer NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    age_in_millions_years integer,
    has_life boolean,
    distance_from_earth integer NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    age_in_millions_years integer,
    has_life boolean,
    distance_from_earth integer NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50),
    age_in_millions_years integer,
    galaxy_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (false, 1, 'oo', 'big', 10, 100);
INSERT INTO public.asteroid VALUES (false, 2, 'oo', 'big', 1, 100);
INSERT INTO public.asteroid VALUES (false, 3, 'do', 'small', 12, 15);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 50, 80, true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 10, 11, false);
INSERT INTO public.galaxy VALUES (3, 'c', 10, 12, false);
INSERT INTO public.galaxy VALUES (4, 'd', 10, 13, false);
INSERT INTO public.galaxy VALUES (5, 'e', 10, 14, false);
INSERT INTO public.galaxy VALUES (6, 'f', 10, 15, false);
INSERT INTO public.galaxy VALUES (7, 'g', 10, 16, false);
INSERT INTO public.galaxy VALUES (8, 'g', 10, 17, false);
INSERT INTO public.galaxy VALUES (9, 'g', 10, 18, false);
INSERT INTO public.galaxy VALUES (10, 'g', 10, 19, false);
INSERT INTO public.galaxy VALUES (11, 'g', 10, 20, false);
INSERT INTO public.galaxy VALUES (12, 'g', 10, 21, false);
INSERT INTO public.galaxy VALUES (13, 'g', 10, 22, false);
INSERT INTO public.galaxy VALUES (14, 'g', 10, 23, false);
INSERT INTO public.galaxy VALUES (15, 'g', 10, 24, false);
INSERT INTO public.galaxy VALUES (16, 'g', 10, 25, false);
INSERT INTO public.galaxy VALUES (17, 'g', 10, 26, false);
INSERT INTO public.galaxy VALUES (18, 'g', 10, 27, false);
INSERT INTO public.galaxy VALUES (19, 'g', 10, 28, false);
INSERT INTO public.galaxy VALUES (20, 'g', 10, 29, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 10, false, 10, true);
INSERT INTO public.moon VALUES (2, 'io', 11, false, 11, true);
INSERT INTO public.moon VALUES (3, 'i', 11, false, 12, true);
INSERT INTO public.moon VALUES (4, 'i', 11, false, 13, true);
INSERT INTO public.moon VALUES (5, 'i', 11, false, 14, true);
INSERT INTO public.moon VALUES (6, 'i', 11, false, 15, true);
INSERT INTO public.moon VALUES (7, 'i', 11, false, 16, true);
INSERT INTO public.moon VALUES (8, 'i', 11, false, 17, true);
INSERT INTO public.moon VALUES (9, 'i', 11, false, 18, true);
INSERT INTO public.moon VALUES (10, 'i', 11, false, 19, true);
INSERT INTO public.moon VALUES (11, 'i', 11, false, 20, true);
INSERT INTO public.moon VALUES (12, 'i', 11, false, 21, true);
INSERT INTO public.moon VALUES (13, 'i', 11, false, 22, true);
INSERT INTO public.moon VALUES (14, 'i', 11, false, 23, true);
INSERT INTO public.moon VALUES (15, 'i', 11, false, 24, true);
INSERT INTO public.moon VALUES (16, 'i', 11, false, 25, true);
INSERT INTO public.moon VALUES (17, 'i', 11, false, 26, true);
INSERT INTO public.moon VALUES (18, 'i', 11, false, 27, true);
INSERT INTO public.moon VALUES (19, 'i', 11, false, 28, true);
INSERT INTO public.moon VALUES (20, 'i', 11, false, 29, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 4, true, 10, true);
INSERT INTO public.planet VALUES (2, 'venus', 3, false, 11, true);
INSERT INTO public.planet VALUES (3, 'venus', 4, false, 12, true);
INSERT INTO public.planet VALUES (4, 'venus', 4, false, 13, true);
INSERT INTO public.planet VALUES (5, 'venus', 4, false, 14, true);
INSERT INTO public.planet VALUES (6, 'venus', 4, false, 15, true);
INSERT INTO public.planet VALUES (7, 'pluto', 4, false, 16, true);
INSERT INTO public.planet VALUES (8, 'pluto', 4, false, 17, true);
INSERT INTO public.planet VALUES (9, 'pluto', 4, false, 18, true);
INSERT INTO public.planet VALUES (10, 'pluto', 4, false, 19, true);
INSERT INTO public.planet VALUES (11, 'pluto', 4, false, 20, true);
INSERT INTO public.planet VALUES (12, 'pluto', 4, false, 21, true);
INSERT INTO public.planet VALUES (13, 'pluto', 4, false, 22, true);
INSERT INTO public.planet VALUES (43, 'pluto', 4, false, 23, true);
INSERT INTO public.planet VALUES (15, 'pluto', 4, false, 24, true);
INSERT INTO public.planet VALUES (65, 'pluto', 4, false, 25, true);
INSERT INTO public.planet VALUES (17, 'pluto', 4, false, 26, true);
INSERT INTO public.planet VALUES (18, 'pluto', 4, false, 27, true);
INSERT INTO public.planet VALUES (19, 'pluto', 4, false, 28, true);
INSERT INTO public.planet VALUES (20, 'pluto', 4, false, 29, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 10, 1, 10, true, 1);
INSERT INTO public.star VALUES ('swe', 10, 2, 11, false, 2);
INSERT INTO public.star VALUES ('swe', 10, 3, 12, false, 3);
INSERT INTO public.star VALUES ('den', 10, 4, 13, true, 4);
INSERT INTO public.star VALUES ('lax', 10, 5, 14, true, 5);
INSERT INTO public.star VALUES ('ati', 10, 6, 15, true, 6);
INSERT INTO public.star VALUES ('hajf', 10, 7, 16, false, 7);
INSERT INTO public.star VALUES ('hajf', 10, 8, 17, false, 8);
INSERT INTO public.star VALUES ('hajf', 10, 9, 18, false, 9);
INSERT INTO public.star VALUES ('hajf', 10, 10, 19, false, 10);
INSERT INTO public.star VALUES ('hajf', 11, 10, 20, false, 11);
INSERT INTO public.star VALUES ('hajf', 12, 10, 21, false, 12);
INSERT INTO public.star VALUES ('hajf', 13, 10, 22, false, 13);
INSERT INTO public.star VALUES ('hajf', 14, 10, 23, false, 14);
INSERT INTO public.star VALUES ('hajf', 15, 10, 24, false, 15);
INSERT INTO public.star VALUES ('hajf', 16, 10, 25, false, 16);
INSERT INTO public.star VALUES ('hajf', 17, 10, 26, false, 17);
INSERT INTO public.star VALUES ('hajf', 18, 10, 27, false, 18);
INSERT INTO public.star VALUES ('hajf', 19, 10, 28, false, 19);
INSERT INTO public.star VALUES ('hajf', 20, 10, 29, false, 20);


--
-- Name: asteroid asteroid_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_distance_from_earth_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_fkey FOREIGN KEY (distance_from_earth) REFERENCES public.planet(distance_from_earth);


--
-- Name: planet planet_distance_from_earth_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_fkey FOREIGN KEY (distance_from_earth) REFERENCES public.star(distance_from_earth);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

