--
-- PostgreSQL database cluster dump
--

-- Started on 2024-05-13 01:19:42

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE admin;
ALTER ROLE admin WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:uk/eizXI0Xwx3AHLY/Z2+A==$nIwjrBlcczpEm9cVYMiffIEZ9SHsiIdmwz2xArEm8Gw=:MB8sWo1+t2b7Oyd+LYm9oPlZqYcuC4mTMK+YA8gUkfc=';

--
-- User Configurations
--






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Debian 14.12-1.pgdg120+1)
-- Dumped by pg_dump version 16.2

-- Started on 2024-05-13 01:19:42

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: admin
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO admin;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: admin
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-05-13 01:19:43

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Debian 14.12-1.pgdg120+1)
-- Dumped by pg_dump version 16.2

-- Started on 2024-05-13 01:19:43

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: admin
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO admin;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: admin
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-05-13 01:19:43

--
-- PostgreSQL database dump complete
--

--
-- Database "taina" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12 (Debian 14.12-1.pgdg120+1)
-- Dumped by pg_dump version 16.2

-- Started on 2024-05-13 01:19:43

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

--
-- TOC entry 3419 (class 1262 OID 16384)
-- Name: taina; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE taina WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE taina OWNER TO admin;

\connect taina

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: admin
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO admin;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16453)
-- Name: clientes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.clientes (
    id bigint NOT NULL,
    nome character varying(255) NOT NULL,
    sexo character(1) DEFAULT 'M'::bpchar NOT NULL,
    endereco text NOT NULL,
    email character varying(255) NOT NULL,
    telefone character varying(255) NOT NULL,
    data_nascimento timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.clientes OWNER TO admin;

--
-- TOC entry 218 (class 1259 OID 16452)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_seq OWNER TO admin;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 218
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 215 (class 1259 OID 16411)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO admin;

--
-- TOC entry 214 (class 1259 OID 16410)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO admin;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 214
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 210 (class 1259 OID 16386)
-- Name: migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO admin;

--
-- TOC entry 209 (class 1259 OID 16385)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO admin;

--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 209
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 213 (class 1259 OID 16403)
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO admin;

--
-- TOC entry 217 (class 1259 OID 16423)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO admin;

--
-- TOC entry 216 (class 1259 OID 16422)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO admin;

--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 216
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 223 (class 1259 OID 16517)
-- Name: revisoes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.revisoes (
    id bigint NOT NULL,
    veiculo_id bigint NOT NULL,
    type_servicos character varying(255) NOT NULL,
    quilometragem character varying(255) NOT NULL,
    detalhes text NOT NULL,
    data_revisao timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.revisoes OWNER TO admin;

--
-- TOC entry 222 (class 1259 OID 16516)
-- Name: revisoes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.revisoes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.revisoes_id_seq OWNER TO admin;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 222
-- Name: revisoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.revisoes_id_seq OWNED BY public.revisoes.id;


--
-- TOC entry 212 (class 1259 OID 16393)
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO admin;

--
-- TOC entry 211 (class 1259 OID 16392)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO admin;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 221 (class 1259 OID 16472)
-- Name: veiculos; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.veiculos (
    id bigint NOT NULL,
    cliente_id bigint NOT NULL,
    marca character varying(255) NOT NULL,
    modelo character varying(255) NOT NULL,
    cor character varying(255) NOT NULL,
    placa character varying(255) NOT NULL,
    ano_fabricacao timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.veiculos OWNER TO admin;

--
-- TOC entry 220 (class 1259 OID 16471)
-- Name: veiculos_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.veiculos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.veiculos_id_seq OWNER TO admin;

--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 220
-- Name: veiculos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.veiculos_id_seq OWNED BY public.veiculos.id;


--
-- TOC entry 3229 (class 2604 OID 16456)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 16414)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 16389)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 16426)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 16520)
-- Name: revisoes id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.revisoes ALTER COLUMN id SET DEFAULT nextval('public.revisoes_id_seq'::regclass);


--
-- TOC entry 3225 (class 2604 OID 16396)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3231 (class 2604 OID 16475)
-- Name: veiculos id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.veiculos ALTER COLUMN id SET DEFAULT nextval('public.veiculos_id_seq'::regclass);


