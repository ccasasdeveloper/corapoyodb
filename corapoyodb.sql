--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)

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
    udm_id integer,
    product_qualification_id integer,
    udm_name character varying,
    product_qualification_name character varying,
    product_name character varying,
    place_name character varying,
    place_latitude character varying,
    place_longitude character varying
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
    code character varying(50),
    udm_name character varying
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
15	abcname	abclastname	kfjapiu@algo.com	partner1111		16	\N
17	gasdfgsdf	vsggag	algoalgo.com	partner111111	dvbgbsdfg	16	3169999999
18	lksgfnñ	gkñjhñsjh	djhañdfj@algo.com	djhañdfj@algo.com	123456	16	123456
19	partner_ven	vendedor	partnervendedor@algo.com	partner_vendedor	123456	21	123456
\.


--
-- Data for Name: place; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.place (id, name, partner_id, product_id, product_two_id, product_three_id, latitude, longitude, store_id, geolocation) FROM stdin;
13	hgzd	17	11	11	11	4.67	-74.12	1	"{\\"ip\\": \\"186.102.4.77\\", \\"localityLanguageRequested\\": \\"en\\", \\"isReachableGlobally\\": true, \\"country\\": {\\"isoAlpha2\\": \\"CO\\", \\"isoAlpha3\\": \\"COL\\", \\"m49Code\\": 170, \\"name\\": \\"Colombia\\", \\"isoName\\": \\"Colombia\\", \\"isoNameFull\\": \\"the Republic of Colombia\\", \\"isoAdminLanguages\\": [{\\"isoAlpha3\\": \\"spa\\", \\"isoAlpha2\\": \\"es\\", \\"isoName\\": \\"Spanish; Castilian\\", \\"nativeName\\": \\"espa\\\\u00f1ol\\"}], \\"unRegion\\": \\"Latin America and the Caribbean/South America\\", \\"currency\\": {\\"numericCode\\": 170, \\"code\\": \\"COP\\", \\"name\\": \\"Colombian Peso\\", \\"minorUnits\\": 2}, \\"wbRegion\\": {\\"id\\": \\"LCN\\", \\"iso2Code\\": \\"ZJ\\", \\"value\\": \\"Latin America & Caribbean\\"}, \\"wbIncomeLevel\\": {\\"id\\": \\"UMC\\", \\"iso2Code\\": \\"XT\\", \\"value\\": \\"Upper middle income\\"}, \\"callingCode\\": \\"57\\", \\"countryFlagEmoji\\": \\"\\\\ud83c\\\\udde8\\\\ud83c\\\\uddf4\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110, \\"continents\\": [{\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\"}]}, \\"location\\": {\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\", \\"isoPrincipalSubdivision\\": \\"Bogot\\\\u00e1 Distrito Capital\\", \\"isoPrincipalSubdivisionCode\\": \\"\\", \\"city\\": \\"Bogot\\\\u00e1\\", \\"localityName\\": \\"UPZ Modelia\\", \\"postcode\\": \\"110931\\", \\"latitude\\": 4.67, \\"longitude\\": -74.12, \\"plusCode\\": \\"67P7MVCH+2X\\", \\"timeZone\\": {\\"ianaTimeId\\": \\"America/Bogota\\", \\"displayName\\": \\"(UTC-05:00) Colombia Standard Time\\", \\"effectiveTimeZoneFull\\": \\"Colombia Standard Time\\", \\"effectiveTimeZoneShort\\": \\"-05\\", \\"utcOffsetSeconds\\": -18000, \\"utcOffset\\": \\"-05\\", \\"isDaylightSavingTime\\": false, \\"localTime\\": \\"2021-11-09T17:10:09.6819029\\"}, \\"localityInfo\\": {\\"administrative\\": [{\\"order\\": 3, \\"adminLevel\\": 2, \\"name\\": \\"Colombia\\", \\"description\\": \\"country in South America\\", \\"isoName\\": \\"Colombia\\", \\"isoCode\\": \\"CO\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110}, {\\"order\\": 5, \\"adminLevel\\": 3, \\"name\\": \\"Andean Region\\", \\"description\\": \\"Mountainous region of central Colombia\\", \\"wikidataId\\": \\"Q130359\\"}, {\\"order\\": 6, \\"adminLevel\\": 4, \\"name\\": \\"Bogot\\\\u00e1 Distrito Capital\\"}, {\\"order\\": 7, \\"adminLevel\\": 6, \\"name\\": \\"Bogot\\\\u00e1\\", \\"description\\": \\"capital city of Colombia\\", \\"isoName\\": \\"Distrito Capital de Bogot\\\\u00e1\\", \\"isoCode\\": \\"CO-DC\\", \\"wikidataId\\": \\"Q2841\\", \\"geonameId\\": 3688689}, {\\"order\\": 8, \\"adminLevel\\": 7, \\"name\\": \\"Bogot\\\\u00e1\\"}, {\\"order\\": 9, \\"adminLevel\\": 8, \\"name\\": \\"Fontib\\\\u00f3n\\", \\"description\\": \\"locality and former municipality located at the western side of Bogot\\\\u00e1, the capital of Colombia\\", \\"wikidataId\\": \\"Q2647991\\", \\"geonameId\\": 3682371}, {\\"order\\": 11, \\"adminLevel\\": 9, \\"name\\": \\"UPZ Modelia\\"}], \\"informative\\": [{\\"order\\": 1, \\"name\\": \\"South America\\", \\"description\\": \\"continent, mainly on the Earth's southwestern quadrant\\", \\"isoCode\\": \\"SA\\", \\"wikidataId\\": \\"Q18\\", \\"geonameId\\": 6255150}, {\\"order\\": 2, \\"name\\": \\"Andes\\", \\"description\\": \\"mountain range running along the western side of South America\\", \\"wikidataId\\": \\"Q5456\\"}, {\\"order\\": 4, \\"name\\": \\"Cordillera Oriental\\", \\"description\\": \\"mountain range in the Peruvian Andes\\", \\"wikidataId\\": \\"Q4794486\\", \\"geonameId\\": 3933971}, {\\"order\\": 10, \\"name\\": \\"110931\\", \\"description\\": \\"postal code\\"}]}}, \\"lastUpdated\\": \\"2021-11-09T06:16:31.2166337Z\\", \\"network\\": {\\"registry\\": \\"LACNIC\\", \\"registryStatus\\": \\"assigned\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"isReachableGlobally\\": true, \\"isBogon\\": false, \\"bgpPrefix\\": \\"186.102.0.0/17\\", \\"bgpPrefixNetworkAddress\\": \\"186.102.0.0\\", \\"bgpPrefixLastAddress\\": \\"186.102.127.255\\", \\"totalAddresses\\": 32768, \\"carriers\\": [{\\"asn\\": \\"AS3816\\", \\"asnNumeric\\": 3816, \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"name\\": \\"\\", \\"registry\\": \\"LACNIC\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"registrationDate\\": \\"1994-09-09\\", \\"registrationLastChange\\": \\"2021-07-07\\", \\"totalIpv4Addresses\\": 2663680, \\"totalIpv4Prefixes\\": 1009, \\"totalIpv4BogonPrefixes\\": 0, \\"rank\\": 173, \\"rankText\\": \\"#173 out of 73,381\\"}], \\"viaCarriers\\": [{\\"asn\\": \\"AS12956\\", \\"asnNumeric\\": 12956, \\"organisation\\": \\"TELEFONICA GLOBAL SOLUTIONS SL\\", \\"name\\": \\"Telefonica\\", \\"registry\\": \\"RIPE\\", \\"registeredCountry\\": \\"ES\\", \\"registeredCountryName\\": \\"Spain\\", \\"totalIpv4Addresses\\": 145664, \\"rank\\": 1405, \\"rankText\\": \\"#1,405 out of 73,381\\"}]}, \\"confidence\\": \\"high\\", \\"confidenceArea\\": [{\\"latitude\\": 1.7852032, \\"longitude\\": -79.020195}, {\\"latitude\\": 1.8394743, \\"longitude\\": -79.01968}, {\\"latitude\\": 1.8923564, \\"longitude\\": -79.0074}, {\\"latitude\\": 7.9623566, \\"longitude\\": -76.8774}, {\\"latitude\\": 7.970113, \\"longitude\\": -76.874535}, {\\"latitude\\": 10.260113, \\"longitude\\": -75.984535}, {\\"latitude\\": 10.318531, \\"longitude\\": -75.95225}, {\\"latitude\\": 10.668531, \\"longitude\\": -75.692245}, {\\"latitude\\": 10.700164, \\"longitude\\": -75.664314}, {\\"latitude\\": 10.920163, \\"longitude\\": -75.43432}, {\\"latitude\\": 10.931604, \\"longitude\\": -75.42151}, {\\"latitude\\": 11.181604, \\"longitude\\": -75.121506}, {\\"latitude\\": 11.19764, \\"longitude\\": -75.10003}, {\\"latitude\\": 11.217641, \\"longitude\\": -75.07003}, {\\"latitude\\": 11.245716, \\"longitude\\": -75.01377}, {\\"latitude\\": 11.505716, \\"longitude\\": -74.27377}, {\\"latitude\\": 11.513614, \\"longitude\\": -74.246475}, {\\"latitude\\": 11.953613, \\"longitude\\": -72.32647}, {\\"latitude\\": 11.96, \\"longitude\\": -72.27}, {\\"latitude\\": 11.96, \\"longitude\\": -72.26}, {\\"latitude\\": 11.954231, \\"longitude\\": -72.2063}, {\\"latitude\\": 11.93719, \\"longitude\\": -72.155075}, {\\"latitude\\": 11.909663, \\"longitude\\": -72.10869}, {\\"latitude\\": 11.872922, \\"longitude\\": -72.06929}, {\\"latitude\\": 6.352922, \\"longitude\\": -67.299286}, {\\"latitude\\": 6.316891, \\"longitude\\": -67.27335}, {\\"latitude\\": 6.276875, \\"longitude\\": -67.254234}, {\\"latitude\\": 6.2341304, \\"longitude\\": -67.24251}, {\\"latitude\\": 6.19, \\"longitude\\": -67.23856}, {\\"latitude\\": 6.18, \\"longitude\\": -67.23856}, {\\"latitude\\": 6.1340203, \\"longitude\\": -67.24285}, {\\"latitude\\": 6.0896096, \\"longitude\\": -67.25557}, {\\"latitude\\": 6.0482826, \\"longitude\\": -67.27629}, {\\"latitude\\": 6.0114493, \\"longitude\\": -67.3043}, {\\"latitude\\": 5.9803667, \\"longitude\\": -67.338646}, {\\"latitude\\": 2.1203666, \\"longitude\\": -72.48865}, {\\"latitude\\": 2.0983126, \\"longitude\\": -72.52377}, {\\"latitude\\": 2.0823102, \\"longitude\\": -72.56207}, {\\"latitude\\": 0.7923102, \\"longitude\\": -76.542076}, {\\"latitude\\": 0.7847239, \\"longitude\\": -76.57136}, {\\"latitude\\": 0.5847239, \\"longitude\\": -77.591354}, {\\"latitude\\": 0.58, \\"longitude\\": -77.64}, {\\"latitude\\": 0.58, \\"longitude\\": -77.68}, {\\"latitude\\": 0.58482975, \\"longitude\\": -77.72919}, {\\"latitude\\": 0.5991325, \\"longitude\\": -77.77647}, {\\"latitude\\": 0.62235546, \\"longitude\\": -77.82002}, {\\"latitude\\": 1.1823555, \\"longitude\\": -78.66002}, {\\"latitude\\": 1.2182648, \\"longitude\\": -78.70272}, {\\"latitude\\": 1.2626696, \\"longitude\\": -78.736374}, {\\"latitude\\": 1.6826695, \\"longitude\\": -78.986374}, {\\"latitude\\": 1.6826695, \\"longitude\\": -78.986374}, {\\"latitude\\": 1.7321006, \\"longitude\\": -79.00892}, {\\"latitude\\": 1.7852032, \\"longitude\\": -79.020195}], \\"securityThreat\\": \\"unknown\\", \\"hazardReport\\": {\\"isKnownAsTorServer\\": false, \\"isKnownAsVpn\\": false, \\"isKnownAsProxy\\": false, \\"isSpamhausDrop\\": false, \\"isSpamhausEdrop\\": false, \\"isSpamhausAsnDrop\\": false, \\"isBlacklistedUceprotect\\": false, \\"isBlacklistedBlocklistDe\\": false, \\"isKnownAsMailServer\\": false, \\"isKnownAsPublicRouter\\": false, \\"isBogon\\": false, \\"isUnreachable\\": false, \\"hostingLikelihood\\": 0, \\"isHostingAsn\\": false, \\"isCellular\\": true}}"
15	FAGFA	17	11	11	11	4.67	-74.12	1	"{\\"ip\\": \\"186.102.4.77\\", \\"localityLanguageRequested\\": \\"en\\", \\"isReachableGlobally\\": true, \\"country\\": {\\"isoAlpha2\\": \\"CO\\", \\"isoAlpha3\\": \\"COL\\", \\"m49Code\\": 170, \\"name\\": \\"Colombia\\", \\"isoName\\": \\"Colombia\\", \\"isoNameFull\\": \\"the Republic of Colombia\\", \\"isoAdminLanguages\\": [{\\"isoAlpha3\\": \\"spa\\", \\"isoAlpha2\\": \\"es\\", \\"isoName\\": \\"Spanish; Castilian\\", \\"nativeName\\": \\"espa\\\\u00f1ol\\"}], \\"unRegion\\": \\"Latin America and the Caribbean/South America\\", \\"currency\\": {\\"numericCode\\": 170, \\"code\\": \\"COP\\", \\"name\\": \\"Colombian Peso\\", \\"minorUnits\\": 2}, \\"wbRegion\\": {\\"id\\": \\"LCN\\", \\"iso2Code\\": \\"ZJ\\", \\"value\\": \\"Latin America & Caribbean\\"}, \\"wbIncomeLevel\\": {\\"id\\": \\"UMC\\", \\"iso2Code\\": \\"XT\\", \\"value\\": \\"Upper middle income\\"}, \\"callingCode\\": \\"57\\", \\"countryFlagEmoji\\": \\"\\\\ud83c\\\\udde8\\\\ud83c\\\\uddf4\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110, \\"continents\\": [{\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\"}]}, \\"location\\": {\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\", \\"isoPrincipalSubdivision\\": \\"Bogot\\\\u00e1 Distrito Capital\\", \\"isoPrincipalSubdivisionCode\\": \\"\\", \\"city\\": \\"Bogot\\\\u00e1\\", \\"localityName\\": \\"UPZ Modelia\\", \\"postcode\\": \\"110931\\", \\"latitude\\": 4.67, \\"longitude\\": -74.12, \\"plusCode\\": \\"67P7MVCH+2X\\", \\"timeZone\\": {\\"ianaTimeId\\": \\"America/Bogota\\", \\"displayName\\": \\"(UTC-05:00) Colombia Standard Time\\", \\"effectiveTimeZoneFull\\": \\"Colombia Standard Time\\", \\"effectiveTimeZoneShort\\": \\"-05\\", \\"utcOffsetSeconds\\": -18000, \\"utcOffset\\": \\"-05\\", \\"isDaylightSavingTime\\": false, \\"localTime\\": \\"2021-11-10T14:52:58.5783075\\"}, \\"localityInfo\\": {\\"administrative\\": [{\\"order\\": 3, \\"adminLevel\\": 2, \\"name\\": \\"Colombia\\", \\"description\\": \\"country in South America\\", \\"isoName\\": \\"Colombia\\", \\"isoCode\\": \\"CO\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110}, {\\"order\\": 5, \\"adminLevel\\": 3, \\"name\\": \\"Andean Region\\", \\"description\\": \\"Mountainous region of central Colombia\\", \\"wikidataId\\": \\"Q130359\\"}, {\\"order\\": 6, \\"adminLevel\\": 4, \\"name\\": \\"Bogot\\\\u00e1 Distrito Capital\\"}, {\\"order\\": 7, \\"adminLevel\\": 6, \\"name\\": \\"Bogot\\\\u00e1\\", \\"description\\": \\"capital city of Colombia\\", \\"isoName\\": \\"Distrito Capital de Bogot\\\\u00e1\\", \\"isoCode\\": \\"CO-DC\\", \\"wikidataId\\": \\"Q2841\\", \\"geonameId\\": 3688689}, {\\"order\\": 8, \\"adminLevel\\": 7, \\"name\\": \\"Bogot\\\\u00e1\\"}, {\\"order\\": 9, \\"adminLevel\\": 8, \\"name\\": \\"Fontib\\\\u00f3n\\", \\"description\\": \\"locality and former municipality located at the western side of Bogot\\\\u00e1, the capital of Colombia\\", \\"wikidataId\\": \\"Q2647991\\", \\"geonameId\\": 3682371}, {\\"order\\": 11, \\"adminLevel\\": 9, \\"name\\": \\"UPZ Modelia\\"}], \\"informative\\": [{\\"order\\": 1, \\"name\\": \\"South America\\", \\"description\\": \\"continent, mainly on the Earth's southwestern quadrant\\", \\"isoCode\\": \\"SA\\", \\"wikidataId\\": \\"Q18\\", \\"geonameId\\": 6255150}, {\\"order\\": 2, \\"name\\": \\"Andes\\", \\"description\\": \\"mountain range running along the western side of South America\\", \\"wikidataId\\": \\"Q5456\\"}, {\\"order\\": 4, \\"name\\": \\"Cordillera Oriental\\", \\"description\\": \\"mountain range in the Peruvian Andes\\", \\"wikidataId\\": \\"Q4794486\\", \\"geonameId\\": 3933971}, {\\"order\\": 10, \\"name\\": \\"110931\\", \\"description\\": \\"postal code\\"}]}}, \\"lastUpdated\\": \\"2021-11-09T23:18:00.3352786Z\\", \\"network\\": {\\"registry\\": \\"LACNIC\\", \\"registryStatus\\": \\"assigned\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"isReachableGlobally\\": true, \\"isBogon\\": false, \\"bgpPrefix\\": \\"186.102.0.0/17\\", \\"bgpPrefixNetworkAddress\\": \\"186.102.0.0\\", \\"bgpPrefixLastAddress\\": \\"186.102.127.255\\", \\"totalAddresses\\": 32768, \\"carriers\\": [{\\"asn\\": \\"AS3816\\", \\"asnNumeric\\": 3816, \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"name\\": \\"\\", \\"registry\\": \\"LACNIC\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"registrationDate\\": \\"1994-09-09\\", \\"registrationLastChange\\": \\"2021-07-07\\", \\"totalIpv4Addresses\\": 2663680, \\"totalIpv4Prefixes\\": 981, \\"totalIpv4BogonPrefixes\\": 0, \\"rank\\": 170, \\"rankText\\": \\"#170 out of 73,378\\"}], \\"viaCarriers\\": [{\\"asn\\": \\"AS12956\\", \\"asnNumeric\\": 12956, \\"organisation\\": \\"TELEFONICA GLOBAL SOLUTIONS SL\\", \\"name\\": \\"Telefonica\\", \\"registry\\": \\"RIPE\\", \\"registeredCountry\\": \\"ES\\", \\"registeredCountryName\\": \\"Spain\\", \\"totalIpv4Addresses\\": 145664, \\"rank\\": 1392, \\"rankText\\": \\"#1,392 out of 73,378\\"}]}, \\"confidence\\": \\"high\\", \\"confidenceArea\\": [{\\"latitude\\": 1.7922859, \\"longitude\\": -79.02076}, {\\"latitude\\": 1.8399987, \\"longitude\\": -79.01958}, {\\"latitude\\": 1.8866183, \\"longitude\\": -79.00929}, {\\"latitude\\": 8.156618, \\"longitude\\": -76.979294}, {\\"latitude\\": 8.186536, \\"longitude\\": -76.96742}, {\\"latitude\\": 10.276536, \\"longitude\\": -75.977425}, {\\"latitude\\": 10.318547, \\"longitude\\": -75.9522}, {\\"latitude\\": 10.668548, \\"longitude\\": -75.6922}, {\\"latitude\\": 10.700178, \\"longitude\\": -75.664276}, {\\"latitude\\": 10.920177, \\"longitude\\": -75.43428}, {\\"latitude\\": 10.931617, \\"longitude\\": -75.42147}, {\\"latitude\\": 11.181617, \\"longitude\\": -75.12147}, {\\"latitude\\": 11.218241, \\"longitude\\": -75.06258}, {\\"latitude\\": 11.258241, \\"longitude\\": -74.97258}, {\\"latitude\\": 11.265601, \\"longitude\\": -74.95409}, {\\"latitude\\": 11.505602, \\"longitude\\": -74.274086}, {\\"latitude\\": 11.513616, \\"longitude\\": -74.24645}, {\\"latitude\\": 11.953615, \\"longitude\\": -72.32645}, {\\"latitude\\": 11.96, \\"longitude\\": -72.27}, {\\"latitude\\": 11.96, \\"longitude\\": -72.26}, {\\"latitude\\": 11.954232, \\"longitude\\": -72.206314}, {\\"latitude\\": 11.937194, \\"longitude\\": -72.1551}, {\\"latitude\\": 11.909673, \\"longitude\\": -72.10873}, {\\"latitude\\": 11.872937, \\"longitude\\": -72.069336}, {\\"latitude\\": 6.352937, \\"longitude\\": -67.29933}, {\\"latitude\\": 6.316904, \\"longitude\\": -67.2734}, {\\"latitude\\": 6.2768846, \\"longitude\\": -67.25427}, {\\"latitude\\": 6.2341356, \\"longitude\\": -67.24255}, {\\"latitude\\": 6.19, \\"longitude\\": -67.2386}, {\\"latitude\\": 6.18, \\"longitude\\": -67.2386}, {\\"latitude\\": 6.1340165, \\"longitude\\": -67.24289}, {\\"latitude\\": 6.0896025, \\"longitude\\": -67.255615}, {\\"latitude\\": 6.0482726, \\"longitude\\": -67.27633}, {\\"latitude\\": 6.011438, \\"longitude\\": -67.304344}, {\\"latitude\\": 5.980355, \\"longitude\\": -67.338684}, {\\"latitude\\": 2.120355, \\"longitude\\": -72.488686}, {\\"latitude\\": 2.094333, \\"longitude\\": -72.531815}, {\\"latitude\\": 0.26433298, \\"longitude\\": -76.391815}, {\\"latitude\\": 0.24860582, \\"longitude\\": -76.43461}, {\\"latitude\\": 0.24082826, \\"longitude\\": -76.47955}, {\\"latitude\\": 0.24125645, \\"longitude\\": -76.52517}, {\\"latitude\\": 0.24987628, \\"longitude\\": -76.56996}, {\\"latitude\\": 0.58987623, \\"longitude\\": -77.74996}, {\\"latitude\\": 0.61163706, \\"longitude\\": -77.80241}, {\\"latitude\\": 0.64455533, \\"longitude\\": -77.848595}, {\\"latitude\\": 1.6245553, \\"longitude\\": -78.93859}, {\\"latitude\\": 1.6245553, \\"longitude\\": -78.93859}, {\\"latitude\\": 1.6597967, \\"longitude\\": -78.97096}, {\\"latitude\\": 1.7005124, \\"longitude\\": -78.996}, {\\"latitude\\": 1.7452186, \\"longitude\\": -79.0128}, {\\"latitude\\": 1.7922859, \\"longitude\\": -79.02076}], \\"securityThreat\\": \\"unknown\\", \\"hazardReport\\": {\\"isKnownAsTorServer\\": false, \\"isKnownAsVpn\\": false, \\"isKnownAsProxy\\": false, \\"isSpamhausDrop\\": false, \\"isSpamhausEdrop\\": false, \\"isSpamhausAsnDrop\\": false, \\"isBlacklistedUceprotect\\": false, \\"isBlacklistedBlocklistDe\\": false, \\"isKnownAsMailServer\\": false, \\"isKnownAsPublicRouter\\": false, \\"isBogon\\": false, \\"isUnreachable\\": false, \\"hostingLikelihood\\": 0, \\"isHostingAsn\\": false, \\"isCellular\\": true}}"
16	djifhaiu	17	11	11	11	4.67	-74.09	1	"{\\"ip\\": \\"186.102.4.77\\", \\"localityLanguageRequested\\": \\"en\\", \\"isReachableGlobally\\": true, \\"country\\": {\\"isoAlpha2\\": \\"CO\\", \\"isoAlpha3\\": \\"COL\\", \\"m49Code\\": 170, \\"name\\": \\"Colombia\\", \\"isoName\\": \\"Colombia\\", \\"isoNameFull\\": \\"the Republic of Colombia\\", \\"isoAdminLanguages\\": [{\\"isoAlpha3\\": \\"spa\\", \\"isoAlpha2\\": \\"es\\", \\"isoName\\": \\"Spanish; Castilian\\", \\"nativeName\\": \\"espa\\\\u00f1ol\\"}], \\"unRegion\\": \\"Latin America and the Caribbean/South America\\", \\"currency\\": {\\"numericCode\\": 170, \\"code\\": \\"COP\\", \\"name\\": \\"Colombian Peso\\", \\"minorUnits\\": 2}, \\"wbRegion\\": {\\"id\\": \\"LCN\\", \\"iso2Code\\": \\"ZJ\\", \\"value\\": \\"Latin America & Caribbean\\"}, \\"wbIncomeLevel\\": {\\"id\\": \\"UMC\\", \\"iso2Code\\": \\"XT\\", \\"value\\": \\"Upper middle income\\"}, \\"callingCode\\": \\"57\\", \\"countryFlagEmoji\\": \\"\\\\ud83c\\\\udde8\\\\ud83c\\\\uddf4\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110, \\"continents\\": [{\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\"}]}, \\"location\\": {\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\", \\"isoPrincipalSubdivision\\": \\"Bogot\\\\u00e1 Distrito Capital\\", \\"isoPrincipalSubdivisionCode\\": \\"\\", \\"city\\": \\"Bogot\\\\u00e1\\", \\"localityName\\": \\"UPZ Parque El Salitre\\", \\"postcode\\": \\"111221\\", \\"latitude\\": 4.67, \\"longitude\\": -74.09, \\"plusCode\\": \\"67P7MWC6+22\\", \\"timeZone\\": {\\"ianaTimeId\\": \\"America/Bogota\\", \\"displayName\\": \\"(UTC-05:00) Colombia Standard Time\\", \\"effectiveTimeZoneFull\\": \\"Colombia Standard Time\\", \\"effectiveTimeZoneShort\\": \\"-05\\", \\"utcOffsetSeconds\\": -18000, \\"utcOffset\\": \\"-05\\", \\"isDaylightSavingTime\\": false, \\"localTime\\": \\"2021-11-11T17:35:57.0729178\\"}, \\"localityInfo\\": {\\"administrative\\": [{\\"order\\": 3, \\"adminLevel\\": 2, \\"name\\": \\"Colombia\\", \\"description\\": \\"country in South America\\", \\"isoName\\": \\"Colombia\\", \\"isoCode\\": \\"CO\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110}, {\\"order\\": 5, \\"adminLevel\\": 3, \\"name\\": \\"Andean Region\\", \\"description\\": \\"Mountainous region of central Colombia\\", \\"wikidataId\\": \\"Q130359\\"}, {\\"order\\": 6, \\"adminLevel\\": 4, \\"name\\": \\"Bogot\\\\u00e1 Distrito Capital\\"}, {\\"order\\": 7, \\"adminLevel\\": 6, \\"name\\": \\"Bogot\\\\u00e1\\", \\"description\\": \\"capital city of Colombia\\", \\"isoName\\": \\"Distrito Capital de Bogot\\\\u00e1\\", \\"isoCode\\": \\"CO-DC\\", \\"wikidataId\\": \\"Q2841\\", \\"geonameId\\": 3688689}, {\\"order\\": 8, \\"adminLevel\\": 7, \\"name\\": \\"Bogot\\\\u00e1\\"}, {\\"order\\": 9, \\"adminLevel\\": 8, \\"name\\": \\"Barrios Unidos\\", \\"description\\": \\"locality of the Capital District of Bogot\\\\u00e1, Colombia\\", \\"wikidataId\\": \\"Q2647983\\", \\"geonameId\\": 7033267}, {\\"order\\": 11, \\"adminLevel\\": 9, \\"name\\": \\"UPZ Parque El Salitre\\"}], \\"informative\\": [{\\"order\\": 1, \\"name\\": \\"South America\\", \\"description\\": \\"continent, mainly on the Earth's southwestern quadrant\\", \\"isoCode\\": \\"SA\\", \\"wikidataId\\": \\"Q18\\", \\"geonameId\\": 6255150}, {\\"order\\": 2, \\"name\\": \\"Andes\\", \\"description\\": \\"mountain range running along the western side of South America\\", \\"wikidataId\\": \\"Q5456\\"}, {\\"order\\": 4, \\"name\\": \\"Cordillera Oriental\\", \\"description\\": \\"mountain range in the Peruvian Andes\\", \\"wikidataId\\": \\"Q4794486\\", \\"geonameId\\": 3933971}, {\\"order\\": 10, \\"name\\": \\"111221\\", \\"description\\": \\"postal code\\"}]}}, \\"lastUpdated\\": \\"2021-11-11T13:21:03.1225587Z\\", \\"network\\": {\\"registry\\": \\"LACNIC\\", \\"registryStatus\\": \\"assigned\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"isReachableGlobally\\": true, \\"isBogon\\": false, \\"bgpPrefix\\": \\"186.102.0.0/17\\", \\"bgpPrefixNetworkAddress\\": \\"186.102.0.0\\", \\"bgpPrefixLastAddress\\": \\"186.102.127.255\\", \\"totalAddresses\\": 32768, \\"carriers\\": [{\\"asn\\": \\"AS3816\\", \\"asnNumeric\\": 3816, \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"name\\": \\"\\", \\"registry\\": \\"LACNIC\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"registrationDate\\": \\"1994-09-09\\", \\"registrationLastChange\\": \\"2021-07-07\\", \\"totalIpv4Addresses\\": 2663680, \\"totalIpv4Prefixes\\": 956, \\"totalIpv4BogonPrefixes\\": 0, \\"rank\\": 170, \\"rankText\\": \\"#170 out of 73,381\\"}], \\"viaCarriers\\": [{\\"asn\\": \\"AS12956\\", \\"asnNumeric\\": 12956, \\"organisation\\": \\"TELEFONICA GLOBAL SOLUTIONS SL\\", \\"name\\": \\"Telefonica\\", \\"registry\\": \\"RIPE\\", \\"registeredCountry\\": \\"ES\\", \\"registeredCountryName\\": \\"Spain\\", \\"totalIpv4Addresses\\": 170752, \\"rank\\": 1252, \\"rankText\\": \\"#1,252 out of 73,381\\"}]}, \\"confidence\\": \\"high\\", \\"confidenceArea\\": [{\\"latitude\\": 1.81, \\"longitude\\": -79.00145}, {\\"latitude\\": 1.82, \\"longitude\\": -79.00145}, {\\"latitude\\": 1.8584732, \\"longitude\\": -78.99845}, {\\"latitude\\": 1.8960297, \\"longitude\\": -78.98954}, {\\"latitude\\": 8.15603, \\"longitude\\": -76.97954}, {\\"latitude\\": 8.186518, \\"longitude\\": -76.967476}, {\\"latitude\\": 10.276518, \\"longitude\\": -75.97748}, {\\"latitude\\": 10.318527, \\"longitude\\": -75.95226}, {\\"latitude\\": 10.668528, \\"longitude\\": -75.69226}, {\\"latitude\\": 10.706572, \\"longitude\\": -75.657364}, {\\"latitude\\": 11.176571, \\"longitude\\": -75.127365}, {\\"latitude\\": 11.199884, \\"longitude\\": -75.09661}, {\\"latitude\\": 11.218233, \\"longitude\\": -75.062614}, {\\"latitude\\": 11.258233, \\"longitude\\": -74.97262}, {\\"latitude\\": 11.265595, \\"longitude\\": -74.95412}, {\\"latitude\\": 11.505596, \\"longitude\\": -74.27412}, {\\"latitude\\": 11.513613, \\"longitude\\": -74.246475}, {\\"latitude\\": 11.953612, \\"longitude\\": -72.32647}, {\\"latitude\\": 11.959742, \\"longitude\\": -72.28142}, {\\"latitude\\": 11.957704, \\"longitude\\": -72.236}, {\\"latitude\\": 11.947566, \\"longitude\\": -72.19168}, {\\"latitude\\": 11.929658, \\"longitude\\": -72.14993}, {\\"latitude\\": 11.904568, \\"longitude\\": -72.11211}, {\\"latitude\\": 11.873115, \\"longitude\\": -72.079445}, {\\"latitude\\": 6.3531146, \\"longitude\\": -67.299446}, {\\"latitude\\": 6.317055, \\"longitude\\": -67.273445}, {\\"latitude\\": 6.276994, \\"longitude\\": -67.254265}, {\\"latitude\\": 6.234193, \\"longitude\\": -67.24251}, {\\"latitude\\": 6.19, \\"longitude\\": -67.23855}, {\\"latitude\\": 6.18, \\"longitude\\": -67.23855}, {\\"latitude\\": 6.1340213, \\"longitude\\": -67.24284}, {\\"latitude\\": 6.0896115, \\"longitude\\": -67.25556}, {\\"latitude\\": 6.048285, \\"longitude\\": -67.27628}, {\\"latitude\\": 6.011452, \\"longitude\\": -67.30429}, {\\"latitude\\": 5.9803696, \\"longitude\\": -67.33864}, {\\"latitude\\": 2.1203694, \\"longitude\\": -72.48864}, {\\"latitude\\": 2.0971987, \\"longitude\\": -72.52594}, {\\"latitude\\": 2.080846, \\"longitude\\": -72.56674}, {\\"latitude\\": 1.2208463, \\"longitude\\": -75.406746}, {\\"latitude\\": 1.2201978, \\"longitude\\": -75.40892}, {\\"latitude\\": 0.5901977, \\"longitude\\": -77.558914}, {\\"latitude\\": 0.58, \\"longitude\\": -77.63}, {\\"latitude\\": 0.58, \\"longitude\\": -77.68}, {\\"latitude\\": 0.58483005, \\"longitude\\": -77.72919}, {\\"latitude\\": 0.5991337, \\"longitude\\": -77.776474}, {\\"latitude\\": 0.622358, \\"longitude\\": -77.82004}, {\\"latitude\\": 1.182358, \\"longitude\\": -78.660034}, {\\"latitude\\": 1.2215463, \\"longitude\\": -78.70579}, {\\"latitude\\": 1.2704524, \\"longitude\\": -78.74083}, {\\"latitude\\": 1.6904523, \\"longitude\\": -78.97083}, {\\"latitude\\": 1.6904523, \\"longitude\\": -78.97083}, {\\"latitude\\": 1.7284229, \\"longitude\\": -78.987686}, {\\"latitude\\": 1.7686415, \\"longitude\\": -78.99798}, {\\"latitude\\": 1.81, \\"longitude\\": -79.00145}], \\"securityThreat\\": \\"unknown\\", \\"hazardReport\\": {\\"isKnownAsTorServer\\": false, \\"isKnownAsVpn\\": false, \\"isKnownAsProxy\\": false, \\"isSpamhausDrop\\": false, \\"isSpamhausEdrop\\": false, \\"isSpamhausAsnDrop\\": false, \\"isBlacklistedUceprotect\\": false, \\"isBlacklistedBlocklistDe\\": false, \\"isKnownAsMailServer\\": false, \\"isKnownAsPublicRouter\\": false, \\"isBogon\\": false, \\"isUnreachable\\": false, \\"hostingLikelihood\\": 0, \\"isHostingAsn\\": false, \\"isCellular\\": true}}"
18	test_one	17	11	11	11	4.67	-74.1	1	"{\\"ip\\": \\"186.102.4.77\\", \\"localityLanguageRequested\\": \\"en\\", \\"isReachableGlobally\\": true, \\"country\\": {\\"isoAlpha2\\": \\"CO\\", \\"isoAlpha3\\": \\"COL\\", \\"m49Code\\": 170, \\"name\\": \\"Colombia\\", \\"isoName\\": \\"Colombia\\", \\"isoNameFull\\": \\"the Republic of Colombia\\", \\"isoAdminLanguages\\": [{\\"isoAlpha3\\": \\"spa\\", \\"isoAlpha2\\": \\"es\\", \\"isoName\\": \\"Spanish; Castilian\\", \\"nativeName\\": \\"espa\\\\u00f1ol\\"}], \\"unRegion\\": \\"Latin America and the Caribbean/South America\\", \\"currency\\": {\\"numericCode\\": 170, \\"code\\": \\"COP\\", \\"name\\": \\"Colombian Peso\\", \\"minorUnits\\": 2}, \\"wbRegion\\": {\\"id\\": \\"LCN\\", \\"iso2Code\\": \\"ZJ\\", \\"value\\": \\"Latin America & Caribbean\\"}, \\"wbIncomeLevel\\": {\\"id\\": \\"UMC\\", \\"iso2Code\\": \\"XT\\", \\"value\\": \\"Upper middle income\\"}, \\"callingCode\\": \\"57\\", \\"countryFlagEmoji\\": \\"\\\\ud83c\\\\udde8\\\\ud83c\\\\uddf4\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110, \\"continents\\": [{\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\"}]}, \\"location\\": {\\"continent\\": \\"South America\\", \\"continentCode\\": \\"SA\\", \\"isoPrincipalSubdivision\\": \\"Bogota Capital District - Department\\", \\"isoPrincipalSubdivisionCode\\": \\"\\", \\"city\\": \\"Bogot\\\\u00e1\\", \\"localityName\\": \\"UPZ Jard\\\\u00edn Bot\\\\u00e1nico\\", \\"postcode\\": \\"111071\\", \\"latitude\\": 4.67, \\"longitude\\": -74.1, \\"plusCode\\": \\"67P7MWC2+22\\", \\"timeZone\\": {\\"ianaTimeId\\": \\"America/Bogota\\", \\"displayName\\": \\"(UTC-05:00) Colombia Standard Time\\", \\"effectiveTimeZoneFull\\": \\"Colombia Standard Time\\", \\"effectiveTimeZoneShort\\": \\"-05\\", \\"utcOffsetSeconds\\": -18000, \\"utcOffset\\": \\"-05\\", \\"isDaylightSavingTime\\": false, \\"localTime\\": \\"2021-12-30T15:26:46.0687901\\"}, \\"localityInfo\\": {\\"administrative\\": [{\\"order\\": 3, \\"adminLevel\\": 2, \\"name\\": \\"Colombia\\", \\"description\\": \\"country in South America\\", \\"isoName\\": \\"Colombia\\", \\"isoCode\\": \\"CO\\", \\"wikidataId\\": \\"Q739\\", \\"geonameId\\": 3686110}, {\\"order\\": 5, \\"adminLevel\\": 3, \\"name\\": \\"Andean Region\\", \\"description\\": \\"Mountainous region of central Colombia\\", \\"wikidataId\\": \\"Q130359\\"}, {\\"order\\": 6, \\"adminLevel\\": 4, \\"name\\": \\"Bogota Capital District - Department\\"}, {\\"order\\": 7, \\"adminLevel\\": 6, \\"name\\": \\"Bogot\\\\u00e1\\", \\"description\\": \\"capital city of Colombia\\", \\"isoName\\": \\"Distrito Capital de Bogot\\\\u00e1\\", \\"isoCode\\": \\"CO-DC\\", \\"wikidataId\\": \\"Q2841\\", \\"geonameId\\": 3688689}, {\\"order\\": 8, \\"adminLevel\\": 7, \\"name\\": \\"Bogot\\\\u00e1\\"}, {\\"order\\": 9, \\"adminLevel\\": 8, \\"name\\": \\"Engativ\\\\u00e1\\", \\"description\\": \\"locality of the Capital District of Bogot\\\\u00e1, Colombia\\", \\"wikidataId\\": \\"Q2647767\\", \\"geonameId\\": 7033268}, {\\"order\\": 11, \\"adminLevel\\": 9, \\"name\\": \\"UPZ Jard\\\\u00edn Bot\\\\u00e1nico\\"}], \\"informative\\": [{\\"order\\": 1, \\"name\\": \\"South America\\", \\"description\\": \\"continent, mainly on the Earth's southwestern quadrant\\", \\"isoCode\\": \\"SA\\", \\"wikidataId\\": \\"Q18\\", \\"geonameId\\": 6255150}, {\\"order\\": 2, \\"name\\": \\"Andes\\", \\"description\\": \\"mountain range running along the western side of South America\\", \\"wikidataId\\": \\"Q5456\\"}, {\\"order\\": 4, \\"name\\": \\"Cordillera Oriental\\", \\"description\\": \\"mountain range in the Peruvian Andes\\", \\"wikidataId\\": \\"Q4794486\\", \\"geonameId\\": 3933971}, {\\"order\\": 10, \\"name\\": \\"111071\\", \\"description\\": \\"postal code\\"}]}}, \\"lastUpdated\\": \\"2021-12-30T03:04:10.2216194Z\\", \\"network\\": {\\"registry\\": \\"LACNIC\\", \\"registryStatus\\": \\"assigned\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"isReachableGlobally\\": true, \\"isBogon\\": false, \\"bgpPrefix\\": \\"186.102.0.0/20\\", \\"bgpPrefixNetworkAddress\\": \\"186.102.0.0\\", \\"bgpPrefixLastAddress\\": \\"186.102.15.255\\", \\"totalAddresses\\": 4096, \\"carriers\\": [{\\"asn\\": \\"AS3816\\", \\"asnNumeric\\": 3816, \\"organisation\\": \\"COLOMBIA TELECOMUNICACIONES S.A. ESP\\", \\"name\\": \\"\\", \\"registry\\": \\"LACNIC\\", \\"registeredCountry\\": \\"CO\\", \\"registeredCountryName\\": \\"Colombia\\", \\"registrationDate\\": \\"1994-09-09\\", \\"registrationLastChange\\": \\"2021-07-07\\", \\"totalIpv4Addresses\\": 2692352, \\"totalIpv4Prefixes\\": 1008, \\"totalIpv4BogonPrefixes\\": 0, \\"rank\\": 168, \\"rankText\\": \\"#168 out of 73,749\\"}], \\"viaCarriers\\": [{\\"asn\\": \\"AS12956\\", \\"asnNumeric\\": 12956, \\"organisation\\": \\"TELEFONICA GLOBAL SOLUTIONS SL\\", \\"name\\": \\"Telefonica\\", \\"registry\\": \\"RIPE\\", \\"registeredCountry\\": \\"ES\\", \\"registeredCountryName\\": \\"Spain\\", \\"totalIpv4Addresses\\": 166912, \\"rank\\": 1261, \\"rankText\\": \\"#1,261 out of 73,749\\"}]}, \\"confidence\\": \\"high\\", \\"confidenceArea\\": [{\\"latitude\\": 0.82, \\"longitude\\": -77.89143}, {\\"latitude\\": 0.83, \\"longitude\\": -77.89143}, {\\"latitude\\": 0.85434663, \\"longitude\\": -77.890236}, {\\"latitude\\": 4.004347, \\"longitude\\": -77.58024}, {\\"latitude\\": 4.009881, \\"longitude\\": -77.57963}, {\\"latitude\\": 8.469881, \\"longitude\\": -77.03963}, {\\"latitude\\": 8.522722, \\"longitude\\": -77.02727}, {\\"latitude\\": 8.571669, \\"longitude\\": -77.00373}, {\\"latitude\\": 10.561669, \\"longitude\\": -75.76373}, {\\"latitude\\": 10.610084, \\"longitude\\": -75.7244}, {\\"latitude\\": 11.060083, \\"longitude\\": -75.2544}, {\\"latitude\\": 11.063809, \\"longitude\\": -75.25043}, {\\"latitude\\": 11.173809, \\"longitude\\": -75.130424}, {\\"latitude\\": 11.203432, \\"longitude\\": -75.09093}, {\\"latitude\\": 11.224791, \\"longitude\\": -75.04636}, {\\"latitude\\": 11.504791, \\"longitude\\": -74.27636}, {\\"latitude\\": 11.513331, \\"longitude\\": -74.24769}, {\\"latitude\\": 11.963331, \\"longitude\\": -72.32768}, {\\"latitude\\": 11.969741, \\"longitude\\": -72.28145}, {\\"latitude\\": 11.967542, \\"longitude\\": -72.234825}, {\\"latitude\\": 11.95681, \\"longitude\\": -72.18941}, {\\"latitude\\": 11.937916, \\"longitude\\": -72.14677}, {\\"latitude\\": 11.91151, \\"longitude\\": -72.108376}, {\\"latitude\\": 11.878504, \\"longitude\\": -72.07556}, {\\"latitude\\": 11.8400345, \\"longitude\\": -72.049446}, {\\"latitude\\": 11.797427, \\"longitude\\": -72.03093}, {\\"latitude\\": 7.1574264, \\"longitude\\": -70.51093}, {\\"latitude\\": 7.11513, \\"longitude\\": -70.50106}, {\\"latitude\\": 7.0717735, \\"longitude\\": -70.4987}, {\\"latitude\\": 7.0286655, \\"longitude\\": -70.50393}, {\\"latitude\\": 3.7586653, \\"longitude\\": -71.19393}, {\\"latitude\\": 3.714558, \\"longitude\\": -71.20762}, {\\"latitude\\": 3.6737041, \\"longitude\\": -71.229225}, {\\"latitude\\": 1.8237041, \\"longitude\\": -72.439224}, {\\"latitude\\": 1.7862601, \\"longitude\\": -72.46921}, {\\"latitude\\": 1.755185, \\"longitude\\": -72.50583}, {\\"latitude\\": 1.7316179, \\"longitude\\": -72.54773}, {\\"latitude\\": 1.7164228, \\"longitude\\": -72.593376}, {\\"latitude\\": 0.57642275, \\"longitude\\": -77.553375}, {\\"latitude\\": 0.57, \\"longitude\\": -77.61}, {\\"latitude\\": 0.57, \\"longitude\\": -77.64}, {\\"latitude\\": 0.57, \\"longitude\\": -77.64}, {\\"latitude\\": 0.57480365, \\"longitude\\": -77.68905}, {\\"latitude\\": 0.5890301, \\"longitude\\": -77.73622}, {\\"latitude\\": 0.6121326, \\"longitude\\": -77.779686}, {\\"latitude\\": 0.6432233, \\"longitude\\": -77.81779}, {\\"latitude\\": 0.68110746, \\"longitude\\": -77.84906}, {\\"latitude\\": 0.7243291, \\"longitude\\": -77.87229}, {\\"latitude\\": 0.7712274, \\"longitude\\": -77.8866}, {\\"latitude\\": 0.82, \\"longitude\\": -77.89143}], \\"securityThreat\\": \\"unknown\\", \\"hazardReport\\": {\\"isKnownAsTorServer\\": false, \\"isKnownAsVpn\\": false, \\"isKnownAsProxy\\": false, \\"isSpamhausDrop\\": false, \\"isSpamhausEdrop\\": false, \\"isSpamhausAsnDrop\\": false, \\"isBlacklistedUceprotect\\": false, \\"isBlacklistedBlocklistDe\\": false, \\"isKnownAsMailServer\\": false, \\"isKnownAsPublicRouter\\": false, \\"isBogon\\": false, \\"isUnreachable\\": false, \\"hostingLikelihood\\": 0, \\"isHostingAsn\\": false, \\"isCellular\\": true}}"
19	test_two	17	11	11	11	\N	\N	1	\N
20	test_three	17	11	11	11	4.6137344	-74.1310464	1	\N
21		17	11	11	11	4.603904	-74.1376	1	\N
22	123445	18	11	11	11	4.603904	-74.1638144	1	\N
23	puesto_test	15	11	11	11	4.571136	-74.1474304	1	\N
24	puesto_ven1	19	11	11	11	4.571136	-74.1474304	1	\N
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (id, post, place_id, product_id, price, date_added, cut_date_added, udm_id, product_qualification_id, udm_name, product_qualification_name, product_name, place_name, place_latitude, place_longitude) FROM stdin;
11	post one real time	22	11	30000	01/14/2022, 12:08:01	01/14/2022	2	3	\N	\N	\N	\N	\N	\N
12	post two real time	22	11	56789	01/14/2022, 12:09:28	01/14/2022	3	4	\N	\N	\N	\N	\N	\N
13	this is a post of d	22	11	45000	01/14/2022, 15:19:10	01/14/2022	1	1	Bulto	Extra	rqf	123445	4.603904	-74.1638144
14	This is a post 2 of	22	11	34000	01/14/2022, 15:49:34	01/14/2022	1	1	Bulto	Extra	rqf	123445	4.603904	-74.1638144
15	Oferta	22	11	60000	01/14/2022, 15:54:11	01/14/2022	5	2	Canastilla	Fino	rqf	123445	4.603904	-74.1638144
16	ñjfhdañjfk	13	11	120000	01/24/2022, 12:24:04	01/24/2022	1	1	Bulto	Extra	rqf	hgzd	4.67	-74.12
17	ñjfhdañjfk	13	11	120000	01/24/2022, 12:24:53	01/24/2022	1	1	Bulto	Extra	rqf	hgzd	4.67	-74.12
18	this is a post of d	13	11	120000	01/24/2022, 12:29:19	01/24/2022	1	1	Bulto	Extra	rqf	hgzd	4.67	-74.12
19	fgj{sklf	22	11	20000	01/24/2022, 12:42:10	01/24/2022	1	1	Bulto	Extra	rqf	123445	4.603904	-74.1638144
20	this is a post of d	22	11	30000	01/25/2022, 15:14:44	01/25/2022	1	1	Bulto	Extra	rqf	123445	4.603904	-74.1638144
21	post_three	24	11	10000	01/25/2022, 18:10:20	01/25/2022	1	1	Bulto	Extra	rqf	puesto_ven1	4.571136	-74.1474304
22	test_post_26_01	24	11	20000	01/26/2022, 05:56:10	01/26/2022	1	1	Bulto	Extra	rqf	puesto_ven1	4.571136	-74.1474304
23	post_three	24	11	10000	01/26/2022, 06:00:11	01/26/2022	1	1	Bulto	Extra	rqf	puesto_ven1	4.571136	-74.1474304
24	post_three	24	11	10000	01/26/2022, 06:02:04	01/26/2022	1	1	Bulto	Extra	rqf	puesto_ven1	4.571136	-74.1474304
25	post_three	24	11	10000	01/26/2022, 06:02:57	01/26/2022	1	1	Bulto	Extra	rqf	puesto_ven1	4.571136	-74.1474304
26	post_three	24	11	10000	01/26/2022, 06:04:46	01/26/2022	1	1	Bulto	Extra	rqf	puesto_ven1	4.571136	-74.1474304
27	post_three	24	11	10000	01/26/2022, 06:05:57	01/26/2022	1	1	Bulto	Extra	rqf	puesto_ven1	4.571136	-74.1474304
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, code, price) FROM stdin;
11	rqf	gsfdgs	123
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

COPY public.role (id, name, code, udm_name) FROM stdin;
16	awetata	efatrar	\N
17	wgrrdfgs	rt3rwer	\N
18	tesrr	gfkjshlfdjh	\N
20	Administrador	ADMIN	\N
21	Vendedor	VEN	\N
22	Comprador	COMP	\N
19	Superadministrador	SUPERADMIN	\N
\.


--
-- Data for Name: square; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.square (id, name, code) FROM stdin;
7	abc	abc123
8	abc	abc123
9	plazatest	dfagrstrt
\.


--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store (id, number, code, square_id) FROM stdin;
1	24	1234	7
2	1234	fgerge	7
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

SELECT pg_catalog.setval('public.partner_id_seq', 19, true);


--
-- Name: place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.place_id_seq', 24, true);


--
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_id_seq', 27, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 11, true);


--
-- Name: product_qualification_offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_qualification_offer_id_seq', 9, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.role_id_seq', 22, true);


--
-- Name: square_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.square_id_seq', 9, true);


--
-- Name: store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_id_seq', 2, true);


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

