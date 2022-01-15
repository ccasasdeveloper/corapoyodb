--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Ubuntu 14.1-1.pgdg18.04+1)
-- Dumped by pg_dump version 14.1 (Ubuntu 14.1-1.pgdg18.04+1)

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: partner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partner (
    id integer NOT NULL,
    name character varying(50),
    last_name character varying(50),
    email character varying(250) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50),
    role_id integer,
    phone character varying
);


ALTER TABLE public.partner OWNER TO postgres;

--
-- Name: partner_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_id_seq OWNER TO postgres;

--
-- Name: partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partner_id_seq OWNED BY public.partner.id;


--
-- Name: place; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.place (
    id integer NOT NULL,
    name character varying(50),
    partner_id integer,
    product_id integer,
    product_two_id integer,
    product_three_id integer,
    latitude character varying,
    longitude character varying,
    store_id integer,
    geolocation json
);


ALTER TABLE public.place OWNER TO postgres;

--
-- Name: place_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_id_seq OWNER TO postgres;

--
-- Name: place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.place_id_seq OWNED BY public.place.id;


--
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id integer NOT NULL,
    post character varying(50),
    place_id integer,
    product_id integer,
    price double precision,
    date_added character varying,
    cut_date_added character varying,
    udm_name character varying,
    product_qualification_name character varying,
    product_name character varying,
    place_name character varying,
    place_latitude character varying,
    place_longitude character varying,
    udm_id integer,
    product_qualification_id integer
);


ALTER TABLE public.post OWNER TO postgres;

--
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_id_seq OWNER TO postgres;

--
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50),
    price double precision
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: product_qualification_offer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_qualification_offer (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    qualification integer
);


ALTER TABLE public.product_qualification_offer OWNER TO postgres;

--
-- Name: product_qualification_offer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_qualification_offer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_qualification_offer_id_seq OWNER TO postgres;

--
-- Name: product_qualification_offer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_qualification_offer_id_seq OWNED BY public.product_qualification_offer.id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO postgres;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: square; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.square (
    id integer NOT NULL,
    name character varying(50),
    code character varying(50)
);


ALTER TABLE public.square OWNER TO postgres;

--
-- Name: square_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.square_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.square_id_seq OWNER TO postgres;

--
-- Name: square_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.square_id_seq OWNED BY public.square.id;


--
-- Name: store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store (
    id integer NOT NULL,
    number integer,
    code character varying(50),
    square_id integer
);


ALTER TABLE public.store OWNER TO postgres;

--
-- Name: store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_id_seq OWNER TO postgres;

--
-- Name: store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.store_id_seq OWNED BY public.store.id;