--
-- TOC entry 3409 (class 0 OID 16453)
-- Dependencies: 219
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.clientes (id, nome, sexo, endereco, email, telefone, data_nascimento, created_at, updated_at) FROM stdin;
109	teste felipe	0	Rua São João	tainaferreira0987@gmail.com	83748484888	2003-08-16 23:17:00	2024-05-13 02:17:36	2024-05-13 02:17:36
118	Tainá Miranda Ferreira	0	Rua São João	tainamirandaferreira@gmail.com	8299194	2024-05-24 23:35:00	2024-05-13 02:36:02	2024-05-13 02:36:02
122	Tainá Miranda Ferreira	1	Rua São João	tainamirandaferreira@gmail.com	8299194	2024-05-08 23:38:00	2024-05-13 02:38:43	2024-05-13 02:38:43
126	teste felipe gustavo	1	Rua São João	tainaferreira0987@gmail.com	83748484888	2024-05-09 23:40:00	2024-05-13 02:40:33	2024-05-13 02:40:33
45	Nicole Hessel Sr.	0	Eos distinctio natus deleniti et accusamus accusantium.	bhammes@yahoo.com	+1-346-722-3960	1983-05-12 00:00:00	2024-05-10 22:44:41	2024-05-10 22:44:41
20	Nakia Leannon	0	Sint est occaecati minus exercitationem.	wfisher@stokes.com	+19784845634	1976-05-12 00:00:00	2024-05-10 21:49:58	2024-05-10 21:49:58
23	Miss Angeline Crona	1	Dicta consequatur est eos ullam sed perspiciatis.	stehr.lawson@gmail.com	760-814-1901	1997-05-12 00:00:00	2024-05-10 21:57:07	2024-05-10 21:57:07
24	Buddy Monahan	1	Consequatur laudantium dolores repellat quos deserunt ut.	wiegand.greg@yahoo.com	878.718.8582	1933-05-12 00:00:00	2024-05-10 21:58:31	2024-05-10 21:58:31
25	Jon King	1	Officiis tempora dolore eum doloribus ut.	irwin.becker@hotmail.com	682.702.3550	1962-05-12 00:00:00	2024-05-10 21:58:31	2024-05-10 21:58:31
47	Mr. Jeffrey Beier Jr.	1	Accusantium nesciunt excepturi molestias enim odit et dolorem.	otilia.ondricka@yahoo.com	(480) 891-3870	1951-05-12 00:00:00	2024-05-10 22:45:11	2024-05-10 22:45:11
26	Dr. Julio Bins DVM	1	Atque eveniet officia natus enim.	odickinson@gmail.com	(667) 574-0944	1993-05-12 00:00:00	2024-05-10 22:00:13	2024-05-10 22:00:13
115	Tainá Miranda Ferreira	0	Rua São João	tainamirandaferreira@gmail.com	8299194	2015-07-12 23:32:00	2024-05-13 02:35:29	2024-05-13 02:35:29
119	Tainá Miranda Ferreira	0	Rua São João	tainamirandaferreira@gmail.com	8299194	2024-05-24 23:35:00	2024-05-13 02:36:05	2024-05-13 02:36:05
123	teste felipe antonio	1	Rua São João	tainaferreira0987@gmail.com	83748484888	2024-01-17 23:39:00	2024-05-13 02:39:19	2024-05-13 02:39:19
57	Prof. Sonya Shanahan	0	Tempora sint error deleniti quaerat.	pleffler@yahoo.com	(480) 247-8395	1995-05-12 00:00:00	2024-05-10 23:54:33	2024-05-10 23:54:33
116	Tainá Miranda Ferreira	0	Rua São João	tainamirandaferreira@gmail.com	8299194	2015-07-12 23:32:00	2024-05-13 02:35:29	2024-05-13 02:35:29
120	Tainá Miranda Ferreira	0	Rua São João	tainamirandaferreira@gmail.com	8299194	2024-05-24 23:35:00	2024-05-13 02:36:06	2024-05-13 02:36:06
124	teste felipe antonio	1	Rua São João	tainaferreira0987@gmail.com	83748484888	2024-01-17 23:39:00	2024-05-13 02:39:19	2024-05-13 02:39:19
27	Aida Romaguera	1	Pariatur dolorem autem et voluptatem provident est inventore exercitationem.	sydnie27@yahoo.com	+1.580.720.1967	1968-05-12 00:00:00	2024-05-10 22:00:13	2024-05-10 22:00:13
48	Dr. Stephania Greenholt I	1	Omnis cupiditate porro aut hic.	sanford.bonita@nikolaus.net	(283) 987-0914	1945-05-12 00:00:00	2024-05-10 22:45:11	2024-05-10 22:45:11
28	Syble Yost	1	Voluptas consequuntur quia a cum omnis qui.	merlin10@waelchi.info	520-582-7856	1968-05-12 00:00:00	2024-05-10 22:00:29	2024-05-10 22:00:29
29	Dr. Lurline Pagac Jr.	0	Possimus quia vero quas eveniet nam vero.	carlotta.cormier@gmail.com	(949) 401-3117	1952-05-12 00:00:00	2024-05-10 22:00:29	2024-05-10 22:00:29
49	Gayle Heaney	0	Aut vel blanditiis molestiae maiores quia impedit aut.	alfonzo57@hotmail.com	+1-475-551-6866	2000-05-12 00:00:00	2024-05-10 22:45:11	2024-05-10 22:45:11
30	Mr. Jefferey Ritchie	0	Ut ad harum aut ipsa libero omnis qui.	colleen99@ledner.info	+1-763-403-9116	1959-05-12 00:00:00	2024-05-10 22:01:39	2024-05-10 22:01:39
31	Mrs. Cierra Osinski II	1	Sed harum possimus harum dicta quia mollitia dolores.	yrippin@yahoo.com	947.425.4827	1942-05-12 00:00:00	2024-05-10 22:01:39	2024-05-10 22:01:39
1	nome atualizado	0	endereço atualizado	email@teste.com	7585095	1960-05-12 00:00:00	2024-05-10 20:23:29	2024-05-10 22:01:39
32	Sonny Kassulke	1	Minima sequi et laborum ipsum rem voluptas omnis.	jayne80@kovacek.com	1-786-982-8401	1956-05-12 00:00:00	2024-05-10 22:30:14	2024-05-10 22:30:14
33	Prof. Aditya Wuckert MD	0	Id modi itaque in quas.	koch.tressie@mcdermott.org	256.334.9629	1977-05-12 00:00:00	2024-05-10 22:35:07	2024-05-10 22:35:07
34	Adrain Kris	1	Nisi qui molestiae qui quas est veniam porro modi.	lelia.turner@yahoo.com	361-453-8452	2003-05-12 00:00:00	2024-05-10 22:35:07	2024-05-10 22:35:07
35	Gloria Goyette PhD	1	Vero nobis velit et sunt.	hlebsack@hotmail.com	(281) 768-4279	1940-05-12 00:00:00	2024-05-10 22:38:06	2024-05-10 22:38:06
36	Ezekiel Luettgen	0	Qui debitis perspiciatis id.	tierra.quitzon@howell.com	828.501.7112	2006-05-12 00:00:00	2024-05-10 22:38:07	2024-05-10 22:38:07
37	Mr. Kelton McClure	0	Sint molestiae repellendus et occaecati omnis fugiat corrupti temporibus.	judah77@hotmail.com	(843) 697-8729	1963-05-12 00:00:00	2024-05-10 22:41:13	2024-05-10 22:41:13
38	Tyreek Mayert	1	Necessitatibus aut laboriosam possimus reiciendis consequatur impedit.	tyrell53@schroeder.info	743.339.9908	2003-05-12 00:00:00	2024-05-10 22:41:13	2024-05-10 22:41:13
39	Sean Huels V	1	Neque nihil ipsam pariatur est quia molestias.	mae.heaney@mann.com	989.428.9104	1957-05-12 00:00:00	2024-05-10 22:41:13	2024-05-10 22:41:13
41	Brianne Russel V	0	Cupiditate ea accusantium odio voluptatem.	kerluke.salvatore@hotmail.com	+1-281-989-3014	1946-05-12 00:00:00	2024-05-10 22:41:27	2024-05-10 22:41:27
50	Dwight West	0	Quo error autem repellendus optio.	bernadine39@sauer.com	1-828-292-1748	2004-05-12 00:00:00	2024-05-10 22:45:38	2024-05-10 22:45:38
51	Odessa Gusikowski	1	Molestiae aut omnis ratione itaque beatae omnis et.	herman.dexter@christiansen.com	614-540-5690	1988-05-12 00:00:00	2024-05-10 22:45:39	2024-05-10 22:45:39
52	Keyshawn Mayert	0	Nesciunt numquam eius culpa ratione sed quasi.	qauer@brekke.com	(860) 716-8182	1950-05-12 00:00:00	2024-05-10 22:45:39	2024-05-10 22:45:39
53	Novella Buckridge	0	Enim et expedita repellat qui voluptatum.	handerson@kulas.biz	(386) 602-2944	2002-05-12 00:00:00	2024-05-10 22:46:46	2024-05-10 22:46:46
54	Celestine Lesch	1	Ducimus quisquam voluptates sunt et.	payton.wilkinson@yahoo.com	458-304-3454	1935-05-12 00:00:00	2024-05-10 22:46:46	2024-05-10 22:46:46
55	Dr. Emilia Abshire I	1	Incidunt odit sint consectetur voluptas iusto quod officia.	michele.rodriguez@hotmail.com	+1.678.751.0456	1977-05-12 00:00:00	2024-05-10 22:46:47	2024-05-10 22:46:47
56	Mervin Simonis	0	Reiciendis molestiae eum quaerat porro.	wendell43@yahoo.com	219.529.7083	1979-05-12 00:00:00	2024-05-10 23:54:32	2024-05-10 23:54:32
42	Pink Veum	F	Non laudantium quis earum.	cormier.helene@kassulke.com	+1.283.871.9216	1947-05-12 00:00:00	2024-05-10 22:41:27	2024-05-11 17:56:08
44	Alec teste	F	Earum omnis adipisci animi maiores dolorum.	saul05@yahoo.com	(562) 450-7646	2005-05-12 00:00:00	2024-05-10 22:44:41	2024-05-11 17:56:51
46	testando o nome	M	Santos	kara.howe@gmail.com	+1-623-561-6543	1938-05-12 00:00:00	2024-05-10 22:44:41	2024-05-11 17:58:39
17	Carlinhos	F	Ut facere vero autem nemo illo.	tito.gutmann@hotmail.com	1-743-900-6604	2004-05-12 00:00:00	2024-05-10 21:48:17	2024-05-12 00:11:37
2	Atualizando só veiculo mesmo	1	Reiciendis rerum voluptatem quas ut.	wallace.berge@ratke.net	(409) 635-1503	1991-05-12 00:00:00	2024-05-10 20:23:29	2024-05-10 23:54:33
58	Sylvia Zieme	1	Aperiam dolorem nam ut maxime quod.	denesik.dave@ebert.net	(646) 314-1891	1963-05-12 00:00:00	2024-05-10 23:55:37	2024-05-10 23:55:37
59	Winifred Luettgen	1	Explicabo aut debitis sunt laudantium.	shyann.considine@gmail.com	702.359.2397	1942-05-12 00:00:00	2024-05-10 23:55:38	2024-05-10 23:55:38
60	Ian Upton	0	Aspernatur dolorem et est earum soluta.	schumm.trever@bechtelar.net	680-418-7568	1998-05-12 00:00:00	2024-05-10 23:58:17	2024-05-10 23:58:17
61	Jerry Dickinson	1	Atque officia consequatur minima animi quasi nihil.	cdooley@yahoo.com	+1-262-782-9674	1927-05-12 00:00:00	2024-05-10 23:58:17	2024-05-10 23:58:17
62	Rebeca Hudson	0	Saepe quos modi beatae eaque.	dahlia.cole@schimmel.org	(615) 314-6858	1956-05-12 00:00:00	2024-05-10 23:58:58	2024-05-10 23:58:58
63	Serenity Predovic DDS	1	Aut natus repellat omnis.	telly.lemke@hotmail.com	(214) 920-0476	1951-05-12 00:00:00	2024-05-10 23:58:58	2024-05-10 23:58:58
64	Shanelle Windler	1	Nobis consequatur voluptas iure ab et qui et ut.	breitenberg.mark@wilderman.info	+1.458.764.0637	1969-05-12 00:00:00	2024-05-10 23:59:38	2024-05-10 23:59:38
65	Zack Donnelly	1	Cumque porro deserunt dolores ipsam ullam sed sit.	lucie.becker@hotmail.com	856.624.0824	1939-05-12 00:00:00	2024-05-10 23:59:38	2024-05-10 23:59:38
66	Prof. Gail Conroy PhD	1	Nemo ullam unde sunt quo cupiditate ut.	liliane86@gmail.com	361.934.1743	1980-05-12 00:00:00	2024-05-11 00:04:26	2024-05-11 00:04:26
67	Dr. Kelsie Paucek	1	Voluptas veniam necessitatibus nihil necessitatibus quasi ipsum.	emerald.bergstrom@mcclure.com	+1-680-686-1832	1939-05-12 00:00:00	2024-05-11 00:04:26	2024-05-11 00:04:26
68	Dejah Funk	0	In iste et quo minima.	damian99@ledner.net	+1 (732) 931-0566	1935-05-12 00:00:00	2024-05-11 00:05:51	2024-05-11 00:05:51
69	Abraham Eichmann	0	Est non ipsum deserunt veniam asperiores sunt velit.	aaliyah.bogisich@haley.net	513.940.6914	1949-05-12 00:00:00	2024-05-11 00:05:51	2024-05-11 00:05:51
70	Alexane Kautzer	0	Harum accusantium est sed quaerat vel velit cumque omnis.	jaleel53@hotmail.com	+18726576441	1999-05-12 00:00:00	2024-05-11 00:10:35	2024-05-11 00:10:35
71	Dr. Carson Grimes V	0	Aut cum est dicta sequi.	stoltenberg.garrick@johnson.biz	+1-681-415-1723	1966-05-12 00:00:00	2024-05-11 00:10:35	2024-05-11 00:10:35
72	Amanda Thiel	0	Et rerum fugiat dolores tempore placeat voluptatibus consectetur.	angelo.beatty@hane.com	+1-878-240-3433	2004-05-12 00:00:00	2024-05-11 00:13:39	2024-05-11 00:13:39
73	Jaquelin Harris	0	Molestias unde beatae id voluptatem nam.	elisa.prosacco@aufderhar.info	+1-434-547-0296	1933-05-12 00:00:00	2024-05-11 00:13:39	2024-05-11 00:13:39
74	Emanuel Wyman	1	Amet qui aut consequatur ut illo tenetur iure excepturi.	tremblay.garret@mills.biz	1-442-684-5822	1997-05-12 00:00:00	2024-05-11 00:15:12	2024-05-11 00:15:12
105	Dr. Jamison Cruickshank	1	Itaque quae ea dolores.	angela58@marquardt.net	814-827-8533	1997-05-12 00:00:00	2024-05-11 15:03:10	2024-05-11 15:03:10
75	Blaze Hahn	1	Consequatur qui beatae est quod at saepe neque.	ruben23@kertzmann.biz	+1 (806) 950-5159	1945-05-12 00:00:00	2024-05-11 00:15:12	2024-05-11 00:15:12
76	Waldo Lynch V	0	Et nesciunt consectetur excepturi numquam.	mante.ike@cartwright.com	+1-669-658-1758	1959-05-12 00:00:00	2024-05-11 00:16:16	2024-05-11 00:16:16
77	Darrion Haag	1	Voluptates quidem ea ut sed similique aliquid et.	akohler@bechtelar.net	341.895.4884	1989-05-12 00:00:00	2024-05-11 00:16:16	2024-05-11 00:16:16
78	Marlee Russel V	1	Reprehenderit dolores numquam et occaecati quasi ullam rerum.	donald31@swaniawski.com	256-653-1705	1983-05-12 00:00:00	2024-05-11 00:19:15	2024-05-11 00:19:15
79	Melvina Glover	0	Quae molestiae error et esse blanditiis.	hazle.muller@yahoo.com	206-504-6152	1985-05-12 00:00:00	2024-05-11 00:19:15	2024-05-11 00:19:15
80	Stephany Strosin Sr.	1	Possimus quia ut asperiores placeat voluptatem.	molly.hartmann@hotmail.com	(781) 563-9430	1974-05-12 00:00:00	2024-05-11 00:20:38	2024-05-11 00:20:38
81	Prof. Lisandro Medhurst IV	1	Consectetur tenetur ipsam nobis.	cristina.lesch@hotmail.com	+1-478-648-2852	1978-05-12 00:00:00	2024-05-11 00:20:38	2024-05-11 00:20:38
82	Mrs. Mina Schroeder DVM	1	Quia aut sapiente dignissimos voluptatem.	dstanton@hills.org	+1-517-714-7061	1957-05-12 00:00:00	2024-05-11 00:22:28	2024-05-11 00:22:28
83	Alvera Wunsch	0	Sapiente nostrum autem rerum recusandae.	nmarvin@okon.info	+18146725709	1947-05-12 00:00:00	2024-05-11 00:24:07	2024-05-11 00:24:07
84	Prof. Joyce Will	0	Voluptates magnam nihil tenetur animi nostrum possimus doloribus et.	fjakubowski@orn.com	1-830-564-6401	1981-05-12 00:00:00	2024-05-11 00:24:50	2024-05-11 00:24:50
85	Nikki Rempel	1	Impedit sint reiciendis iste quasi est.	priscilla.kling@kulas.org	+1 (657) 330-5346	1980-05-12 00:00:00	2024-05-11 00:26:41	2024-05-11 00:26:41
86	Mrs. Adelle Rogahn	1	Sit deleniti voluptas accusamus ipsa.	cierra.thiel@yahoo.com	+1-872-504-6999	1942-05-12 00:00:00	2024-05-11 00:31:20	2024-05-11 00:31:20
87	Mrs. Nella Stanton	1	Voluptatem tenetur dolor soluta voluptatibus.	breinger@schimmel.biz	1-239-273-0127	1959-05-12 00:00:00	2024-05-11 01:26:13	2024-05-11 01:26:13
88	Ms. Corene Beahan MD	0	Quod quo dolorum dolorem asperiores alias fugiat.	lonny93@gmail.com	1-248-929-0440	1989-05-12 00:00:00	2024-05-11 01:26:14	2024-05-11 01:26:14
89	Dr. Reece Schimmel	0	Cupiditate accusantium ut rem est quod fuga.	ozulauf@gmail.com	814.387.9793	1961-05-12 00:00:00	2024-05-11 01:26:14	2024-05-11 01:26:14
90	Ignatius Bernhard	1	Sit aut reiciendis unde qui quisquam et et voluptatum.	rosie.champlin@kuhic.com	(717) 530-9155	1933-05-12 00:00:00	2024-05-11 01:26:14	2024-05-11 01:26:14
91	Alva Hickle MD	0	Et et iusto qui.	elroy20@jones.com	419.757.1359	1954-05-12 00:00:00	2024-05-11 01:27:13	2024-05-11 01:27:13
92	Tad Zemlak	0	Et distinctio sed et quia.	otha.parisian@schneider.com	(229) 650-3920	1957-05-12 00:00:00	2024-05-11 01:27:13	2024-05-11 01:27:13
93	Dr. Tracey Kunde V	0	Ipsam sed veniam voluptatibus fuga.	era50@yahoo.com	(309) 541-0512	1986-05-12 00:00:00	2024-05-11 01:27:13	2024-05-11 01:27:13
94	Dannie Murazik	0	Molestias quia ipsa et deleniti ipsa est.	magdalen89@yahoo.com	341-782-7002	1979-05-12 00:00:00	2024-05-11 01:27:13	2024-05-11 01:27:13
95	Mr. Madison Hammes V	1	Mollitia omnis blanditiis nostrum est ut dolore doloribus.	hamill.suzanne@yahoo.com	520-965-3936	1935-05-12 00:00:00	2024-05-11 01:34:47	2024-05-11 01:34:47
96	Prof. Filiberto Leffler DVM	0	Sunt voluptas rerum et numquam necessitatibus aliquid sed.	ijenkins@dubuque.com	1-845-834-4098	1932-05-12 00:00:00	2024-05-11 01:34:48	2024-05-11 01:34:48
97	Sabryna Hirthe	1	Amet et architecto corrupti autem.	freida78@hotmail.com	+1 (678) 996-4018	1955-05-12 00:00:00	2024-05-11 01:34:48	2024-05-11 01:34:48
98	Miss Edyth Friesen I	0	Tempore rem ducimus quis vel excepturi ratione.	lindsay.ziemann@yahoo.com	1-757-756-7218	1973-05-12 00:00:00	2024-05-11 01:35:55	2024-05-11 01:35:55
99	Prof. Brandi Ferry	0	Mollitia possimus eveniet minima.	nschroeder@wilkinson.info	207.564.3412	1994-05-12 00:00:00	2024-05-11 01:35:55	2024-05-11 01:35:55
100	Magali McDermott	0	Veritatis est dolor at vero officiis est sint.	noble72@yahoo.com	734.323.5951	1979-05-12 00:00:00	2024-05-11 01:35:55	2024-05-11 01:35:55
102	Collin Blick	1	Officia ea et molestiae.	ratke.ramiro@hotmail.com	+1-484-955-1642	1962-05-12 00:00:00	2024-05-11 01:36:12	2024-05-11 01:36:12
103	Leda Harvey	0	Sint natus dolorem ut quos pariatur quibusdam.	ben92@kiehn.org	+1-234-500-7496	1986-05-12 00:00:00	2024-05-11 01:36:13	2024-05-11 01:36:13
104	Anahi Abshire	0	Et accusantium eum qui labore.	amelia.willms@yahoo.com	(847) 719-5018	1989-05-12 00:00:00	2024-05-11 15:03:09	2024-05-11 15:03:09
106	Ibrahim Powlowski	0	Atque non et ab velit.	fpaucek@yahoo.com	872-998-1519	2001-05-12 00:00:00	2024-05-11 15:03:10	2024-05-11 15:03:10
101	marcos	1	Debitis quos accusantium et explicabo odio.	koch.katelyn@altenwerth.net	+1-332-895-0908	1971-05-12 00:00:00	2024-05-11 01:36:12	2024-05-12 00:13:17
117	Tainá Miranda Ferreira	0	Rua São João	tainamirandaferreira@gmail.com	8299194	2024-05-24 23:35:00	2024-05-13 02:36:02	2024-05-13 02:36:02
121	Tainá Miranda Ferreira	1	Rua São João	tainamirandaferreira@gmail.com	8299194	2024-05-08 23:38:00	2024-05-13 02:38:42	2024-05-13 02:38:42
125	teste felipe gustavo	1	Rua São João	tainaferreira0987@gmail.com	83748484888	2024-05-09 23:40:00	2024-05-13 02:40:33	2024-05-13 02:40:33
\.


