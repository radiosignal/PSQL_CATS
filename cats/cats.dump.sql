--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-1.pgdg22.04+1)

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
-- Name: body; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.body (
    id integer NOT NULL,
    body_name character varying(30) NOT NULL,
    energy integer,
    health integer,
    weapon_slots integer,
    tools_slots integer,
    wheels_slots integer
);


ALTER TABLE public.body OWNER TO robot;

--
-- Name: body_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.body_id_seq OWNER TO robot;

--
-- Name: body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.body_id_seq OWNED BY public.body.id;


--
-- Name: car; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.car (
    id integer NOT NULL,
    body_id integer,
    weapon_id integer,
    wheels_id integer,
    tool_id integer,
    upgrade_kit_id integer
);


ALTER TABLE public.car OWNER TO robot;

--
-- Name: car_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.car_id_seq OWNER TO robot;

--
-- Name: car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.car_id_seq OWNED BY public.car.id;


--
-- Name: championship; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.championship (
    id integer NOT NULL,
    championship_name character varying(30) NOT NULL,
    championship_level_name character varying(30) NOT NULL,
    user_rate_id integer,
    started_at timestamp without time zone
);


ALTER TABLE public.championship OWNER TO robot;

--
-- Name: championship_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.championship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_id_seq OWNER TO robot;

--
-- Name: championship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.championship_id_seq OWNED BY public.championship.id;


--
-- Name: championship_statuses; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.championship_statuses (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    status_id character varying(255) NOT NULL
);


ALTER TABLE public.championship_statuses OWNER TO robot;

--
-- Name: championship_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.championship_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.championship_statuses_id_seq OWNER TO robot;

--
-- Name: championship_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.championship_statuses_id_seq OWNED BY public.championship_statuses.id;


--
-- Name: co_pilot; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.co_pilot (
    id integer NOT NULL,
    name_id character varying(30) NOT NULL,
    co_pilot_level integer,
    skils integer
);


ALTER TABLE public.co_pilot OWNER TO robot;

--
-- Name: co_pilot_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.co_pilot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.co_pilot_id_seq OWNER TO robot;

--
-- Name: co_pilot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.co_pilot_id_seq OWNED BY public.co_pilot.id;


--
-- Name: pilot; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.pilot (
    id integer NOT NULL,
    name_id character varying(30) NOT NULL,
    status_id character varying(30) NOT NULL,
    cap integer,
    garment integer,
    face integer
);


ALTER TABLE public.pilot OWNER TO robot;

--
-- Name: pilot_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.pilot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pilot_id_seq OWNER TO robot;

--
-- Name: pilot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.pilot_id_seq OWNED BY public.pilot.id;


--
-- Name: tools; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.tools (
    id integer NOT NULL,
    tool_name character varying(30) NOT NULL,
    energy integer,
    health integer,
    tool_level integer
);


ALTER TABLE public.tools OWNER TO robot;

--
-- Name: tools_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.tools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tools_id_seq OWNER TO robot;

--
-- Name: tools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.tools_id_seq OWNED BY public.tools.id;


--
-- Name: upgrade_kit; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.upgrade_kit (
    id integer NOT NULL,
    upgrade_kit_name_id character varying(30) NOT NULL,
    power_surplus integer,
    upgrade_kit_level integer
);


ALTER TABLE public.upgrade_kit OWNER TO robot;

--
-- Name: upgrade_kit_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.upgrade_kit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upgrade_kit_id_seq OWNER TO robot;

--
-- Name: upgrade_kit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.upgrade_kit_id_seq OWNED BY public.upgrade_kit.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nick_name character varying(56) NOT NULL,
    email character varying(120) NOT NULL,
    passwords character varying(90) NOT NULL,
    user_id integer,
    created_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO robot;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO robot;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: weapon; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.weapon (
    id integer NOT NULL,
    weapon_name character varying(30) NOT NULL,
    energy integer,
    atack integer,
    weapon_level integer
);


ALTER TABLE public.weapon OWNER TO robot;

--
-- Name: weapon_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.weapon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weapon_id_seq OWNER TO robot;

--
-- Name: weapon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.weapon_id_seq OWNED BY public.weapon.id;


--
-- Name: wheels; Type: TABLE; Schema: public; Owner: robot
--

CREATE TABLE public.wheels (
    id integer NOT NULL,
    wheel_name character varying(30) NOT NULL,
    energy integer,
    health integer,
    wheel_level integer
);


ALTER TABLE public.wheels OWNER TO robot;

--
-- Name: wheels_id_seq; Type: SEQUENCE; Schema: public; Owner: robot
--

CREATE SEQUENCE public.wheels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wheels_id_seq OWNER TO robot;

--
-- Name: wheels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: robot
--

ALTER SEQUENCE public.wheels_id_seq OWNED BY public.wheels.id;


--
-- Name: body id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.body ALTER COLUMN id SET DEFAULT nextval('public.body_id_seq'::regclass);


--
-- Name: car id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.car ALTER COLUMN id SET DEFAULT nextval('public.car_id_seq'::regclass);


--
-- Name: championship id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.championship ALTER COLUMN id SET DEFAULT nextval('public.championship_id_seq'::regclass);


--
-- Name: championship_statuses id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.championship_statuses ALTER COLUMN id SET DEFAULT nextval('public.championship_statuses_id_seq'::regclass);


--
-- Name: co_pilot id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.co_pilot ALTER COLUMN id SET DEFAULT nextval('public.co_pilot_id_seq'::regclass);


--
-- Name: pilot id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.pilot ALTER COLUMN id SET DEFAULT nextval('public.pilot_id_seq'::regclass);


--
-- Name: tools id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.tools ALTER COLUMN id SET DEFAULT nextval('public.tools_id_seq'::regclass);


