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
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
    username character varying(22) NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;


--
-- Name: input; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.input (
    number integer,
    id integer
);


ALTER TABLE public.input OWNER TO freecodecamp;

--
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    plays character varying(22),
    game_id integer
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: game game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game VALUES ('ahmed', 235);
INSERT INTO public.game VALUES ('user_1666003178615', 236);
INSERT INTO public.game VALUES ('user_1666003178614', 237);
INSERT INTO public.game VALUES ('user_1666003767642', 238);
INSERT INTO public.game VALUES ('user_1666003767641', 239);
INSERT INTO public.game VALUES ('user_1666003833746', 240);
INSERT INTO public.game VALUES ('user_1666003833745', 241);
INSERT INTO public.game VALUES ('user_1666003859633', 242);
INSERT INTO public.game VALUES ('user_1666003859632', 243);
INSERT INTO public.game VALUES ('user_1666003901576', 244);
INSERT INTO public.game VALUES ('user_1666003901575', 245);
INSERT INTO public.game VALUES ('user_1666003925538', 246);
INSERT INTO public.game VALUES ('user_1666003925537', 247);
INSERT INTO public.game VALUES ('user_1666003941878', 248);
INSERT INTO public.game VALUES ('user_1666003941877', 249);
INSERT INTO public.game VALUES ('user_1666003952581', 250);
INSERT INTO public.game VALUES ('user_1666003952580', 251);
INSERT INTO public.game VALUES ('user_1666003972726', 252);
INSERT INTO public.game VALUES ('user_1666003972725', 253);
INSERT INTO public.game VALUES ('user_1666004007399', 254);
INSERT INTO public.game VALUES ('user_1666004007398', 255);
INSERT INTO public.game VALUES ('user_1666004039242', 256);
INSERT INTO public.game VALUES ('user_1666004039241', 257);
INSERT INTO public.game VALUES ('user_1666004198797', 258);
INSERT INTO public.game VALUES ('user_1666004198796', 259);
INSERT INTO public.game VALUES ('user_1666004222887', 260);
INSERT INTO public.game VALUES ('user_1666004222886', 261);
INSERT INTO public.game VALUES ('user_1666004270637', 262);
INSERT INTO public.game VALUES ('user_1666004270636', 263);
INSERT INTO public.game VALUES ('user_1666004535774', 264);
INSERT INTO public.game VALUES ('user_1666004535773', 265);
INSERT INTO public.game VALUES ('user_1666004630039', 266);
INSERT INTO public.game VALUES ('user_1666004630038', 267);
INSERT INTO public.game VALUES ('user_1666004680199', 268);
INSERT INTO public.game VALUES ('user_1666004680198', 269);
INSERT INTO public.game VALUES ('user_1666004887586', 270);
INSERT INTO public.game VALUES ('user_1666004887585', 271);
INSERT INTO public.game VALUES ('user_1666004998998', 272);
INSERT INTO public.game VALUES ('user_1666004998997', 273);
INSERT INTO public.game VALUES ('user_1666005009321', 274);
INSERT INTO public.game VALUES ('user_1666005009320', 275);