--
-- Name: udm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.udm (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.udm OWNER TO postgres;

--
-- Name: udm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.udm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.udm_id_seq OWNER TO postgres;

--
-- Name: udm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.udm_id_seq OWNED BY public.udm.id;


--
-- Name: partner id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner ALTER COLUMN id SET DEFAULT nextval('public.partner_id_seq'::regclass);


--
-- Name: place id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place ALTER COLUMN id SET DEFAULT nextval('public.place_id_seq'::regclass);


--
-- Name: post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: product_qualification_offer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_qualification_offer ALTER COLUMN id SET DEFAULT nextval('public.product_qualification_offer_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: square id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.square ALTER COLUMN id SET DEFAULT nextval('public.square_id_seq'::regclass);


--
-- Name: store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store ALTER COLUMN id SET DEFAULT nextval('public.store_id_seq'::regclass);


--
-- Name: udm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.udm ALTER COLUMN id SET DEFAULT nextval('public.udm_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
9f5c36f83c8d
\.


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partner (id, name, last_name, email, username, password, role_id, phone) FROM stdin;
18	Test Name	Test Last Name	algo@algo.com	testtest	123456	19	3007000000
19	Elisa	Buitrago	anelbu83@gmail.com	eliza001	123456	20	3125018571
20	Luz	Saenz	lucita70961@gmail.com	luz002	123456	20	3142377828
21	MAIRA	Casas	maicasas0789@gmail.com	Maicasas 	124456	20	3178903800 
22	Sneider	Moreno	Sneiderm12@gmail.com	Sneider22037		20	3212480345
23	John	Cruz	juancho792	john10224	123456	20	3103427911
24	Jairo	Pardo	Jairopardo@gmail.com	Jairo22034	123466	20	3124013797
25	Omar	Castro 	Javierkstro07@gmail.com		omar2	18	
32	Fabián 	Briceño	Faniansteven0415@gmail.com	Fabián240102	123456	20	3208108915
33	Milton	Torres	miltontd05@hotmail.com	miltontd05@hotmail.com	123456	20	3222286754
\.


--
-- Data for Name: place; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.place (id, name, partner_id, product_id, product_two_id, product_three_id, latitude, longitude, store_id, geolocation) FROM stdin;
22	037	20	15	12	15	4.6316869	-74.1611616	7	\N
23	034	20	16	16	16	4.631669	-74.1611303	6	\N
24	102 Zanahorias cruz SAS	20	13	12	12	4.631083	-74.1614638	4	\N
25	100	20	13	12	12	4.6311052	-74.1614867	4	\N
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (id, post, place_id, product_id, price, date_added, cut_date_added, udm_name, product_qualification_name, product_name, place_name, place_latitude, place_longitude, udm_id, product_qualification_id) FROM stdin;
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, code, price) FROM stdin;
12	Porducto_test	NT001	1000
13	Zanahoria	ZV00001	2000
14	Zanahoria	ZV00001	2000
15	Cebolla	CV0002	50
16	Tomate 	TV0002	35000
17	Zanahoria 	ZV0001	100000
18	Zanahoria 	ZV0001	100000
19	Zanahoria 	ZV0001	100000
20	Acelga 	AV00001	140741634
21	Ahuyama	AV00002	0
22	Ahuyamín	AV00003	0
23	Ají topito dulce	AV00004	0
24	Ajo	AV00005	0
25	Ajo importado	AV00006	0
26	Apio	AV00007	0
27	Arveja verde en vaina	AV00008	0
28	Arveja verde en vaina pastusa	AV00009	0
29	Aguacate común	AF00010	0
30	Aguacate Hass	AF00011	0
31	Aguacate papelillo	AF00012	0
32	Berenjena	BV00013	0
33	Brócoli	BV00014	0
34	Badea	BF00015	0
35	Banano bocadillo	BF00016	0
36	Banano criollo	BF00017	0
37	Banano urabá	BF00018	0
38	Boroj	BF00018	0
39	Borojó	BF00019	0
40	Breva	BF00020	0
41	Calabacín 	CV00021	0
42	Calabaza	CV00022	0
43	Cebolla cabezona blanca	CV00023	0
44	Cebolla cabezona blanca bogotana	CV00024	0
45	Cebolla cabezona blanca importada	CV00025	0
46	Cebolla cabezona blanca pastusa	CV00026	0
47	Cebolla cabezona roja	CV00027	0
48	Cebolla cabezona roja importada	CV00028	0
49	Cebolla cabezona roja peruana	CV00029	0
50	Cebolla junca	CV00030	0
51	Cebolla junca Aquitania	CV00031	0
52	Cebolla junca Berlín	CV00032	0
53	Cebolla junca pastusa	CV00033	0
54	Cebolla junca Tenerife	CV00034	0
55	Cebolla puerro	CV00035	0
56	Cebollín chino	CV00036	0
57	Chócolo mazorca	CV00037	0
58	Cidra	CV00038	0
59	Cilantro	CV00039	0
60	Coles	CV00040	0
61	Coliflor	CV00041	0
62	Ciruela importada	CF00042	0
63	Ciruela roja	CF00043	0
64	Coco	CF00044	0
65	Curuba	CF00045	0
66	Durazno importado	DF00046	0
67	Durazno nacional	DF00047	0
68	Espinaca	EV00048	0
69	Fríjol verde bolo	FV00049	0
70	Fríjol verde cargamanto	FV00050	0
71	Fríjol verde en vaina	FV00051	0
72	Feijoa	FF00052	0
73	Fresa	FF00053	0
74	Granadilla	GF00054	0
75	Guanábana	GF00055	0
76	Guayaba agria	GF00056	0
77	Guayaba Atlántico	GF00057	0
78	Guayaba común	GF00058	0
79	Guayaba manzana	GF00059	0
80	Guayaba pera	GF00060	0
81	Guayaba pera valluna	GF00061	0
82	Gulupa	GF00062	0
83	Haba verde	HV00063	0
84	Habichuela	HV00064	0
85	Habichuela larga	HV00065	0
86	Higo	HF00066	0
87	Kiwi	KF00067	0
88	Limón común	LF00068	0
89	Limón común ciénaga	LF00069	0
90	Limón común valluno	LF00070	0
91	Limón mandarino	LF00071	0
92	Limón Tahití	LF00072	0
93	Lulo 	LF00073	0
94	Lechuga Batavia	LV00074	0
95	Lechuga crespa verde	LV00075	0
96	Mandarina Arrayana	MF00076	0
97	Mandarina común	MF00077	0
98	Mandarina Oneco	MF00078	0
99	Mango común	MF00079	0
100	Mango de azúcar	MF00080	0
101	Mango manzano	MF00081	0
102	Mango reina	MF00082	0
103	Mango Tommy	MF00083	0
104	Mango Yulima	MF00084	0
105	Manzana nacional	MF00085	0
106	Manzana roja importada	MF00086	0
107	Manzana royal gala importada	MF00087	0
108	Manzana verde importada	MF00088	0
109	Maracuyá	MF00089	0
110	Maracuyá antioqueño	MF00090	0
111	Maracuyá huilense	MF00091	0
112	Maracuyá santandereano	MF00092	0
113	Maracuyá valluno	MF00093	0
114	Melón Cantalup	MF00094	0
115	Mora de Castilla	MF00095	0
116	Naranja común 	NF00096	0
117	Naranja Sweet	NF00097	0
118	Naranja Valencia	NF00098	0
119	Pepino cohombro	PV00099	0
120	Pepino de rellenar	PV00100	0
121	Perejil	PV00101	0
122	Pimentón	PV00102	0
123	Pimentón verde	PV00103	0
124	Papaya hawaiana	PF00104	0
125	Papaya Maradol	PF00105	0
126	Papaya melona	PF00106	0
127	Papaya redonda	PF00107	0
128	Papaya tainung	PF00108	0
129	Patilla	PF00109	0
130	Patilla baby	PF00110	0
131	Pera	PF00111	0
132	Pera importada	PF00112	0
133	Piña gold	PF00113	0
136	Piña perolera	PF00115	0
138	Rábano rojo	RV00117	0
139	Remolacha	RV00118	0
141	Remolacha regional	RV00120	0
142	Repollo blanco	RV00121	0
146	Tomate chonto	TV00125	0
149	Tomate riñón	TV00128	0
153	Tangelo	TF00132	0
155	Uchuva con cáscara 	UF00134	0
157	Uva Isabela	UF00136	0
159	Uva roja	UF00138	0
161	Zanahoria	ZV00140	0
164	Zapote	ZF00143	0
134	Piña manzana	PF00114	0
140	Remolacha bogotana	RV00119	0
144	Repollo morado	RV00123	0
147	Tomate chonto regional	TV00126	0
162	Zanahoria bogotana	ZV00141	0
135	Piña perolena	PF00115	0
137	Pitahaya	PF00116	0
148	Tomate larga vida	TV00127	0
150	Tomate riñón valluno	TV00129	0
152	Tomate Riogrande bumangués	TV00131	0
154	Tomate de árbol	TF00133	0
156	Uva importada	UF00135	0
158	Uva red globe nacional	UF00137	0
143	Repollo blanco bogotano	RV00122	0
145	Repollo verde	RV00124	0
151	Tomate Riogrande	TV00130	0
160	Uva verde	UF00139	0
163	Zanahoria larga vida	ZV00142	0
\.


--
-- Data for Name: product_qualification_offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_qualification_offer (id, name, qualification) FROM stdin;
1	Extra	\N
2	Fino	\N
3	Cero	\N
4	Regular	\N
5	Primera	\N
6	Segunda	\N
7	Tercera	\N
8	Parejo	\N
9	Grueso	\N
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id, name, code) FROM stdin;
18	Superadministrador	SUPERADMIN
19	Administrador	ADMIN
20	Vendedor	VEN
21	Comprador	COMP
\.


--
-- Data for Name: square; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.square (id, name, code) FROM stdin;
10	Corabastos	PBBC001
11	Bodega 24	BCBBC00024
\.


--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store (id, number, code, square_id) FROM stdin;
4	0	BCBBC000001	10
5	24	BCBBC000001	10
6	22	BBBC00001	10
7	22	BBBC00022	10
8	22	BBBC00022	10
9	1	BBBC0001	10
10	2	BBBC0002	10
11	3	BBBC0003	10
12	4	BBBC0004	10
13	5	BBBC0005	10
14	6	BBBC0006	10
15	7	BBBC0007	10
16	8	BBBC0008	10
17	9	BBBC0009	10
18	10	BBBC0010	10
19	11	BBBC0011	10
20	12	BBBC0012	10
21	13	BBBC0013	10
22	14	BBBC0014	10
23	15	BBBC0015	10
24	16	BBBC0016	10
25	17	BBBC0017	10
26	18	BBBC0018	10
27	19	BBBC0019	10
28	20	BBBC0020	10
29	21	BBBC0021	10
30	22	BBBC0022	10
31	23	BBBC0023	10
32	24	BBBC0024	10
33	25	BBBC0025	10
34	26	BBBC0026	10
35	27	BBBC0027	10
36	28	BBBC0028	10
37	29	BBBC0029	10
38	30	BBBC0030	10
39	31	BBBC0031	10
40	32	BBBC0032	10
41	33	BBBC0033	10
42	34	BBBC0034	10
43	35	BBBC0035	10
44	36	BBBC0036	10
45	37	BBBC0037	10
46	38	BBBC0038	10
47	39	BBBC0039	10
48	40	BBBC0040	10
49	41	BBBC0041	10
50	42	BBBC0042	10
51	43	BBBC0043	10
52	44	BBBC0044	10
53	45	BBBC0045	10
54	46	BBBC0046	10
55	47	BBBC0047	10
56	48	BBBC0048	10
57	49	BBBC0049	10
58	50	BBBC0050	10
59	51	BBBC0051	10
60	52	BBBC0052	10
61	53	BBBC0053	10
62	54	BBBC0054	10
63	55	BBBC0055	10
64	56	BBBC0056	10
65	57	BBBC0057	10
66	58	BBBC0058	10
67	59	BBBC0059	10
68	61	BBBC0061	10
69	60	BBBC060	10
70	61	BBBC061	10
71	61	BBBC061	10
72	62	BBBC062	10
73	63	BBBC063	10
74	64	BBBC064	10
75	65	BBBC065	10
76	66	BBBC066	10
77	67	BBBC067	10
78	68	BBBC068	10
79	69	BBBC069	10
80	70	BBBC070	10
\.


--
-- Data for Name: udm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.udm (id, name) FROM stdin;
1	Bulto
2	Kilo
3	Rueda
4	Caja
5	Canastilla
6	Arroba
7	Pony
\.


--
-- Name: partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partner_id_seq', 33, true);


--
-- Name: place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.place_id_seq', 25, true);


--
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_id_seq', 1, false);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 164, true);


--
-- Name: product_qualification_offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_qualification_offer_id_seq', 9, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_seq', 21, true);