--
-- TOC entry 3405 (class 0 OID 16411)
-- Dependencies: 215
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 3400 (class 0 OID 16386)
-- Dependencies: 210
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_reset_tokens_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2024_05_10_180712_cliente	2
6	2024_05_10_180558_veiculo	3
8	2024_05_11_000848_revisao	5
9	2024_05_10_180531_revisao	6
\.


--
-- TOC entry 3403 (class 0 OID 16403)
-- Dependencies: 213
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 3407 (class 0 OID 16423)
-- Dependencies: 217
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3413 (class 0 OID 16517)
-- Dependencies: 223
-- Data for Name: revisoes; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.revisoes (id, veiculo_id, type_servicos, quilometragem, detalhes, data_revisao, created_at, updated_at) FROM stdin;
3	56	commodi	76497	Nostrum vero non dolores deleniti vitae animi explicabo.	2024-04-06 14:13:47	2024-05-11 01:26:14	2024-05-11 01:26:14
8	62	et	23870	Mollitia est corporis libero cupiditate debitis qui omnis.	2024-01-12 09:46:33	2024-05-11 01:34:47	2024-05-11 01:34:47
9	63	ad	70023	Eos quasi quia necessitatibus ad optio esse minus consequatur.	2023-07-17 18:28:50	2024-05-11 01:34:48	2024-05-11 01:34:48
10	64	quisquam	20001	Minima quisquam maxime unde magnam nulla saepe ut.	2024-02-09 16:45:13	2024-05-11 01:34:48	2024-05-11 01:34:48
1	1	troca de óleo	quilometragem	detalhes	2024-04-30 22:23:37	2024-05-11 01:26:13	2024-05-11 01:34:48
11	65	id	49838	Deleniti praesentium aperiam tempora quo facilis natus deserunt.	2024-02-15 21:01:06	2024-05-11 01:35:55	2024-05-11 01:35:55
12	66	veritatis	95906	Voluptates ut tempora accusantium dicta.	2024-02-27 04:08:49	2024-05-11 01:35:55	2024-05-11 01:35:55
14	68	a	39148	Ut eveniet adipisci vel repudiandae officiis excepturi aliquid.	2023-12-18 23:34:23	2024-05-11 01:36:12	2024-05-11 01:36:12
15	69	dolores	83403	Aut similique et distinctio modi dicta aliquid possimus et.	2023-10-21 23:34:51	2024-05-11 01:36:12	2024-05-11 01:36:12
16	70	ea	74533	Officia quos fuga molestiae labore corrupti atque aliquid.	2024-02-22 09:57:05	2024-05-11 01:36:13	2024-05-11 01:36:13
17	71	rerum	40341	Incidunt autem debitis perspiciatis voluptas sit magni voluptatibus.	2023-05-14 11:39:55	2024-05-11 15:03:09	2024-05-11 15:03:09
18	72	molestias	28658	Vero nisi impedit est eos quibusdam dolorum.	2024-03-21 20:42:59	2024-05-11 15:03:10	2024-05-11 15:03:10
19	73	quibusdam	63321	Praesentium vero animi minima pariatur.	2023-11-05 07:43:59	2024-05-11 15:03:10	2024-05-11 15:03:10
20	13	Troca de óleo	300000	Troca de óleo rapitadmente	2024-05-23 16:48:00	2024-05-11 19:48:40	2024-05-11 19:48:40
13	67	Revisão	58644	Carro com problema	2024-03-09 18:08:26	2024-05-11 01:35:55	2024-05-11 19:54:19
7	47	Chav de egnição	29000	Chave quebrou dentro do carro	2023-11-14 18:47:16	2024-05-11 01:27:13	2024-05-13 03:07:30
21	12	Revisão geral	8000	primeira revisão	2024-05-16 00:21:00	2024-05-13 03:21:39	2024-05-13 03:21:39
\.