--
-- Name: upgrade_kit id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.upgrade_kit ALTER COLUMN id SET DEFAULT nextval('public.upgrade_kit_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: weapon id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.weapon ALTER COLUMN id SET DEFAULT nextval('public.weapon_id_seq'::regclass);


--
-- Name: wheels id; Type: DEFAULT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.wheels ALTER COLUMN id SET DEFAULT nextval('public.wheels_id_seq'::regclass);


--
-- Data for Name: body; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.body (id, body_name, energy, health, weapon_slots, tools_slots, wheels_slots) FROM stdin;
1	Diamond	12	282	3	1	3
2	Titan	25	865	3	3	3
3	Sneaky	1	878	2	2	2
4	Sneaky	30	708	3	2	0
5	Whale	14	444	1	2	1
6	Surfer	6	473	3	3	1
7	Surfer	10	600	2	2	2
8	Classic	29	929	0	2	2
9	Boulder	16	162	2	1	3
10	Classic	20	961	3	1	2
11	Diamond	6	865	1	1	2
12	Pyramid	28	752	3	2	0
13	Sneaky	29	939	2	1	2
14	Surfer	5	936	0	0	2
15	Classic	16	938	0	2	1
16	Pyramid	11	375	1	1	3
17	Boulder	21	725	0	2	0
18	Surfer	13	702	2	2	2
19	Diamond	26	249	3	1	3
20	Sneaky	30	911	1	1	3
21	Titan	10	151	2	1	2
22	Classic	2	643	1	3	2
23	Titan	4	139	2	3	3
24	Pyramid	3	133	3	1	3
25	Diamond	25	313	3	0	1
26	Classic	22	69	0	0	1
27	Classic	25	936	2	2	1
28	Whale	18	913	3	2	1
29	Diamond	5	69	1	1	1
30	Titan	18	779	3	0	0
31	Pyramid	2	555	2	2	1
32	Titan	16	240	2	1	2
33	Classic	15	796	0	2	2
34	Surfer	13	224	1	1	1
35	Whale	11	484	1	0	1
36	Titan	23	89	2	2	1
37	Surfer	22	257	1	1	2
38	Sneaky	10	584	2	2	3
39	Diamond	16	340	1	1	1
40	Diamond	27	518	3	2	2
41	Surfer	18	636	3	0	1
42	Titan	11	93	2	2	0
43	Diamond	25	891	1	1	3
44	Surfer	12	847	1	3	0
45	Surfer	29	510	0	1	2
46	Whale	18	313	0	0	1
47	Titan	5	770	1	2	0
48	Titan	1	180	2	1	0
49	Titan	24	244	0	2	1
50	Titan	13	471	0	2	2
51	Diamond	5	854	0	2	1
52	Surfer	27	893	3	2	2
53	Whale	28	477	3	2	1
54	Pyramid	6	210	0	1	1
55	Classic	13	758	0	2	0
56	Surfer	25	3	1	2	2
57	Titan	5	634	0	2	2
58	Titan	22	679	3	0	1
59	Classic	5	812	3	1	0
60	Classic	29	140	1	0	2
61	Whale	15	25	1	1	1
62	Pyramid	29	704	3	3	0
63	Whale	1	802	0	1	2
64	Surfer	22	512	2	1	2
65	Boulder	6	13	2	0	2
66	Pyramid	29	243	2	2	1
67	Whale	5	353	2	0	2
68	Titan	24	221	2	0	1
69	Pyramid	28	879	3	2	1
70	Sneaky	16	243	0	1	2
71	Whale	7	220	2	1	2
72	Whale	8	62	0	1	3
73	Surfer	14	521	3	0	2
74	Sneaky	5	465	1	0	1
75	Boulder	22	845	1	2	0
76	Pyramid	22	249	3	1	3
77	Sneaky	3	119	3	1	1
78	Titan	14	42	1	1	2
79	Surfer	7	233	1	1	1
80	Diamond	17	218	3	3	0
81	Classic	0	102	1	2	2
82	Whale	16	436	2	1	3
83	Pyramid	7	159	2	2	1
84	Whale	12	864	3	2	2
85	Pyramid	21	956	3	1	2
86	Sneaky	14	581	1	2	1
87	Pyramid	12	926	1	3	1
88	Boulder	13	630	1	1	0
89	Boulder	11	496	1	1	2
90	Diamond	7	9	1	1	3
91	Boulder	10	879	1	3	3
92	Titan	17	168	2	2	2
93	Sneaky	5	69	0	2	0
94	Boulder	26	350	2	3	1
95	Pyramid	26	794	3	2	0
96	Surfer	4	800	2	3	0
97	Classic	20	496	3	3	1
98	Classic	22	369	3	3	2
99	Pyramid	4	669	3	3	2
100	Titan	9	195	2	2	1
\.


--
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.car (id, body_id, weapon_id, wheels_id, tool_id, upgrade_kit_id) FROM stdin;
2	24	39	1	47	64
3	79	9	49	52	10
4	69	29	47	63	75
5	25	8	33	61	75
6	88	24	10	72	41
7	48	33	30	71	46
8	77	15	75	10	19
9	63	56	13	31	19
10	50	20	82	95	55
11	87	3	92	4	53
12	62	85	44	48	10
13	25	5	32	72	40
14	8	60	77	52	92
15	21	96	30	15	27
16	54	6	69	48	83
17	90	97	64	65	3
18	38	98	52	76	42
19	26	12	21	9	1
20	16	58	44	71	83
21	1	73	22	24	14
22	63	58	24	90	31
23	23	5	11	2	61
24	34	99	46	99	99
25	53	81	86	39	75
26	46	72	56	19	66
27	20	65	68	7	88
28	92	64	47	48	86
29	33	14	47	9	11
30	75	48	80	10	53
31	89	49	54	18	56
33	27	91	78	30	16
34	22	36	85	75	20
35	34	51	13	55	14
36	44	74	45	89	73
37	77	4	98	74	90
38	7	98	57	2	75
39	26	1	4	29	84
40	87	21	91	56	64
41	37	67	75	60	50
42	82	87	12	31	63
43	53	67	30	51	57
44	14	92	87	86	38
45	76	34	10	98	30
46	63	22	30	93	37
47	72	27	88	59	42
48	50	68	59	6	40
49	22	56	92	28	23
50	74	34	84	15	72
51	32	56	21	94	35
52	53	62	35	33	43
53	20	13	45	19	14
54	22	21	53	83	9
55	96	58	65	47	96
56	38	97	49	15	92
57	57	43	17	95	93
58	97	93	37	91	47
59	2	13	41	22	56
60	33	78	93	31	21
61	96	98	64	26	1
62	100	56	44	51	43
63	17	80	74	31	81
64	39	76	51	20	33
65	4	55	34	39	47
66	3	82	48	42	92
67	76	54	90	71	50
68	33	20	45	59	82
69	72	2	8	21	37
70	12	89	39	93	67
71	34	90	43	52	44
72	43	74	68	11	3
73	46	13	42	65	88
74	36	70	4	84	41
75	72	70	50	86	13
76	51	2	70	94	63
77	86	1	36	84	40
78	65	49	58	97	96
79	67	28	42	23	73
80	70	13	47	38	94
81	77	45	73	74	26
82	85	78	37	29	89
85	45	55	62	64	91
86	68	96	47	36	65
87	23	8	31	85	33
88	42	27	56	28	70
89	19	83	91	6	72
90	49	17	75	70	98
91	69	60	38	53	43
92	86	67	96	16	26
93	57	13	95	49	20
94	8	38	65	13	36
95	70	20	35	9	6
96	23	94	69	92	88
97	44	83	7	84	54
98	51	91	2	85	35
99	96	21	33	52	79
100	41	29	22	55	52
32	80	40	1	29	97
83	41	28	1	62	57
1	26	59	1	32	24
84	51	24	52	1	82
\.


--
-- Data for Name: championship; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.championship (id, championship_name, championship_level_name, user_rate_id, started_at) FROM stdin;
1	Halla	carbon	4	2023-01-20 01:11:08
2	Erica	wooden	14	2023-07-09 16:01:06
3	Dai	military	2	2023-01-10 07:46:44
4	Flynn	military	8	2023-04-03 12:36:07
5	Delilah	carbon	4	2023-04-09 16:02:21
6	Laura	golden	14	2022-12-11 08:56:32
7	Mia	military	2	2021-10-19 18:35:11
8	Jennifer	wooden	14	2023-04-01 10:29:58
9	Sandra	carbon	8	2023-09-14 22:32:12
10	Abbot	golden	2	2023-02-11 06:03:27
11	Giacomo	carbon	3	2022-12-22 20:50:23
12	Elizabeth	wooden	5	2021-12-28 06:06:39
13	Francis	carbon	14	2023-08-25 05:10:13
14	Charity	wooden	4	2022-10-12 17:34:14
15	Orla	wooden	14	2023-01-12 16:41:07
16	Abdul	golden	11	2022-10-26 04:43:18
17	Bryar	metall	4	2022-09-07 01:31:02
18	Phelan	wooden	2	2021-11-04 08:46:26
19	Fritz	metall	12	2021-12-31 10:46:17
20	Melvin	metall	3	2021-11-19 02:03:52
21	Brock	metall	3	2022-12-03 07:37:12
22	Rebekah	wooden	11	2023-02-26 23:59:38
23	Colette	wooden	12	2022-01-06 15:40:56
24	Cade	metall	2	2023-01-18 05:37:05
25	Indira	golden	6	2022-11-27 10:20:14
26	Yuli	military	8	2022-07-17 03:04:43
27	Fritz	wooden	1	2022-01-29 19:27:39
28	Lucius	wooden	13	2022-03-07 07:19:39
29	Brynn	wooden	8	2022-08-15 18:44:27
30	Brody	golden	5	2023-07-28 13:33:37
31	Chaney	golden	7	2022-11-27 12:10:07
32	Ursa	carbon	5	2023-03-01 06:17:36
33	Baker	metall	2	2022-04-13 01:12:21
34	Bevis	golden	1	2023-09-19 06:07:42
35	Jena	military	14	2022-02-11 01:12:36
36	Alfonso	military	4	2023-08-25 19:31:06
37	Audra	wooden	6	2023-05-06 13:15:47
38	Philip	golden	10	2023-08-09 09:33:18
39	Abraham	military	12	2022-01-19 18:40:21
40	Orlando	carbon	12	2022-03-17 07:02:51
41	Herman	military	11	2022-02-01 04:22:13
42	Kyle	military	5	2022-02-28 00:50:29
43	Amity	military	9	2022-03-30 14:47:03
44	Odysseus	golden	11	2022-05-16 17:08:04
45	George	metall	7	2023-02-03 14:35:52
46	Barclay	carbon	11	2023-03-12 15:00:30
47	Sopoline	military	9	2022-10-04 21:26:43
48	Price	golden	3	2022-10-12 05:27:06
49	Jane	wooden	4	2022-06-14 15:08:17
50	Ocean	military	12	2023-09-19 09:52:53
51	Ifeoma	wooden	4	2023-07-15 07:19:10
52	Urielle	military	14	2022-05-04 10:12:40
53	Emily	wooden	8	2022-05-14 13:10:01
54	Tarik	wooden	5	2022-11-25 12:42:57
55	Honorato	golden	7	2021-10-05 09:28:10
56	Randall	wooden	11	2022-12-15 16:19:19
57	Moana	golden	3	2022-10-25 22:40:50
58	Chantale	golden	12	2023-03-21 00:39:07
59	Moana	military	14	2021-10-18 05:16:57
60	Hyacinth	metall	1	2023-05-15 00:58:58
61	Joshua	wooden	11	2023-07-31 20:53:34
62	TaShya	carbon	9	2022-10-11 01:02:51
63	Abraham	carbon	14	2022-12-10 19:16:01
64	Cynthia	golden	7	2023-05-24 15:55:51
65	Fuller	golden	1	2022-07-05 09:49:17
66	Orson	carbon	10	2021-11-25 11:54:56
67	Virginia	carbon	1	2023-01-17 11:12:24
68	Lunea	metall	14	2023-01-23 17:32:19
69	Christopher	carbon	14	2023-03-30 16:08:41
70	Seth	military	12	2023-03-09 23:23:25
71	Richard	wooden	5	2022-11-26 14:09:11
72	Claire	military	11	2022-05-26 14:46:42
73	Petra	carbon	5	2021-09-27 20:47:06
74	Deirdre	golden	6	2021-10-29 12:51:54
75	Ella	golden	1	2022-05-20 23:42:05
76	Cade	carbon	14	2023-05-23 07:06:47
77	Kylynn	carbon	5	2022-12-29 00:09:29
78	Nayda	metall	5	2023-08-15 18:11:00
79	Xavier	wooden	13	2022-09-08 18:15:59
80	Forrest	wooden	4	2022-12-06 04:48:30
81	Stone	metall	13	2023-06-27 04:39:47
82	Lev	wooden	12	2022-04-13 23:48:13
83	Honorato	carbon	7	2022-11-28 23:59:53
84	Amelia	wooden	3	2021-11-02 20:15:57
85	Stephanie	golden	10	2022-06-18 11:17:16
86	Maggy	wooden	9	2022-07-26 14:34:32
87	Shelley	metall	8	2022-03-14 16:42:32
88	Hillary	golden	3	2023-08-16 16:13:19
89	Chancellor	golden	14	2023-01-10 07:42:17
90	Vaughan	carbon	6	2022-04-10 17:01:31
91	Burton	golden	4	2022-08-17 02:17:11
92	Branden	metall	9	2023-02-22 08:51:47
93	Lance	golden	12	2023-06-01 00:36:28
94	Jacob	metall	4	2022-12-09 11:53:12
95	Kiona	wooden	11	2021-10-31 14:58:53
96	Chloe	military	12	2023-07-20 15:06:42
97	Eve	carbon	9	2022-11-09 16:48:02
98	Eaton	wooden	9	2022-10-11 23:54:33
99	Leigh	metall	13	2022-10-02 11:44:27
100	Brenda	military	10	2022-04-06 01:18:56
\.


--
-- Data for Name: championship_statuses; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.championship_statuses (id, name, status_id) FROM stdin;
1	Chester	win
2	Alec	loss
3	Amber	win
4	Sonya	win
5	Zoe	loss
6	Gil	loss
7	Preston	win
8	Amena	win
9	Georgia	win
10	Ocean	loss
11	Luke	loss
12	Callum	win
13	Aileen	win
14	Arsenio	win
15	Mannix	win
16	Keane	win
17	Byron	loss
18	Lisandra	loss
19	Karly	loss
20	Aretha	loss
21	Lillian	win
22	Judah	loss
23	Robin	win
24	Lawrence	loss
25	Tiger	loss
26	Shea	loss
27	Desirae	win
28	Porter	loss
29	Tanya	win
30	Leslie	win
31	Susan	loss
32	Byron	loss
33	Yoshi	loss
34	Patrick	win
35	Shaeleigh	win
36	Maite	win
37	Cleo	loss
38	Fritz	win
39	Mara	win
40	Ora	win
41	Macon	loss
42	Arden	loss
43	Darrel	loss
44	Piper	win
45	Indigo	loss
46	Kimberly	loss
47	Darryl	win
48	Clarke	loss
49	Charde	win
50	Kadeem	loss
51	Ivor	win
52	Kyra	loss
53	Lani	loss
54	Beverly	win
55	Lana	win
56	Sacha	win
57	Acton	loss
58	James	loss
59	Yoshi	loss
60	Demetrius	loss
61	Naomi	win
62	Rae	loss
63	Nita	win
64	Galena	win
65	Claudia	loss
66	Macy	win
67	Karen	win
68	Hasad	loss
69	Yetta	win
70	Whilemina	loss
71	Ignatius	loss
72	Noel	win
73	Phyllis	loss
74	April	loss
75	Mariam	win
76	Honorato	win
77	MacKenzie	loss
78	Tanner	win
79	Deirdre	loss
80	William	loss
81	Ocean	loss
82	Molly	loss
83	Jennifer	win
84	Fay	win
85	Naida	win
86	Herrod	win
87	Mason	loss
88	Micah	loss
89	Ahmed	loss
90	Audra	loss
91	Hilary	win
92	Nomlanga	loss
93	Lev	win
94	Herrod	win
95	Colt	win
96	Megan	win
97	Alma	loss
98	Ralph	win
99	Imogene	loss
100	Thane	win
\.


--
-- Data for Name: co_pilot; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.co_pilot (id, name_id, co_pilot_level, skils) FROM stdin;
1	Kermit	7	802
2	Louis	42	625
3	Summer	4	508
4	Wilma	56	424
5	Palmer	2	486
6	Jenette	44	562
7	Nomlanga	53	928
8	Amena	55	210
9	Graham	45	49
10	Shay	43	110
11	Delilah	55	66
12	Clarke	39	576
13	Vernon	27	186
14	Kadeem	1	930
15	Natalie	38	707
16	Quemby	10	530
17	Len	17	451
18	Maia	19	855
19	Devin	59	420
20	Serena	13	39
21	Ori	39	587
22	Neil	49	86
23	Neil	28	399
24	Anjolie	43	576
25	Risa	36	836
26	Jesse	54	108
27	Rooney	59	484
28	Adrienne	16	741
29	Justina	11	843
30	Brent	56	323
31	Jasper	10	448
32	Brett	0	537
33	Addison	48	765
34	Oliver	52	717
35	Xavier	2	487
36	Xandra	8	394
37	Ashton	13	774
38	Adam	13	274
39	Priscilla	48	471
40	Rinah	51	535
41	Leslie	57	567
42	Howard	43	901
43	Dante	54	254
44	Ulla	14	847
45	Keane	10	380
46	Victor	3	319
47	Drew	33	377
48	Neil	38	7
49	Matthew	40	420
50	Kylynn	55	547
51	Katelyn	55	384
52	Alisa	26	319
53	Patricia	54	645
54	Nicholas	53	431
55	Jane	32	752
56	Colette	46	35
57	Neve	12	143
58	Madaline	9	534
59	Madaline	49	608
60	Lester	54	138
61	Marvin	17	865
62	Alana	7	707
63	Ruth	11	710
64	Yoko	24	794
65	Risa	58	179
66	Plato	56	662
67	Petra	38	192
68	Brandon	55	54
69	Tarik	11	21
70	Aristotle	2	801
71	Ruth	1	401
72	Summer	36	649
73	Chastity	25	36
74	Buffy	3	875
75	Karina	21	542
76	Amery	43	865
77	Gabriel	17	90
78	Gannon	33	515
79	Reese	23	808
80	Garrison	42	568
81	Mohammad	28	549
82	Jaden	2	128
83	Jackson	22	150
84	Cathleen	24	452
85	Irene	26	118
86	Holmes	59	708
87	Laith	0	994
88	Jescie	26	490
89	Libby	40	802
90	Noelle	1	489
91	Tashya	59	770
92	Uriah	50	442
93	Cooper	42	208
94	Sybill	23	127
95	Reese	30	627
96	Quyn	33	904
97	Libby	46	296
98	Wang	13	846
99	Martena	56	648
100	Gavin	20	211
\.


--
-- Data for Name: pilot; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.pilot (id, name_id, status_id, cap, garment, face) FROM stdin;
1	Wanda	No	2	61	49
2	Bo	Yes	10	40	1
3	Bryar	No	33	59	39
4	Jillian	No	84	83	52
5	Maxwell	No	83	79	78
6	Tiger	No	54	51	82
7	Adara	No	37	99	69
8	Avye	No	80	98	39
9	Xander	Yes	68	85	45
10	Neville	Yes	106	73	14
11	Illana	No	0	72	15
12	Evangeline	No	94	28	80
13	Kyle	Yes	71	88	16
14	Yuli	No	69	9	12
15	Rigel	No	53	84	89
16	Baker	Yes	103	43	6
17	Yoshio	No	20	56	62
18	Tiger	No	104	68	76
19	Steven	Yes	82	93	52
20	Vladimir	No	10	98	32
21	Ebony	No	72	77	28
22	Joelle	Yes	91	58	75
23	Louis	No	22	9	30
24	Elvis	Yes	77	5	30
25	Zoe	No	28	31	56
26	Claire	No	105	44	6
27	Lilah	Yes	70	9	6
28	Keith	Yes	39	69	53
29	Declan	Yes	15	66	62
30	September	Yes	39	36	24
31	Eugenia	Yes	89	76	56
32	Harriet	Yes	21	33	74
33	Boris	Yes	74	19	31
34	Iris	Yes	50	6	7
35	Britanni	Yes	104	75	82
36	Beck	Yes	49	8	89
37	Savannah	No	16	66	39
38	Regan	Yes	62	6	1
39	Heather	No	71	64	20
40	Fletcher	Yes	45	46	22
41	Amity	No	35	60	42
42	Hector	No	34	31	63
43	Leo	Yes	33	33	30
44	Larissa	Yes	108	29	9
45	Astra	Yes	26	97	13
46	Robin	No	71	74	84
47	Bree	Yes	70	28	12
48	Hayes	Yes	58	9	31
49	Solomon	No	106	55	80
50	Sonya	No	96	93	61
51	Paki	Yes	51	39	54
52	Judah	Yes	36	3	51
53	Grant	Yes	2	21	62
54	Orla	No	71	62	16
55	Clinton	No	60	25	44
56	Tamekah	Yes	17	70	28
57	Berk	Yes	62	75	23
58	Bianca	No	31	23	52
59	Bell	No	21	41	26
60	Joy	Yes	69	50	91
61	Michael	No	22	45	80
62	Candace	No	68	13	64
63	Glenna	No	85	68	2
64	Aladdin	Yes	56	49	27
65	Britanney	Yes	93	36	56
66	Elton	Yes	86	10	86
67	Kieran	Yes	85	7	91
68	Roanna	No	45	76	16
69	Axel	Yes	23	26	31
70	Abraham	Yes	23	62	29
71	Maxwell	No	75	28	34
72	Hayden	No	65	30	18
73	Stacy	No	27	55	53
74	Jakeem	Yes	81	89	66
75	Judah	No	104	60	9
76	Emerald	Yes	75	26	96
77	Amal	No	35	59	78
78	Ivy	Yes	76	67	31
79	Avram	Yes	24	79	50
80	Jonah	No	35	63	34
81	Vernon	Yes	53	38	79
82	Hall	Yes	15	93	97
83	Keefe	No	78	66	88
84	Olivia	Yes	18	0	89
85	Harriet	Yes	5	31	17
86	Lyle	Yes	54	31	6
87	Kaseem	No	98	41	56
88	Belle	Yes	36	8	82
89	Reese	Yes	17	75	67
90	Uriel	Yes	31	91	34
91	Kelsey	Yes	12	93	45
92	Lee	Yes	94	78	94
93	Ferris	Yes	51	89	99
94	Hayden	No	31	90	77
95	Jelani	Yes	7	79	32
96	Austin	No	16	5	74
97	Irene	No	88	12	42
98	Doris	Yes	1	90	82
99	Hadley	Yes	108	51	93
100	Shaine	No	98	86	78
\.


--
-- Data for Name: tools; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.tools (id, tool_name, energy, health, tool_level) FROM stdin;
1	Lifter	10	93663	3
2	Lifter	5	97706	8
3	Forklift	6	80946	1
4	Reverse	8	60276	6
5	Repulse	2	60141	3
6	Lifter	2	74391	5
7	Lifter	8	29968	6
8	Booster	5	45152	8
9	Lifter	1	59149	5
10	Lifter	9	55841	0
11	Repulse	9	41627	6
12	Repulse	8	49128	1
13	First_aid_kit	3	36384	3
14	Repulse	9	57773	6
15	Harpoon	4	8719	10
16	Reverse	9	42488	7
17	Repulse	8	95026	8
18	Lifter	3	40442	2
19	Repulse	0	27698	7
20	Forklift	2	58476	7
21	First_aid_kit	9	72369	5
22	Lifter	7	51625	9
23	Harpoon	6	13112	4
24	First_aid_kit	10	7559	4
25	Forklift	10	51502	5
26	Harpoon	9	26983	6
27	Booster	3	99354	4
28	Booster	0	42213	1
29	Booster	7	93825	8
30	First_aid_kit	9	96514	3
31	First_aid_kit	1	38699	9
32	Forklift	6	81405	6
33	Harpoon	7	81247	9
34	Repulse	10	39841	5
35	First_aid_kit	6	9842	2
36	Harpoon	7	34758	3
37	Lifter	7	66967	1
38	Harpoon	8	68610	7
39	Reverse	9	74637	9
40	Lifter	3	2686	7
41	Booster	7	48658	1
42	Reverse	1	50413	8
43	Forklift	1	65492	4
44	Forklift	5	58815	2
45	First_aid_kit	5	39139	6
46	Repulse	7	58734	1
47	Forklift	6	60330	7
48	Reverse	4	86093	1
49	Forklift	3	2045	8
50	Harpoon	8	1740	1
51	Lifter	3	71998	2
52	Lifter	6	30677	8
53	Reverse	9	75663	7
54	First_aid_kit	2	30303	10
55	Booster	4	64620	0
56	Harpoon	10	23554	8
57	Forklift	5	67490	0
58	Reverse	9	77873	8
59	Forklift	9	7548	10
60	First_aid_kit	4	67203	6
61	Lifter	2	22621	7
62	Booster	5	78100	6
63	Forklift	1	71142	6
64	Lifter	8	96465	2
65	First_aid_kit	1	92741	2
66	Lifter	6	58880	9
67	Forklift	6	1577	4
68	First_aid_kit	8	54571	0
69	Booster	2	85979	5
70	Lifter	5	1665	6
71	Forklift	6	80019	9
72	Repulse	7	94579	7
73	Reverse	8	54365	2
74	Repulse	4	58717	7
75	Repulse	5	64870	10
76	First_aid_kit	8	61527	8
77	Repulse	2	58786	9
78	Reverse	2	27750	1
79	Reverse	5	61464	8
80	Reverse	3	59488	9
81	Forklift	0	48532	1
82	Booster	6	38543	5
83	Repulse	7	32975	7
84	Reverse	6	11912	4
85	Reverse	2	26299	7
86	Lifter	8	73241	2
87	Booster	2	16745	3
88	Booster	3	27178	4
89	Forklift	5	9549	4
90	Harpoon	9	50718	4
91	Forklift	1	41300	2
92	Booster	5	82087	8
93	Lifter	9	80305	8
94	Harpoon	4	56343	7
95	Reverse	3	37801	6
96	Lifter	2	67191	10
97	Harpoon	3	23527	3
98	Booster	6	96630	5
99	Forklift	5	29031	4
100	Forklift	7	90892	3
\.


--
-- Data for Name: upgrade_kit; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.upgrade_kit (id, upgrade_kit_name_id, power_surplus, upgrade_kit_level) FROM stdin;
1	Health_toolbox	678	9
2	Energy_toolbox	185	0
3	Health_toolbox	800	3
4	Atack_toolbox	221	7
5	Energy_toolbox	543	3
6	Energy_toolbox	608	6
7	Energy_toolbox	851	9
8	Health_toolbox	808	6
9	Atack_toolbox	171	1
10	Health_toolbox	662	5
11	Health_toolbox	951	3
12	Atack_toolbox	279	3
13	Health_toolbox	174	8
14	Atack_toolbox	247	9
15	Energy_toolbox	519	9
16	Energy_toolbox	654	2
17	Energy_toolbox	765	4
18	Energy_toolbox	375	6
19	Atack_toolbox	477	10
20	Energy_toolbox	829	4
21	Energy_toolbox	286	5
22	Energy_toolbox	694	4
23	Health_toolbox	488	0
24	Health_toolbox	784	8
25	Atack_toolbox	953	9
26	Energy_toolbox	88	2
27	Energy_toolbox	810	9
28	Atack_toolbox	848	1
29	Health_toolbox	37	7
30	Atack_toolbox	39	9
31	Health_toolbox	611	3
32	Atack_toolbox	206	4
33	Atack_toolbox	935	2
34	Atack_toolbox	709	0
35	Health_toolbox	223	1
36	Atack_toolbox	199	6
37	Atack_toolbox	766	3
38	Health_toolbox	398	5
39	Health_toolbox	436	6
40	Energy_toolbox	849	9
41	Atack_toolbox	540	3
42	Atack_toolbox	428	0
43	Health_toolbox	376	10
44	Energy_toolbox	591	5
45	Energy_toolbox	818	8
46	Health_toolbox	746	5
47	Energy_toolbox	191	5
48	Atack_toolbox	158	1
49	Atack_toolbox	36	6
50	Health_toolbox	503	8
51	Health_toolbox	819	9
52	Atack_toolbox	537	9
53	Atack_toolbox	730	4
54	Energy_toolbox	576	7
55	Health_toolbox	930	7
56	Health_toolbox	176	3
57	Atack_toolbox	630	7
58	Energy_toolbox	376	4
59	Health_toolbox	675	7
60	Atack_toolbox	850	1
61	Health_toolbox	879	6
62	Health_toolbox	262	8
63	Health_toolbox	792	9
64	Energy_toolbox	354	3
65	Health_toolbox	124	7
66	Health_toolbox	801	5
67	Health_toolbox	717	2
68	Health_toolbox	164	1
69	Health_toolbox	321	6
70	Health_toolbox	927	8
71	Atack_toolbox	823	8
72	Health_toolbox	783	2
73	Atack_toolbox	589	10
74	Atack_toolbox	970	3
75	Atack_toolbox	698	8
76	Health_toolbox	483	5
77	Health_toolbox	904	1
78	Health_toolbox	694	7
79	Atack_toolbox	745	6
80	Atack_toolbox	988	4
81	Energy_toolbox	859	3
82	Health_toolbox	968	3
83	Energy_toolbox	989	1
84	Energy_toolbox	973	5
85	Health_toolbox	698	6
86	Atack_toolbox	186	8
87	Health_toolbox	532	3
88	Health_toolbox	729	9
89	Atack_toolbox	25	4
90	Energy_toolbox	449	4
91	Energy_toolbox	166	9
92	Health_toolbox	793	3
93	Atack_toolbox	940	9
94	Energy_toolbox	367	3
95	Health_toolbox	143	6
96	Health_toolbox	141	10
97	Atack_toolbox	426	2
98	Energy_toolbox	472	6
99	Health_toolbox	307	9
100	Atack_toolbox	131	0
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.users (id, nick_name, email, passwords, user_id, created_at) FROM stdin;
93	Colby	cum.sociis.natoque@outlook.edu	neque.	50	2023-03-13 06:18:12
94	Lewis	enim@protonmail.org	faucibusa	33	2022-09-02 03:45:33
95	Lee	nullam.vitae.diam@icloud.couk	velit.	42	2023-05-03 01:49:08
96	Marvin	turpis.aliquam@outlook.org	dis	99	2022-01-02 06:52:24
97	Ivory	pharetra.quisque.ac@outlook.edu	erat.	77	2023-09-05 18:50:15
98	Hashim	magna.lorem@icloud.net	hendrerit.	8	2023-05-08 20:52:13
99	Stuart	nulla.tincidunt@protonmail.ca	Seds	71	2022-12-08 08:56:06
100	Josiah	turpis.nulla@aol.ca	nibh.	71	2022-04-27 02:10:38
101	Beck	eu.nulla.at@aol.org	seda,	7	2022-10-30 07:25:17
102	Mechelle	non@protonmail.couk	dolorm	7	2022-06-27 18:21:31
217	Orlando	at@icloud.org	lacinia2.	49	2022-04-07 20:23:05
218	Upton	iaculis.lacus@google.org	dictumetw	34	2022-12-16 03:38:14
219	Leonard	purus.ac@hotmail.edu	ridiculus	82	2022-08-08 18:28:08
220	Orlando	arcu.sed@protonmail.couk	etlyu	11	2023-09-09 15:56:19
221	Thaddeus	adipiscing@yahoo.couk	massa7	33	2023-06-15 10:12:37
222	Zorita	vel.arcu@aol.ca	nisi.	35	2023-01-04 20:56:34
223	Yuli	non@hotmail.edu	rhoncus	43	2023-03-15 01:40:49
224	Dillon	ullamcorper.magna@google.ca	euly122,	61	2023-05-25 13:14:46
225	Tamara	nullam.feugiat.placerat@google.com	felisly89	12	2022-02-22 12:33:48
226	Erasmus	venenatis.lacus.etiam@yahoo.ca	eulylk,	48	2023-07-10 22:52:43
227	Ryan	elit.erat@google.com	AeneanD	31	2021-10-21 03:20:53
228	Malcolm	purus.nullam.scelerisque@outlook.org	enimsf.	5	2023-01-18 23:34:37
229	Bernard	molestie.orci@protonmail.com	nullazL.	95	2021-11-25 13:07:53
230	Thomas	iaculis@icloud.net	ac	71	2023-09-05 06:30:56
231	Elijah	donec.consectetuer@google.net	convallisZ	58	2021-12-24 23:56:38
232	Arthur	nisi.a@hotmail.edu	egetTEH,	69	2021-11-30 07:55:20
29	Lucius	non.dui.nec@hotmail.com	ipsum	38	2022-08-16 19:07:50
30	Hiroko	curabitur@protonmail.org	Sed	77	2022-04-17 03:21:54
31	Ray	aliquam.ornare@aol.org	ornare	33	2023-06-19 01:39:32
32	Timothy	semper.pretium@hotmail.couk	Mauris	64	2021-10-27 02:01:36
33	Abraham	sed.congue.elit@icloud.net	faucibus	58	2022-06-13 01:52:42
34	Yardley	eu.tellus@protonmail.org	sed	57	2022-11-17 22:23:16
35	Hadassah	tempus@protonmail.com	ultrices	2	2021-11-25 17:18:24
36	Noah	et.magnis@icloud.com	dolor.	87	2023-05-21 04:05:20
37	Aladdin	curabitur.dictum@icloud.com	sit	38	2021-10-16 20:32:43
38	Lamar	odio@protonmail.ca	enim	35	2023-07-03 08:13:01
39	Lester	aliquam.auctor.velit@yahoo.couk	id,	24	2023-02-04 03:06:47
40	Rama	rutrum.fusce.dolor@hotmail.net	convallis	2	2022-08-12 15:46:48
41	Echo	accumsan@outlook.net	quis	78	2022-11-02 08:41:37
42	May	quis@google.net	rhoncus.	35	2022-04-14 01:21:29
43	Davis	nec@hotmail.com	semper	14	2022-10-27 21:53:16
44	Blaze	aliquam.auctor.velit@yahoo.org	Nam	15	2022-03-21 06:37:02
45	Rylee	adipiscing.lobortis@icloud.ca	dolor	22	2021-11-15 22:13:25
46	Buckminster	at@protonmail.couk	et	53	2023-07-05 15:29:29
47	Basil	ipsum@icloud.org	Nullam	77	2022-03-29 03:49:05
48	Paloma	auctor.nunc@outlook.ca	Class	16	2022-01-18 15:13:17
233	Martin	tristique.ac@aol.org	faucibusH	74	2022-09-10 20:15:35
122	Pandora	ut@hotmail.ca	augue,	48	2023-07-01 13:45:53
123	Kelsey	odio@hotmail.couk	enimas	30	2021-10-22 05:50:41
124	Brooke	enim.sed.nulla@icloud.org	habitant	24	2022-09-17 17:19:13
125	Pamela	natoque.penatibus@outlook.net	pharetra,	89	2021-09-24 08:42:20
126	Ariana	pretium.et.rutrum@hotmail.net	a	14	2021-09-30 22:15:26
127	Leah	aliquam.enim@protonmail.net	Morbi	66	2023-02-22 05:41:18
128	Claudia	nulla.at.sem@hotmail.ca	idd,	22	2022-09-01 23:04:21
57	Ross	massa.lobortis@google.edu	Donec	12	2023-09-03 16:14:22
58	Kasimir	faucibus@aol.net	magna,	98	2022-12-27 12:49:35
59	Grant	enim@google.net	erat	51	2023-07-27 06:48:30
60	Ezra	quam.dignissim@protonmail.ca	ut,	61	2022-12-24 22:09:45
61	Amal	fusce.fermentum.fermentum@protonmail.edu	morbi	82	2022-05-01 05:50:18
62	Malcolm	a.tortor@hotmail.com	esta,	17	2022-12-20 23:59:58
63	Jocelyn	sem@hotmail.ca	nec	92	2023-01-27 13:13:35
64	Stuart	nulla.eget@hotmail.com	est,	42	2023-07-07 11:16:10
65	Ishmael	venenatis.a@hotmail.com	arcu	54	2022-09-22 18:05:01
66	Irma	non.luctus.sit@outlook.couk	enim,	87	2021-10-01 09:08:19
129	Avram	vulputate.nisi.sem@yahoo.couk	dictum	26	2023-01-21 18:41:41
130	Molly	aliquet.odio.etiam@aol.org	urna.	87	2021-10-21 16:45:23
131	Henry	arcu.imperdiet.ullamcorper@yahoo.ca	Donecv	73	2023-02-14 13:24:45
234	Leonard	adipiscing.mauris@aol.net	miRY	26	2023-05-26 06:21:12
133	Quynn	imperdiet.erat@outlook.com	seddd	21	2022-01-12 14:23:13
134	Jackson	ornare.elit@aol.com	Nunc	32	2021-10-12 20:03:45
135	Paki	ut.lacus@google.edu	dui.	86	2022-05-26 03:18:20
136	Diana	tristique.pharetra@outlook.couk	est.	33	2023-04-14 10:43:29
137	Portia	euismod.ac@aol.couk	orci,	97	2023-02-17 05:22:50
138	Aurelia	primis.in@protonmail.net	Pellentesque	59	2023-09-12 22:10:36
139	Bernard	lorem@icloud.org	id	6	2021-12-15 09:06:22
140	Ezekiel	et.libero.proin@yahoo.com	Cum	39	2023-05-17 07:28:19
141	Unity	nonummy.fusce.fermentum@protonmail.ca	nascetur	78	2022-11-30 08:32:07
142	Olivia	imperdiet.ullamcorper@aol.org	Proin	10	2023-04-10 03:58:50
235	Quyn	tempor.bibendum.donec@google.com	felisNRY	47	2022-07-12 22:54:23
236	Amaya	sem.molestie@google.org	lobortis	25	2022-06-22 03:42:23
163	Hu	eu.nulla.at@icloud.ca	libero.	98	2023-06-20 08:52:02
164	Tanner	fermentum.fermentum.arcu@yahoo.com	fringilla	39	2022-03-11 09:54:13
165	Elliott	sit@yahoo.ca	urna.fg	43	2022-12-04 18:03:27
166	Yuli	at.velit.cras@protonmail.org	Aliquam	70	2023-04-20 10:59:27
167	Yeo	morbi@aol.com	elit	63	2022-07-22 03:14:09
168	Cyrus	taciti.sociosqu@yahoo.ca	lacinia	2	2022-02-11 20:35:49
169	Aurelia	est.mollis@hotmail.net	eratsa	23	2022-01-05 20:03:24
170	Jamal	fringilla.est@protonmail.couk	feugiat	45	2022-08-02 10:40:29
171	Medge	magna.praesent.interdum@aol.org	luctus	62	2023-02-15 01:31:18
172	Levi	ac.arcu@google.edu	libeross.	90	2023-02-19 04:56:15
205	Gregory	et.malesuada@google.ca	dolocdr	39	2022-09-21 19:36:48
206	Brandon	augue@google.ca	etdfg	30	2023-02-10 22:25:31
207	Marsden	odio.nam.interdum@protonmail.couk	utiy	69	2022-12-16 18:11:27
208	Elton	aliquam.nec@google.org	velit	37	2022-07-07 09:25:04
209	Bruno	auctor.mauris@google.edu	lectus4,	82	2023-04-28 03:09:08
210	Rhona	egestas.a@protonmail.couk	interdum	17	2023-07-02 02:09:46
211	Simone	ultrices.vivamus@aol.edu	nisl	15	2022-06-05 15:24:05
212	Lars	vitae.nibh@icloud.org	egestas,	59	2022-09-06 09:11:22
213	Chava	quis.pede.praesent@icloud.edu	etk.	92	2022-11-05 01:32:00
214	Lamar	hendrerit@outlook.edu	luctusxdf	70	2023-05-28 00:37:12
\.


--
-- Data for Name: weapon; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.weapon (id, weapon_name, energy, atack, weapon_level) FROM stdin;
1	Shutgun	30	43313	0
2	Lazer	18	36891	2
3	Minigun	5	50465	4
4	Double_rocket	10	44533	1
5	Shutgun	29	43187	3
6	Lazer	22	22873	1
7	Drill	27	31814	7
8	Saw	17	16229	4
9	Minigun	6	49143	8
10	Lazer	6	3231	1
11	Rocket	19	99723	9
12	Lazer	14	21250	8
13	Minigun	16	80957	0
14	Drill	10	91059	7
15	Lazer	30	2563	6
16	Saw	1	70105	6
17	Saw	27	48245	7
18	Minigun	1	65330	10
19	Double_rocket	12	59735	2
20	Lazer	0	54534	1
21	Drill	18	12880	4
22	Blade	7	88042	4
23	Minigun	4	5758	5
24	Shutgun	9	50868	2
25	Shutgun	13	74452	6
26	Rocket	20	85630	3
27	Rocket	16	17208	3
28	Blade	19	49136	0
29	Rocket	24	14943	8
30	Shutgun	17	17307	9
31	Minigun	16	22489	1
32	Drill	20	77264	5
33	Saw	25	10108	9
34	Double_rocket	26	75348	6
35	Saw	24	78117	3
36	Drill	22	3866	7
37	Double_rocket	7	55388	9
38	Double_rocket	25	57111	1
39	Drill	28	53743	0
40	Drill	18	24553	9
41	Blade	4	45206	2
42	Minigun	15	67246	8
43	Drill	12	79560	0
44	Minigun	20	29713	2
45	Saw	8	34452	3
46	Lazer	9	65790	1
47	Blade	24	84089	1
48	Minigun	24	65078	3
49	Lazer	28	91932	5
50	Saw	0	81100	6
51	Saw	8	16522	2
52	Drill	10	3462	7
53	Saw	19	57730	7
54	Blade	0	62598	3
55	Lazer	20	50813	7
56	Saw	1	33950	8
57	Double_rocket	10	39962	8
58	Saw	1	52378	8
59	Minigun	4	45864	6
60	Drill	1	99746	6
61	Rocket	17	64643	2
62	Saw	3	23666	1
63	Lazer	1	65462	8
64	Saw	4	28784	4
65	Shutgun	12	27952	1
66	Double_rocket	7	54449	7
67	Saw	2	40352	5
68	Blade	8	60827	4
69	Saw	19	70491	3
70	Shutgun	1	27941	8
71	Double_rocket	15	69114	8
72	Minigun	8	19298	2
73	Drill	28	47067	7
74	Minigun	14	99592	6
75	Double_rocket	14	7171	6
76	Drill	6	23356	9
77	Saw	10	35659	5
78	Lazer	16	76139	3
79	Double_rocket	10	30033	7
80	Saw	27	74487	0
81	Shutgun	16	37978	8
82	Double_rocket	8	96726	2
83	Double_rocket	4	41358	2
84	Drill	28	50150	1
85	Minigun	24	46822	10
86	Minigun	25	24918	2
87	Shutgun	8	65435	2
88	Double_rocket	28	68895	10
89	Double_rocket	11	16777	6
90	Double_rocket	23	18551	5
91	Double_rocket	26	80882	2
92	Rocket	22	93408	3
93	Double_rocket	10	29063	10
94	Double_rocket	16	95052	6
95	Shutgun	6	59857	4
96	Rocket	4	65219	7
97	Lazer	30	71072	7
98	Double_rocket	20	3136	6
99	Shutgun	28	2683	9
100	Rocket	20	87327	10
\.


--
-- Data for Name: wheels; Type: TABLE DATA; Schema: public; Owner: robot
--

COPY public.wheels (id, wheel_name, energy, health, wheel_level) FROM stdin;
1	Sticky_roller	10	39714	6
2	Sticky_roller	9	67175	3
3	Tyre	4	28664	2
4	Tyre	3	25631	8
5	Knob	9	98314	8
6	Roller	8	62813	6
7	Roller	3	42059	3
8	Tyre	1	45552	0
9	Scuter	2	65717	9
10	Sticky_roller	1	42717	7
11	Sticky_roller	7	17396	9
12	Tyre	10	49906	9
13	Bigfoot	1	90445	6
14	Sticky_tyre	2	99016	1
15	Sticky_roller	3	89611	9
16	Sticky_tyre	9	87521	10
17	Bigfoot	8	28671	3
18	Scuter	1	95785	1
19	Sticky_roller	9	14269	2
20	Scuter	3	29810	9
21	Scuter	7	71242	9
22	Bigfoot	2	14883	9
23	Bigfoot	4	68771	3
24	Sticky_roller	10	73767	4
25	Sticky_roller	10	45916	4
26	Scuter	2	62055	3
27	Knob	1	62221	10
28	Tyre	5	62214	5
29	Sticky_roller	4	25720	4
30	Bigfoot	7	79280	5
31	Bigfoot	10	68788	5
32	Knob	5	4373	6
33	Tyre	4	63099	4
34	Bigfoot	10	97129	5
35	Tyre	7	61324	10
36	Sticky_tyre	4	99040	2
37	Sticky_roller	3	84628	4
38	Tyre	6	51794	8
39	Roller	2	68635	7
40	Roller	5	49731	4
41	Tyre	2	29052	8
42	Roller	0	49048	9
43	Tyre	6	13563	7
44	Sticky_tyre	5	8617	5
45	Bigfoot	6	98994	9
46	Sticky_roller	6	7676	4
47	Bigfoot	8	46336	4
48	Tyre	6	29752	7
49	Sticky_tyre	8	38627	0
50	Sticky_roller	5	22359	4
51	Scuter	10	42023	8
52	Roller	2	46014	0
53	Sticky_roller	9	2463	3
54	Roller	1	52312	8
55	Tyre	4	92332	5
56	Bigfoot	9	66248	2
57	Knob	6	65059	4
58	Bigfoot	6	5703	8
59	Knob	3	4558	3
60	Bigfoot	6	78169	3
61	Scuter	2	33611	7
62	Sticky_tyre	3	86172	6
63	Bigfoot	6	54722	2
64	Bigfoot	7	10130	8
65	Tyre	8	19554	5
66	Sticky_roller	4	95018	0
67	Scuter	5	98950	1
68	Roller	1	48329	2
69	Sticky_roller	2	99867	7
70	Knob	1	90889	1
71	Roller	3	40143	5
72	Roller	7	61934	3
73	Sticky_roller	1	64333	7
74	Bigfoot	3	14899	7
75	Tyre	0	3761	8
76	Sticky_tyre	3	87450	8
77	Tyre	3	40116	8
78	Knob	3	25171	4
79	Knob	1	67813	3
80	Bigfoot	7	9011	2
81	Sticky_tyre	9	93770	3
82	Sticky_roller	4	64488	1
83	Roller	9	98433	5
84	Knob	2	57629	4
85	Sticky_roller	9	41737	7
86	Knob	1	39713	5
87	Sticky_tyre	4	95361	10
88	Sticky_roller	9	74099	5
89	Tyre	7	50763	1
90	Scuter	2	59838	8
91	Sticky_roller	3	40598	4
92	Scuter	0	98509	8
93	Bigfoot	6	10972	5
94	Roller	8	88142	1
95	Sticky_tyre	6	25355	5
96	Knob	10	19776	7
97	Tyre	1	48914	4
98	Tyre	6	29076	3
99	Roller	5	12313	4
100	Tyre	7	38095	8
\.


--
-- Name: body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.body_id_seq', 100, true);


--
-- Name: car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.car_id_seq', 100, true);


--
-- Name: championship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.championship_id_seq', 100, true);


--
-- Name: championship_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.championship_statuses_id_seq', 100, true);


--
-- Name: co_pilot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.co_pilot_id_seq', 100, true);


--
-- Name: pilot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.pilot_id_seq', 100, true);


--
-- Name: tools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.tools_id_seq', 100, true);


--
-- Name: upgrade_kit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.upgrade_kit_id_seq', 100, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.users_id_seq', 236, true);