--
-- Data for Name: input; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.input VALUES (100, 148);
INSERT INTO public.input VALUES (590, 148);
INSERT INTO public.input VALUES (122, 148);
INSERT INTO public.input VALUES (0, 149);
INSERT INTO public.input VALUES (1, 149);
INSERT INTO public.input VALUES (2, 149);
INSERT INTO public.input VALUES (3, 149);
INSERT INTO public.input VALUES (4, 149);
INSERT INTO public.input VALUES (5, 149);
INSERT INTO public.input VALUES (6, 149);
INSERT INTO public.input VALUES (7, 149);
INSERT INTO public.input VALUES (8, 149);
INSERT INTO public.input VALUES (9, 149);
INSERT INTO public.input VALUES (10, 149);
INSERT INTO public.input VALUES (11, 149);
INSERT INTO public.input VALUES (12, 149);
INSERT INTO public.input VALUES (13, 149);
INSERT INTO public.input VALUES (14, 149);
INSERT INTO public.input VALUES (15, 149);
INSERT INTO public.input VALUES (16, 149);
INSERT INTO public.input VALUES (17, 149);
INSERT INTO public.input VALUES (18, 149);
INSERT INTO public.input VALUES (0, 149);
INSERT INTO public.input VALUES (1, 149);
INSERT INTO public.input VALUES (2, 149);
INSERT INTO public.input VALUES (3, 149);
INSERT INTO public.input VALUES (4, 149);
INSERT INTO public.input VALUES (5, 149);
INSERT INTO public.input VALUES (6, 149);
INSERT INTO public.input VALUES (7, 149);
INSERT INTO public.input VALUES (8, 149);
INSERT INTO public.input VALUES (9, 149);
INSERT INTO public.input VALUES (10, 149);
INSERT INTO public.input VALUES (11, 149);
INSERT INTO public.input VALUES (12, 149);
INSERT INTO public.input VALUES (13, 149);
INSERT INTO public.input VALUES (14, 149);
INSERT INTO public.input VALUES (15, 149);
INSERT INTO public.input VALUES (16, 149);
INSERT INTO public.input VALUES (17, 149);
INSERT INTO public.input VALUES (18, 149);
INSERT INTO public.input VALUES (0, 150);
INSERT INTO public.input VALUES (1, 150);
INSERT INTO public.input VALUES (2, 150);
INSERT INTO public.input VALUES (3, 150);
INSERT INTO public.input VALUES (4, 150);
INSERT INTO public.input VALUES (5, 150);
INSERT INTO public.input VALUES (6, 150);
INSERT INTO public.input VALUES (7, 150);
INSERT INTO public.input VALUES (8, 150);
INSERT INTO public.input VALUES (9, 150);
INSERT INTO public.input VALUES (10, 150);
INSERT INTO public.input VALUES (11, 150);
INSERT INTO public.input VALUES (12, 150);
INSERT INTO public.input VALUES (13, 150);
INSERT INTO public.input VALUES (14, 150);
INSERT INTO public.input VALUES (15, 150);
INSERT INTO public.input VALUES (16, 150);
INSERT INTO public.input VALUES (17, 150);
INSERT INTO public.input VALUES (18, 150);
INSERT INTO public.input VALUES (0, 150);
INSERT INTO public.input VALUES (1, 150);
INSERT INTO public.input VALUES (2, 150);
INSERT INTO public.input VALUES (3, 150);
INSERT INTO public.input VALUES (4, 150);
INSERT INTO public.input VALUES (5, 150);
INSERT INTO public.input VALUES (6, 150);
INSERT INTO public.input VALUES (7, 150);
INSERT INTO public.input VALUES (8, 150);
INSERT INTO public.input VALUES (9, 150);
INSERT INTO public.input VALUES (10, 150);
INSERT INTO public.input VALUES (11, 150);
INSERT INTO public.input VALUES (12, 150);
INSERT INTO public.input VALUES (13, 150);
INSERT INTO public.input VALUES (14, 150);
INSERT INTO public.input VALUES (15, 150);
INSERT INTO public.input VALUES (16, 150);
INSERT INTO public.input VALUES (17, 150);
INSERT INTO public.input VALUES (18, 150);
INSERT INTO public.input VALUES (1001, 149);
INSERT INTO public.input VALUES (0, 149);
INSERT INTO public.input VALUES (1, 149);
INSERT INTO public.input VALUES (2, 149);
INSERT INTO public.input VALUES (3, 149);
INSERT INTO public.input VALUES (4, 149);
INSERT INTO public.input VALUES (5, 149);
INSERT INTO public.input VALUES (6, 149);
INSERT INTO public.input VALUES (7, 149);
INSERT INTO public.input VALUES (8, 149);
INSERT INTO public.input VALUES (9, 149);
INSERT INTO public.input VALUES (10, 149);
INSERT INTO public.input VALUES (11, 149);
INSERT INTO public.input VALUES (12, 149);
INSERT INTO public.input VALUES (13, 149);
INSERT INTO public.input VALUES (14, 149);
INSERT INTO public.input VALUES (15, 149);
INSERT INTO public.input VALUES (16, 149);
INSERT INTO public.input VALUES (17, 149);
INSERT INTO public.input VALUES (0, 149);
INSERT INTO public.input VALUES (1, 149);
INSERT INTO public.input VALUES (2, 149);
INSERT INTO public.input VALUES (3, 149);
INSERT INTO public.input VALUES (4, 149);
INSERT INTO public.input VALUES (5, 149);
INSERT INTO public.input VALUES (6, 149);
INSERT INTO public.input VALUES (7, 149);
INSERT INTO public.input VALUES (8, 149);
INSERT INTO public.input VALUES (9, 149);
INSERT INTO public.input VALUES (10, 149);
INSERT INTO public.input VALUES (11, 149);
INSERT INTO public.input VALUES (12, 149);
INSERT INTO public.input VALUES (13, 149);
INSERT INTO public.input VALUES (14, 149);
INSERT INTO public.input VALUES (15, 149);
INSERT INTO public.input VALUES (16, 149);
INSERT INTO public.input VALUES (17, 149);
INSERT INTO public.input VALUES (18, 149);
INSERT INTO public.input VALUES (0, 149);
INSERT INTO public.input VALUES (1, 149);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES ('9', 235);
INSERT INTO public.user_info VALUES ('10', 235);
INSERT INTO public.user_info VALUES ('608', 236);
INSERT INTO public.user_info VALUES ('900', 236);
INSERT INTO public.user_info VALUES ('148', 237);
INSERT INTO public.user_info VALUES ('3', 237);
INSERT INTO public.user_info VALUES ('115', 236);
INSERT INTO public.user_info VALUES ('185', 236);
INSERT INTO public.user_info VALUES ('466', 236);
INSERT INTO public.user_info VALUES ('663', 238);
INSERT INTO public.user_info VALUES ('523', 238);
INSERT INTO public.user_info VALUES ('196', 239);
INSERT INTO public.user_info VALUES ('920', 239);
INSERT INTO public.user_info VALUES ('509', 238);
INSERT INTO public.user_info VALUES ('404', 238);
INSERT INTO public.user_info VALUES ('427', 238);
INSERT INTO public.user_info VALUES ('517', 240);
INSERT INTO public.user_info VALUES ('193', 240);
INSERT INTO public.user_info VALUES ('24', 241);
INSERT INTO public.user_info VALUES ('50', 241);
INSERT INTO public.user_info VALUES ('538', 240);
INSERT INTO public.user_info VALUES ('178', 240);
INSERT INTO public.user_info VALUES ('77', 240);
INSERT INTO public.user_info VALUES ('504', 242);
INSERT INTO public.user_info VALUES ('295', 242);
INSERT INTO public.user_info VALUES ('311', 243);
INSERT INTO public.user_info VALUES ('443', 243);
INSERT INTO public.user_info VALUES ('460', 242);
INSERT INTO public.user_info VALUES ('747', 242);
INSERT INTO public.user_info VALUES ('523', 242);
INSERT INTO public.user_info VALUES ('225', 244);
INSERT INTO public.user_info VALUES ('324', 244);
INSERT INTO public.user_info VALUES ('752', 245);
INSERT INTO public.user_info VALUES ('858', 245);
INSERT INTO public.user_info VALUES ('340', 244);
INSERT INTO public.user_info VALUES ('759', 244);
INSERT INTO public.user_info VALUES ('996', 244);
INSERT INTO public.user_info VALUES ('373', 246);
INSERT INTO public.user_info VALUES ('159', 246);
INSERT INTO public.user_info VALUES ('629', 247);
INSERT INTO public.user_info VALUES ('175', 247);
INSERT INTO public.user_info VALUES ('411', 246);
INSERT INTO public.user_info VALUES ('706', 246);
INSERT INTO public.user_info VALUES ('46', 246);
INSERT INTO public.user_info VALUES ('851', 248);
INSERT INTO public.user_info VALUES ('774', 248);
INSERT INTO public.user_info VALUES ('477', 249);
INSERT INTO public.user_info VALUES ('197', 249);
INSERT INTO public.user_info VALUES ('981', 248);
INSERT INTO public.user_info VALUES ('80', 248);
INSERT INTO public.user_info VALUES ('279', 248);
INSERT INTO public.user_info VALUES ('141', 250);
INSERT INTO public.user_info VALUES ('898', 250);
INSERT INTO public.user_info VALUES ('987', 251);
INSERT INTO public.user_info VALUES ('119', 251);
INSERT INTO public.user_info VALUES ('957', 250);
INSERT INTO public.user_info VALUES ('259', 250);
INSERT INTO public.user_info VALUES ('781', 250);
INSERT INTO public.user_info VALUES ('216', 252);
INSERT INTO public.user_info VALUES ('52', 252);
INSERT INTO public.user_info VALUES ('611', 253);
INSERT INTO public.user_info VALUES ('341', 253);
INSERT INTO public.user_info VALUES ('386', 252);
INSERT INTO public.user_info VALUES ('846', 252);
INSERT INTO public.user_info VALUES ('387', 252);
INSERT INTO public.user_info VALUES ('699', 254);
INSERT INTO public.user_info VALUES ('1001', 254);
INSERT INTO public.user_info VALUES ('203', 255);
INSERT INTO public.user_info VALUES ('681', 255);
INSERT INTO public.user_info VALUES ('34', 254);
INSERT INTO public.user_info VALUES ('58', 254);
INSERT INTO public.user_info VALUES ('447', 254);
INSERT INTO public.user_info VALUES ('338', 256);
INSERT INTO public.user_info VALUES ('968', 256);
INSERT INTO public.user_info VALUES ('505', 257);
INSERT INTO public.user_info VALUES ('430', 257);
INSERT INTO public.user_info VALUES ('219', 256);
INSERT INTO public.user_info VALUES ('710', 256);
INSERT INTO public.user_info VALUES ('439', 256);
INSERT INTO public.user_info VALUES ('9', 235);
INSERT INTO public.user_info VALUES ('27', 258);
INSERT INTO public.user_info VALUES ('478', 258);
INSERT INTO public.user_info VALUES ('307', 259);
INSERT INTO public.user_info VALUES ('668', 259);
INSERT INTO public.user_info VALUES ('728', 258);
INSERT INTO public.user_info VALUES ('687', 258);
INSERT INTO public.user_info VALUES ('33', 258);
INSERT INTO public.user_info VALUES ('742', 260);
INSERT INTO public.user_info VALUES ('682', 260);
INSERT INTO public.user_info VALUES ('141', 261);
INSERT INTO public.user_info VALUES ('176', 261);
INSERT INTO public.user_info VALUES ('377', 260);
INSERT INTO public.user_info VALUES ('738', 260);
INSERT INTO public.user_info VALUES ('853', 260);
INSERT INTO public.user_info VALUES ('593', 262);
INSERT INTO public.user_info VALUES ('785', 262);
INSERT INTO public.user_info VALUES ('762', 263);
INSERT INTO public.user_info VALUES ('882', 263);
INSERT INTO public.user_info VALUES ('751', 262);
INSERT INTO public.user_info VALUES ('235', 262);
INSERT INTO public.user_info VALUES ('917', 262);
INSERT INTO public.user_info VALUES ('9', 235);
INSERT INTO public.user_info VALUES ('10', 235);
INSERT INTO public.user_info VALUES ('11', 235);
INSERT INTO public.user_info VALUES ('12', 235);
INSERT INTO public.user_info VALUES ('13', 235);
INSERT INTO public.user_info VALUES ('14', 235);
INSERT INTO public.user_info VALUES ('15', 235);
INSERT INTO public.user_info VALUES ('16', 235);
INSERT INTO public.user_info VALUES ('17', 235);
INSERT INTO public.user_info VALUES ('12', 235);
INSERT INTO public.user_info VALUES ('327', 264);
INSERT INTO public.user_info VALUES ('458', 264);
INSERT INTO public.user_info VALUES ('232', 265);
INSERT INTO public.user_info VALUES ('184', 265);
INSERT INTO public.user_info VALUES ('849', 264);
INSERT INTO public.user_info VALUES ('439', 264);
INSERT INTO public.user_info VALUES ('909', 264);
INSERT INTO public.user_info VALUES ('289', 266);
INSERT INTO public.user_info VALUES ('989', 266);
INSERT INTO public.user_info VALUES ('593', 267);
INSERT INTO public.user_info VALUES ('136', 267);
INSERT INTO public.user_info VALUES ('741', 266);
INSERT INTO public.user_info VALUES ('642', 266);
INSERT INTO public.user_info VALUES ('335', 266);
INSERT INTO public.user_info VALUES ('221', 268);
INSERT INTO public.user_info VALUES ('801', 268);
INSERT INTO public.user_info VALUES ('727', 269);
INSERT INTO public.user_info VALUES ('400', 269);
INSERT INTO public.user_info VALUES ('975', 268);
INSERT INTO public.user_info VALUES ('857', 268);
INSERT INTO public.user_info VALUES ('864', 268);
INSERT INTO public.user_info VALUES ('15', 235);
INSERT INTO public.user_info VALUES ('168', 270);
INSERT INTO public.user_info VALUES ('443', 270);
INSERT INTO public.user_info VALUES ('329', 271);
INSERT INTO public.user_info VALUES ('414', 271);
INSERT INTO public.user_info VALUES ('970', 270);
INSERT INTO public.user_info VALUES ('724', 270);
INSERT INTO public.user_info VALUES ('898', 270);
INSERT INTO public.user_info VALUES ('574', 272);
INSERT INTO public.user_info VALUES ('631', 272);
INSERT INTO public.user_info VALUES ('350', 273);
INSERT INTO public.user_info VALUES ('832', 273);
INSERT INTO public.user_info VALUES ('500', 272);
INSERT INTO public.user_info VALUES ('649', 272);
INSERT INTO public.user_info VALUES ('44', 272);
INSERT INTO public.user_info VALUES ('458', 274);
INSERT INTO public.user_info VALUES ('86', 274);
INSERT INTO public.user_info VALUES ('258', 275);
INSERT INTO public.user_info VALUES ('525', 275);
INSERT INTO public.user_info VALUES ('230', 274);
INSERT INTO public.user_info VALUES ('855', 274);
INSERT INTO public.user_info VALUES ('604', 274);


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 275, true);


--
-- Name: game game_game_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_game_id_key UNIQUE (game_id);


--
-- Name: user_info user_info_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.game(game_id);


--
-- PostgreSQL database dump complete
--