--
-- TOC entry 3402 (class 0 OID 16393)
-- Dependencies: 212
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3411 (class 0 OID 16472)
-- Dependencies: 221
-- Data for Name: veiculos; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.veiculos (id, cliente_id, marca, modelo, cor, placa, ano_fabricacao, created_at, updated_at) FROM stdin;
7	38	sit	iusto	LightCyan	gbv1153	2004-07-15 22:55:04	2024-05-10 22:41:13	2024-05-10 22:41:13
9	42	accusantium	et	Snow	ixs9319	2008-02-14 09:16:17	2024-05-10 22:41:27	2024-05-10 22:41:27
11	44	excepturi	magni	Azure	jij2394	2019-04-01 12:38:49	2024-05-10 22:44:41	2024-05-10 22:44:41
12	45	neque	veritatis	Purple	cgq6298	2010-07-19 01:19:06	2024-05-10 22:44:41	2024-05-10 22:44:41
13	46	voluptatem	deleniti	Moccasin	zju7460	2021-12-08 05:22:00	2024-05-10 22:44:41	2024-05-10 22:44:41
14	47	ipsa	illum	FloralWhite	iut2313	2006-08-07 11:43:28	2024-05-10 22:45:11	2024-05-10 22:45:11
15	48	saepe	nemo	PaleVioletRed	hqx4530	2020-08-23 05:23:56	2024-05-10 22:45:11	2024-05-10 22:45:11
16	49	voluptas	sed	Turquoise	tts2972	2007-10-01 12:23:18	2024-05-10 22:45:11	2024-05-10 22:45:11
17	50	beatae	tempore	Orchid	ikv7908	2018-11-17 15:02:03	2024-05-10 22:45:38	2024-05-10 22:45:38
18	51	rerum	occaecati	LightCoral	jqi4909	2010-04-25 12:10:41	2024-05-10 22:45:39	2024-05-10 22:45:39
19	52	aliquam	repellendus	HotPink	fbo9613	2008-07-05 17:40:50	2024-05-10 22:45:39	2024-05-10 22:45:39
20	53	occaecati	dolor	HoneyDew	rjj0604	2012-11-04 11:31:04	2024-05-10 22:46:46	2024-05-10 22:46:46
21	54	harum	pariatur	LightSkyBlue	ilh4533	2016-12-14 11:25:08	2024-05-10 22:46:46	2024-05-10 22:46:46
22	55	quod	tempore	SpringGreen	jxr2988	2013-02-06 06:02:12	2024-05-10 22:46:47	2024-05-10 22:46:47
23	56	expedita	et	Moccasin	mke0311	2013-03-02 04:17:50	2024-05-10 23:54:32	2024-05-10 23:54:32
24	57	et	aliquam	SteelBlue	lgm8538	2018-12-20 18:21:05	2024-05-10 23:54:33	2024-05-10 23:54:33
25	58	hic	aperiam	DarkViolet	xpj9959	2009-08-21 02:44:10	2024-05-10 23:55:37	2024-05-10 23:55:37
26	59	ut	omnis	Moccasin	zku4574	2023-03-29 06:43:21	2024-05-10 23:55:38	2024-05-10 23:55:38
27	60	excepturi	cumque	LightCoral	avv5872	2016-06-22 14:30:55	2024-05-10 23:58:17	2024-05-10 23:58:17
28	61	consequatur	doloremque	Chartreuse	yhc2373	2019-05-08 16:49:24	2024-05-10 23:58:17	2024-05-10 23:58:17
1	1	fox	sei lá	rosa	5960	2024-04-30 22:23:37	2024-05-10 22:30:13	2024-05-10 23:58:17
29	62	debitis	quas	DarkSlateBlue	gtv9241	2012-02-01 15:01:18	2024-05-10 23:58:58	2024-05-10 23:58:58
30	63	velit	iste	DarkBlue	mdw4295	2013-11-04 15:18:38	2024-05-10 23:58:58	2024-05-10 23:58:58
31	64	inventore	autem	DarkSalmon	tkc4933	2008-10-18 06:45:43	2024-05-10 23:59:38	2024-05-10 23:59:38
32	65	nihil	nihil	Azure	kwi1838	2007-07-08 10:25:58	2024-05-10 23:59:38	2024-05-10 23:59:38
2	33	Atualizando só veiculo mesmo	dolor	PeachPuff	suz6439	2017-10-18 06:01:32	2024-05-10 22:35:07	2024-05-10 23:59:38
33	66	rerum	ut	Aqua	ful5321	2007-09-16 16:01:53	2024-05-11 00:04:26	2024-05-11 00:04:26
34	67	qui	possimus	MediumBlue	eji6894	2013-03-19 07:26:57	2024-05-11 00:04:26	2024-05-11 00:04:26
35	68	consequatur	fugit	SlateBlue	fgf6071	2021-12-08 17:14:53	2024-05-11 00:05:51	2024-05-11 00:05:51
36	69	fuga	quod	LightSlateGray	ekn1674	2015-08-08 16:13:15	2024-05-11 00:05:51	2024-05-11 00:05:51
37	70	nihil	sit	Crimson	grz6564	2007-12-03 12:11:38	2024-05-11 00:10:35	2024-05-11 00:10:35
38	71	fugit	non	Magenta	ivy4666	2016-06-24 11:01:55	2024-05-11 00:10:35	2024-05-11 00:10:35
39	72	vitae	vel	FloralWhite	yww2229	2013-05-11 16:34:37	2024-05-11 00:13:39	2024-05-11 00:13:39
40	73	ea	necessitatibus	Linen	yaq2862	2016-05-23 20:35:46	2024-05-11 00:13:39	2024-05-11 00:13:39
41	74	error	beatae	Teal	tet4719	2016-08-26 03:36:50	2024-05-11 00:15:12	2024-05-11 00:15:12
42	75	ex	tempore	OrangeRed	kda9533	2005-12-07 22:14:49	2024-05-11 00:15:12	2024-05-11 00:15:12
43	76	delectus	voluptatem	NavajoWhite	slu0060	2011-03-28 18:22:43	2024-05-11 00:16:16	2024-05-11 00:16:16
44	77	consequatur	non	PapayaWhip	jug6609	2009-03-09 10:37:53	2024-05-11 00:16:16	2024-05-11 00:16:16
45	78	excepturi	aut	MediumSlateBlue	zpz6137	2021-06-15 22:53:11	2024-05-11 00:19:15	2024-05-11 00:19:15
46	79	culpa	deleniti	Tomato	kme0306	2011-12-16 21:22:03	2024-05-11 00:19:15	2024-05-11 00:19:15
47	80	velit	molestiae	LightSeaGreen	icf3351	2011-03-02 05:49:42	2024-05-11 00:20:38	2024-05-11 00:20:38
48	81	recusandae	labore	PaleGoldenRod	abz7291	2012-09-15 08:26:58	2024-05-11 00:20:38	2024-05-11 00:20:38
49	82	suscipit	blanditiis	PowderBlue	dve9724	2018-08-06 14:03:03	2024-05-11 00:22:28	2024-05-11 00:22:28
50	83	rerum	dolorem	Violet	upn1606	2019-07-12 06:56:10	2024-05-11 00:24:07	2024-05-11 00:24:07
51	84	autem	eaque	DarkSalmon	ijn1898	2012-05-14 12:02:31	2024-05-11 00:24:50	2024-05-11 00:24:50
52	85	odit	ratione	BlanchedAlmond	hyu8585	2022-02-25 18:36:45	2024-05-11 00:26:41	2024-05-11 00:26:41
53	86	corporis	at	MediumTurquoise	ckb5677	2019-01-30 07:23:34	2024-05-11 00:31:20	2024-05-11 00:31:20
54	87	assumenda	in	Silver	yze2895	2012-03-08 22:50:22	2024-05-11 01:26:13	2024-05-11 01:26:13
55	88	consequatur	sit	LawnGreen	bvj6460	2018-09-10 17:26:04	2024-05-11 01:26:14	2024-05-11 01:26:14
56	89	dolor	rem	LightPink	xak7812	2007-10-11 10:30:53	2024-05-11 01:26:14	2024-05-11 01:26:14
57	90	nam	velit	MintCream	xpc5585	2011-02-03 09:19:37	2024-05-11 01:26:14	2024-05-11 01:26:14
58	91	magni	est	OliveDrab	bbi9134	2020-01-26 23:11:15	2024-05-11 01:27:13	2024-05-11 01:27:13
59	92	sapiente	neque	DarkSlateBlue	xkb8374	2023-05-30 17:16:27	2024-05-11 01:27:13	2024-05-11 01:27:13
60	93	ipsa	et	MediumBlue	cjd6436	2015-12-06 16:03:53	2024-05-11 01:27:13	2024-05-11 01:27:13
61	94	illo	beatae	DarkGray	zpv8458	2010-10-02 23:36:43	2024-05-11 01:27:13	2024-05-11 01:27:13
62	95	quia	velit	Yellow	tnn6310	2004-06-02 00:07:29	2024-05-11 01:34:47	2024-05-11 01:34:47
64	97	qui	accusamus	LightSteelBlue	pby3803	2023-01-09 13:40:11	2024-05-11 01:34:48	2024-05-11 01:34:48
65	98	ratione	explicabo	Black	qfp2358	2016-07-27 01:52:49	2024-05-11 01:35:55	2024-05-11 01:35:55
66	99	voluptas	nisi	PeachPuff	pwj7558	2021-04-11 09:53:28	2024-05-11 01:35:55	2024-05-11 01:35:55
67	100	natus	mollitia	Aquamarine	uhr1135	2013-05-31 20:20:30	2024-05-11 01:35:55	2024-05-11 01:35:55
68	101	odit	earum	LightCyan	xfr2456	2011-11-26 11:23:55	2024-05-11 01:36:12	2024-05-11 01:36:12
69	102	nam	minima	LightGoldenRodYellow	fpa4096	2020-09-23 00:30:57	2024-05-11 01:36:12	2024-05-11 01:36:12
70	103	fuga	iure	DarkRed	gcn1768	2023-05-20 19:39:17	2024-05-11 01:36:13	2024-05-11 01:36:13
71	104	sint	veniam	HoneyDew	aod6429	2015-07-03 19:54:31	2024-05-11 15:03:09	2024-05-11 15:03:09
72	105	natus	expedita	LightSalmon	per4247	2005-11-28 00:24:35	2024-05-11 15:03:10	2024-05-11 15:03:10
73	106	ratione	magni	Yellow	rmd6320	2011-01-22 04:31:29	2024-05-11 15:03:10	2024-05-11 15:03:10
75	45	honda	47474	azul	ORG0I9	2024-05-16 19:49:00	2024-05-11 18:49:47	2024-05-11 18:49:47
6	24	XL	in	Preto	ojj8541	2014-11-24 17:39:26	2024-05-10 22:41:13	2024-05-11 19:02:19
63	96	Fox	Xoe	LightGray	wtg5194	2016-08-17 11:41:29	2024-05-11 01:34:48	2024-05-11 18:56:30
3	34	honda	XXX	YellowGreen	zna3132	2021-03-16 06:34:10	2024-05-10 22:35:07	2024-05-11 18:58:09
76	45	honda	654647	Preto	ojj8541	2024-02-23 23:49:00	2024-05-13 02:49:45	2024-05-13 02:49:45
77	45	honda	654647	Preto	ojj8541	2024-02-23 23:49:00	2024-05-13 02:49:45	2024-05-13 02:49:45
\.


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 218
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.clientes_id_seq', 126, true);


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 214
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 209
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);