--
-- Name: weapon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.weapon_id_seq', 100, true);


--
-- Name: wheels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: robot
--

SELECT pg_catalog.setval('public.wheels_id_seq', 100, true);


--
-- Name: body body_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (id);


--
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);


--
-- Name: championship championship_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.championship
    ADD CONSTRAINT championship_pkey PRIMARY KEY (id);


--
-- Name: championship_statuses championship_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.championship_statuses
    ADD CONSTRAINT championship_statuses_pkey PRIMARY KEY (id);


--
-- Name: co_pilot co_pilot_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.co_pilot
    ADD CONSTRAINT co_pilot_pkey PRIMARY KEY (id);


--
-- Name: pilot pilot_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.pilot
    ADD CONSTRAINT pilot_pkey PRIMARY KEY (id);


--
-- Name: tools tools_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_pkey PRIMARY KEY (id);


--
-- Name: upgrade_kit upgrade_kit_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.upgrade_kit
    ADD CONSTRAINT upgrade_kit_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_passwords_key; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_passwords_key UNIQUE (passwords);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: weapon weapon_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.weapon
    ADD CONSTRAINT weapon_pkey PRIMARY KEY (id);


--
-- Name: wheels wheels_pkey; Type: CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.wheels
    ADD CONSTRAINT wheels_pkey PRIMARY KEY (id);


