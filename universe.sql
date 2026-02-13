--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying,
    galaxy_code integer NOT NULL,
    additional_info text,
    additional_info2 text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id text NOT NULL,
    name character varying,
    moon_code integer NOT NULL,
    planet_id numeric,
    additional_info1 text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    name character varying,
    planet_code integer NOT NULL,
    star_id integer,
    additional_info1 text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    star_code integer NOT NULL,
    dead boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stellar_debris; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stellar_debris (
    debris_code integer NOT NULL,
    solid boolean,
    stellar_debris_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.stellar_debris OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'MILKY WAY2', 2, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'MILKY WAY3', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'MILKY WAY4', 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'MILKY WAY5', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'MILKY WAY6', 6, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('1', 'Moon1', 1, 2, '');
INSERT INTO public.moon VALUES ('2', 'Moon1', 2, 2, '');
INSERT INTO public.moon VALUES ('3', 'Moon1', 3, 2, '');
INSERT INTO public.moon VALUES ('4', 'Moon1', 4, 2, '');
INSERT INTO public.moon VALUES ('5', 'Moon1', 5, 2, '');
INSERT INTO public.moon VALUES ('6', 'Moon1', 6, 2, '');
INSERT INTO public.moon VALUES ('7', 'Moon1', 7, 2, '');
INSERT INTO public.moon VALUES ('8', 'Moon1', 8, 2, '');
INSERT INTO public.moon VALUES ('9', 'Moon1', 9, 2, '');
INSERT INTO public.moon VALUES ('10', 'Moon1', 10, 2, '');
INSERT INTO public.moon VALUES ('11', 'Moon1', 11, 2, '');
INSERT INTO public.moon VALUES ('12', 'Moon1', 12, 2, '');
INSERT INTO public.moon VALUES ('13', 'Moon1', 13, 2, '');
INSERT INTO public.moon VALUES ('14', 'Moon1', 14, 2, '');
INSERT INTO public.moon VALUES ('15', 'Moon1', 15, 2, '');
INSERT INTO public.moon VALUES ('16', 'Moon1', 16, 2, '');
INSERT INTO public.moon VALUES ('17', 'Moon1', 17, 2, '');
INSERT INTO public.moon VALUES ('18', 'Moon1', 18, 2, '');
INSERT INTO public.moon VALUES ('19', 'Moon1', 19, 2, '');
INSERT INTO public.moon VALUES ('20', 'Moon1', 20, 2, '');
INSERT INTO public.moon VALUES ('21', 'Moon1', 21, 2, '');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Planet1', 2, 1, 'great2');
INSERT INTO public.planet VALUES (3, 'Planet1', 3, 1, 'great');
INSERT INTO public.planet VALUES (4, 'Planet1', 4, 1, 'great');
INSERT INTO public.planet VALUES (5, 'Planet1', 5, 1, 'great');
INSERT INTO public.planet VALUES (6, 'Planet1', 6, 1, 'great');
INSERT INTO public.planet VALUES (7, 'Planet1', 7, 1, 'great');
INSERT INTO public.planet VALUES (8, 'Planet1', 8, 1, 'great');
INSERT INTO public.planet VALUES (9, 'Planet1', 9, 1, 'great');
INSERT INTO public.planet VALUES (10, 'Planet1', 10, 1, 'great');
INSERT INTO public.planet VALUES (11, 'Planet1', 11, 1, 'great');
INSERT INTO public.planet VALUES (12, 'Planet1', 12, 1, 'great');
INSERT INTO public.planet VALUES (13, 'Planet1', 13, 1, 'great');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'STAR1', 1, true, 1);
INSERT INTO public.star VALUES (2, 'STAR2', 2, true, 2);
INSERT INTO public.star VALUES (3, 'STAR3', 3, true, 3);
INSERT INTO public.star VALUES (4, 'STAR4', 4, true, 4);
INSERT INTO public.star VALUES (5, 'STAR5', 5, true, 5);
INSERT INTO public.star VALUES (6, 'STAR6', 6, true, 6);
INSERT INTO public.star VALUES (7, 'STAR7', 7, true, 6);


--
-- Data for Name: stellar_debris; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stellar_debris VALUES (1, NULL, 1, NULL);
INSERT INTO public.stellar_debris VALUES (2, NULL, 2, NULL);
INSERT INTO public.stellar_debris VALUES (3, NULL, 3, NULL);


--
-- Name: galaxy galaxy_galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_code_key UNIQUE (galaxy_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_code_key UNIQUE (moon_code);


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
-- Name: planet planet_planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_code_key UNIQUE (planet_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_code_key UNIQUE (star_code);


--
-- Name: stellar_debris stellar_debris_debris_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stellar_debris
    ADD CONSTRAINT stellar_debris_debris_code_key UNIQUE (debris_code);


--
-- Name: stellar_debris stellar_debris_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stellar_debris
    ADD CONSTRAINT stellar_debris_pkey PRIMARY KEY (stellar_debris_id);


--
-- Name: galaxy galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