--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 216
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 222
-- Name: revisoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.revisoes_id_seq', 21, true);


--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 220
-- Name: veiculos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.veiculos_id_seq', 77, true);


--
-- TOC entry 3251 (class 2606 OID 16461)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 16419)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3244 (class 2606 OID 16421)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 3234 (class 2606 OID 16391)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 16409)
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- TOC entry 3246 (class 2606 OID 16430)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3248 (class 2606 OID 16433)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 3256 (class 2606 OID 16524)
-- Name: revisoes revisoes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.revisoes
    ADD CONSTRAINT revisoes_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 16402)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 3238 (class 2606 OID 16400)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3254 (class 2606 OID 16479)
-- Name: veiculos veiculos_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT veiculos_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 1259 OID 16431)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 3257 (class 1259 OID 16530)
-- Name: revisoes_veiculo_id_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX revisoes_veiculo_id_index ON public.revisoes USING btree (veiculo_id);


--
-- TOC entry 3252 (class 1259 OID 16485)
-- Name: veiculos_cliente_id_index; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX veiculos_cliente_id_index ON public.veiculos USING btree (cliente_id);


--
-- TOC entry 3259 (class 2606 OID 16525)
-- Name: revisoes revisoes_veiculo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.revisoes
    ADD CONSTRAINT revisoes_veiculo_id_foreign FOREIGN KEY (veiculo_id) REFERENCES public.veiculos(id);


--
-- TOC entry 3258 (class 2606 OID 16480)
-- Name: veiculos veiculos_cliente_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT veiculos_cliente_id_foreign FOREIGN KEY (cliente_id) REFERENCES public.clientes(id);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: admin
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-05-13 01:19:44

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-05-13 01:19:44

--
-- PostgreSQL database cluster dump complete
--