--
-- Name: car car_body_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_body_id_fk FOREIGN KEY (body_id) REFERENCES public.body(id) ON DELETE CASCADE;


--
-- Name: car car_tool_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_tool_id_fk FOREIGN KEY (tool_id) REFERENCES public.tools(id) ON DELETE CASCADE;


--
-- Name: car car_upgrade_kit_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_upgrade_kit_id_fk FOREIGN KEY (upgrade_kit_id) REFERENCES public.upgrade_kit(id) ON DELETE CASCADE;


--
-- Name: car car_weapon_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_weapon_id_fk FOREIGN KEY (weapon_id) REFERENCES public.weapon(id) ON DELETE CASCADE;


--
-- Name: car car_wheels_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_wheels_id_fk FOREIGN KEY (wheels_id) REFERENCES public.wheels(id) ON DELETE CASCADE;


--
-- Name: co_pilot co_pilot_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.co_pilot
    ADD CONSTRAINT co_pilot_id_fk FOREIGN KEY (id) REFERENCES public.car(id) ON DELETE CASCADE;


--
-- Name: pilot pilot_championship_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.pilot
    ADD CONSTRAINT pilot_championship_id_fk FOREIGN KEY (id) REFERENCES public.championship(id) ON DELETE CASCADE;


--
-- Name: pilot pilot_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.pilot
    ADD CONSTRAINT pilot_id_fk FOREIGN KEY (id) REFERENCES public.car(id) ON DELETE CASCADE;


--
-- Name: pilot pilot_status_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: robot
--

ALTER TABLE ONLY public.pilot
    ADD CONSTRAINT pilot_status_id_fk FOREIGN KEY (id) REFERENCES public.championship_statuses(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