--
-- Name: square_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.square_id_seq', 11, true);


--
-- Name: store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_id_seq', 80, true);


--
-- Name: udm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.udm_id_seq', 7, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: partner partner_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_email_key UNIQUE (email);


--
-- Name: partner partner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (id);


--
-- Name: partner partner_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_username_key UNIQUE (username);


--
-- Name: place place_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_pkey PRIMARY KEY (id);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: product_qualification_offer product_qualification_offer_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_qualification_offer
    ADD CONSTRAINT product_qualification_offer_name_key UNIQUE (name);


--
-- Name: product_qualification_offer product_qualification_offer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_qualification_offer
    ADD CONSTRAINT product_qualification_offer_pkey PRIMARY KEY (id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: square square_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.square
    ADD CONSTRAINT square_pkey PRIMARY KEY (id);


--
-- Name: store store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (id);


--
-- Name: udm udm_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.udm
    ADD CONSTRAINT udm_name_key UNIQUE (name);


--
-- Name: udm udm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.udm
    ADD CONSTRAINT udm_pkey PRIMARY KEY (id);


--
-- Name: store fk_square; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT fk_square FOREIGN KEY (square_id) REFERENCES public.square(id);


--
-- Name: place fk_store; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES public.store(id);


--
-- Name: partner partner_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partner
    ADD CONSTRAINT partner_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: place place_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.partner(id);


--
-- Name: place place_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- Name: place place_product_three_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_three_id_fkey FOREIGN KEY (product_three_id) REFERENCES public.product(id);


--
-- Name: place place_product_two_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.place
    ADD CONSTRAINT place_product_two_id_fkey FOREIGN KEY (product_two_id) REFERENCES public.product(id);


--
-- Name: post post_place_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.place(id);


--
-- Name: post post_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- Name: post post_product_qualification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_product_qualification_id_fkey FOREIGN KEY (product_qualification_id) REFERENCES public.product_qualification_offer(id);


--
-- Name: post post_udm_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_udm_id_fkey FOREIGN KEY (udm_id) REFERENCES public.udm(id);


--
-- PostgreSQL database dump complete
--

