--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Ubuntu 13.5-2.pgdg20.04+1)
-- Dumped by pg_dump version 13.5 (Ubuntu 13.5-2.pgdg20.04+1)

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
-- Name: comunas; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.comunas (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    id_region integer NOT NULL
);


ALTER TABLE public.comunas OWNER TO ejdgaispifmugu;

--
-- Name: comunas_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.comunas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comunas_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: comunas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.comunas_id_seq OWNED BY public.comunas.id;


--
-- Name: consideraciones_medicas; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.consideraciones_medicas (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(256)
);


ALTER TABLE public.consideraciones_medicas OWNER TO ejdgaispifmugu;

--
-- Name: consideraciones_medicas_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.consideraciones_medicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consideraciones_medicas_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: consideraciones_medicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.consideraciones_medicas_id_seq OWNED BY public.consideraciones_medicas.id;


--
-- Name: historial_busquedas; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.historial_busquedas (
    id integer NOT NULL,
    consulta text NOT NULL,
    frecuencia integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.historial_busquedas OWNER TO ejdgaispifmugu;

--
-- Name: historial_busquedas_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.historial_busquedas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historial_busquedas_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: historial_busquedas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.historial_busquedas_id_seq OWNED BY public.historial_busquedas.id;


--
-- Name: historial_comunas; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.historial_comunas (
    id integer NOT NULL,
    frecuencia integer NOT NULL,
    id_comuna integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.historial_comunas OWNER TO ejdgaispifmugu;

--
-- Name: historial_comunas_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.historial_comunas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historial_comunas_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: historial_comunas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.historial_comunas_id_seq OWNED BY public.historial_comunas.id;


--
-- Name: historial_ofertas; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.historial_ofertas (
    id integer NOT NULL,
    id_oferta integer NOT NULL,
    id_usuario integer NOT NULL,
    frecuencia integer NOT NULL
);


ALTER TABLE public.historial_ofertas OWNER TO ejdgaispifmugu;

--
-- Name: historial_ofertas_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.historial_ofertas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historial_ofertas_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: historial_ofertas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.historial_ofertas_id_seq OWNED BY public.historial_ofertas.id;


--
-- Name: historial_regiones; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.historial_regiones (
    id integer NOT NULL,
    frecuencia integer NOT NULL,
    id_region integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.historial_regiones OWNER TO ejdgaispifmugu;

--
-- Name: historial_regiones_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.historial_regiones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historial_regiones_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: historial_regiones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.historial_regiones_id_seq OWNED BY public.historial_regiones.id;


--
-- Name: oferta_consideraciones; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.oferta_consideraciones (
    id integer NOT NULL,
    id_oferta integer NOT NULL,
    id_consideracion integer NOT NULL
);


ALTER TABLE public.oferta_consideraciones OWNER TO ejdgaispifmugu;

--
-- Name: oferta_consideraciones_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.oferta_consideraciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oferta_consideraciones_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: oferta_consideraciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.oferta_consideraciones_id_seq OWNED BY public.oferta_consideraciones.id;


--
-- Name: ofertas_turisticas; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.ofertas_turisticas (
    id integer NOT NULL,
    nombre character varying(200) NOT NULL,
    precio character varying(300) NOT NULL,
    ubicacion text,
    url_imagen text,
    fecha_inicio date NOT NULL,
    fecha_final date,
    id_proveedor integer NOT NULL,
    id_comuna integer NOT NULL
);


ALTER TABLE public.ofertas_turisticas OWNER TO ejdgaispifmugu;

--
-- Name: ofertas_turisticas_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.ofertas_turisticas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ofertas_turisticas_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: ofertas_turisticas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.ofertas_turisticas_id_seq OWNED BY public.ofertas_turisticas.id;


--
-- Name: proveedores; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.proveedores (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    web text,
    telefono character varying(15),
    correo character varying(320)
);


ALTER TABLE public.proveedores OWNER TO ejdgaispifmugu;

--
-- Name: proveedores_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.proveedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedores_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: proveedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.proveedores_id_seq OWNED BY public.proveedores.id;


--
-- Name: regiones; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.regiones (
    id integer NOT NULL,
    nombre character varying(64) NOT NULL,
    abreviatura character varying(5) NOT NULL,
    capital character varying(64) NOT NULL,
    url_imagen text
);


ALTER TABLE public.regiones OWNER TO ejdgaispifmugu;

--
-- Name: regiones_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.regiones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regiones_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: regiones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.regiones_id_seq OWNED BY public.regiones.id;


--
-- Name: scrapings; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.scrapings (
    id integer NOT NULL,
    nombredb character varying(50) NOT NULL,
    ultimatupla integer DEFAULT 0
);


ALTER TABLE public.scrapings OWNER TO ejdgaispifmugu;

--
-- Name: scrapings_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.scrapings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scrapings_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: scrapings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.scrapings_id_seq OWNED BY public.scrapings.id;


--
-- Name: usuario_consideraciones; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.usuario_consideraciones (
    id integer NOT NULL,
    id_consideracion integer NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.usuario_consideraciones OWNER TO ejdgaispifmugu;

--
-- Name: usuario_consideraciones_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.usuario_consideraciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_consideraciones_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: usuario_consideraciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.usuario_consideraciones_id_seq OWNED BY public.usuario_consideraciones.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: ejdgaispifmugu
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(300) NOT NULL,
    correo character varying(320) NOT NULL,
    fecha_nacimiento date NOT NULL,
    id_comuna integer NOT NULL
);


ALTER TABLE public.usuarios OWNER TO ejdgaispifmugu;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: ejdgaispifmugu
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO ejdgaispifmugu;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ejdgaispifmugu
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: comunas id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.comunas ALTER COLUMN id SET DEFAULT nextval('public.comunas_id_seq'::regclass);


--
-- Name: consideraciones_medicas id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.consideraciones_medicas ALTER COLUMN id SET DEFAULT nextval('public.consideraciones_medicas_id_seq'::regclass);


--
-- Name: historial_busquedas id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_busquedas ALTER COLUMN id SET DEFAULT nextval('public.historial_busquedas_id_seq'::regclass);


--
-- Name: historial_comunas id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_comunas ALTER COLUMN id SET DEFAULT nextval('public.historial_comunas_id_seq'::regclass);


--
-- Name: historial_ofertas id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_ofertas ALTER COLUMN id SET DEFAULT nextval('public.historial_ofertas_id_seq'::regclass);


--
-- Name: historial_regiones id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_regiones ALTER COLUMN id SET DEFAULT nextval('public.historial_regiones_id_seq'::regclass);


--
-- Name: oferta_consideraciones id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.oferta_consideraciones ALTER COLUMN id SET DEFAULT nextval('public.oferta_consideraciones_id_seq'::regclass);


--
-- Name: ofertas_turisticas id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.ofertas_turisticas ALTER COLUMN id SET DEFAULT nextval('public.ofertas_turisticas_id_seq'::regclass);


--
-- Name: proveedores id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN id SET DEFAULT nextval('public.proveedores_id_seq'::regclass);


--
-- Name: regiones id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.regiones ALTER COLUMN id SET DEFAULT nextval('public.regiones_id_seq'::regclass);


--
-- Name: scrapings id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.scrapings ALTER COLUMN id SET DEFAULT nextval('public.scrapings_id_seq'::regclass);


--
-- Name: usuario_consideraciones id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.usuario_consideraciones ALTER COLUMN id SET DEFAULT nextval('public.usuario_consideraciones_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: comunas; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.comunas (id, nombre, id_region) FROM stdin;
1	Arica	1
2	Camarones	1
3	General Lagos	1
4	Putre	1
5	Alto Hospicio	2
6	Iquique	2
7	Camiña	2
8	Colchane	2
9	Huara	2
10	Pica	2
11	Pozo Almonte	2
12	Tocopilla	3
13	María Elena	3
14	Calama	3
15	Ollague	3
16	San Pedro de Atacama	3
17	Antofagasta	3
18	Mejillones	3
19	Sierra Gorda	3
20	Taltal	3
21	Chañaral	4
22	Diego de Almagro	4
23	Copiapó	4
24	Caldera	4
25	Tierra Amarilla	4
26	Vallenar	14
27	Alto del Carmen	4
28	Freirina	4
29	Huasco	4
30	La Serena	5
31	Coquimbo	5
32	Andacollo	5
33	La Higuera	5
34	Paihuano	5
35	Vicuña	5
36	Ovalle	5
37	Combarbalá	5
38	Monte Patria	5
39	Punitaqui	5
40	Río Hurtado	5
41	Illapel	5
42	Canela	5
43	Los Vilos	5
44	Salamanca	6
45	La Ligua	6
46	Cabildo	6
47	Zapallar	6
48	Papudo	6
49	Petorca	6
50	Los Andes	6
51	San Esteban	6
52	Calle Larga	6
53	Rinconada	6
54	San Felipe	6
55	Llaillay	6
56	Putaendo	6
57	Santa María	6
58	Catemu	6
59	Panquehue	6
60	Quillota	6
61	La Cruz	6
62	La Calera	6
63	Nogales	6
64	Hijuelas	6
65	Valparaíso	6
66	Viña del Mar	6
67	Concón	6
68	Quintero	6
69	Puchuncaví	6
70	Casablanca	6
71	Juan Fernández	6
72	San Antonio	6
73	Cartagena	6
74	El Tabo	6
75	El Quisco	6
76	Algarrobo	6
77	Santo Domingo	6
78	Isla de Pascua	6
79	Quilpué	6
80	Limache	6
81	Olmué	6
82	Villa Alemana	6
83	Colina	7
84	Lampa	7
85	Tiltil	7
86	Santiago	7
87	Vitacura	7
88	San Ramón	7
89	San Miguel	7
90	San Joaquín	7
91	Renca	7
92	Recoleta	7
93	Quinta Normal	7
94	Quilicura	7
95	Pudahuel	7
96	Providencia	7
97	Peñalolén	7
98	Pedro Aguirre Cerda	7
99	Ñuñoa	7
100	Maipú	7
101	Macul	7
102	Lo Prado	7
103	Lo Espejo	7
104	Lo Barnechea	7
105	Las Condes	7
106	La Reina	7
107	La Pintana	7
108	La Granja	7
109	La Florida	7
110	La Cisterna	7
111	Independencia	7
112	Huechuraba	7
113	Estación Central	7
114	El Bosque	7
115	Conchalí	7
116	Cerro Navia	7
117	Cerrillos	7
118	Puente Alto	7
119	San José de Maipo	7
120	Pirque	7
121	San Bernardo	7
122	Buin	7
123	Paine	7
124	Calera de Tango	7
125	Melipilla	7
126	Alhué	7
127	Curacaví	7
128	María Pinto	7
129	San Pedro	7
130	Isla de Maipo	7
131	El Monte	7
132	Padre Hurtado	7
133	Peñaflor	7
134	Talagante	7
135	Codegua	8
136	Coínco	8
137	Coltauco	8
138	Doñihue	8
139	Graneros	8
140	Las Cabras	8
141	Machalí	8
142	Malloa	8
143	Mostazal	8
144	Olivar	8
145	Peumo	8
146	Pichidegua	8
147	Quinta de Tilcoco	8
148	Rancagua	8
149	Rengo	8
150	Requínoa	8
151	San Vicente de Tagua Tagua	8
152	Chépica	8
153	Chimbarongo	8
154	Lolol	8
155	Nancagua	8
156	Palmilla	8
157	Peralillo	8
158	Placilla	8
159	Pumanque	8
160	San Fernando	8
161	Santa Cruz	8
162	La Estrella	8
163	Litueche	8
164	Marchigüe	8
165	Navidad	8
166	Paredones	8
167	Pichilemu	8
168	Curicó	9
169	Hualañé	9
170	Licantén	9
171	Molina	9
172	Rauco	9
173	Romeral	9
174	Sagrada Familia	9
175	Teno	9
176	Vichuquén	9
177	Talca	9
178	San Clemente	9
179	Pelarco	9
180	Pencahue	9
181	Maule	9
182	San Rafael	9
183	Curepto	9
184	Constitución	9
185	Empedrado	9
186	Río Claro	9
187	Linares	9
188	San Javier	9
189	Parral	9
190	Villa Alegre	9
191	Longaví	9
192	Colbún	9
193	Retiro	9
194	Yerbas Buenas	9
195	Cauquenes	9
196	Chanco	9
197	Pelluhue	9
198	Bulnes	10
199	Chillán	10
200	Chillán Viejo	10
201	El Carmen	10
202	Pemuco	10
203	Pinto	10
204	Quillón	10
205	San Ignacio	10
206	Yungay	10
207	Cobquecura	10
208	Coelemu	10
209	Ninhue	10
210	Portezuelo	10
211	Quirihue	10
212	Ránquil	10
213	Treguaco	10
214	San Carlos	10
215	Coihueco	10
216	San Nicolás	10
217	Ñiquén	10
218	San Fabián	10
219	Alto Biobío	11
220	Antuco	11
221	Cabrero	11
222	Laja	11
223	Los Ángeles	11
224	Mulchén	11
225	Nacimiento	11
226	Negrete	11
227	Quilaco	11
228	Quilleco	11
229	San Rosendo	11
230	Santa Bárbara	11
231	Tucapel	11
232	Yumbel	11
233	Concepción	11
234	Coronel	11
235	Chiguayante	11
236	Florida	11
237	Hualpén	11
238	Hualqui	11
239	Lota	11
240	Penco	11
241	San Pedro de La Paz	11
242	Santa Juana	11
243	Talcahuano	11
244	Tomé	11
245	Arauco	11
246	Cañete	11
247	Contulmo	11
248	Curanilahue	11
249	Lebu	11
250	Los Álamos	11
251	Tirúa	11
252	Angol	12
253	Collipulli	12
254	Curacautín	12
255	Ercilla	12
256	Lonquimay	12
257	Los Sauces	12
258	Lumaco	12
259	Purén	12
260	Renaico	12
261	Traiguén	12
262	Victoria	12
263	Temuco	12
264	Carahue	12
265	Cholchol	12
266	Cunco	12
267	Curarrehue	12
268	Freire	12
269	Galvarino	12
270	Gorbea	12
271	Lautaro	12
272	Loncoche	12
273	Melipeuco	12
274	Nueva Imperial	12
275	Padre Las Casas	12
276	Perquenco	12
277	Pitrufquén	12
278	Pucón	12
279	Saavedra	12
280	Teodoro Schmidt	12
281	Toltén	12
282	Vilcún	12
283	Villarrica	12
284	Valdivia	13
285	Corral	13
286	Lanco	13
287	Los Lagos	13
288	Máfil	13
289	Mariquina	13
290	Paillaco	13
291	Panguipulli	13
292	La Unión	13
293	Futrono	13
294	Lago Ranco	13
295	Río Bueno	13
296	Osorno	14
297	Puerto Octay	14
298	Purranque	14
299	Puyehue	14
300	Río Negro	14
301	San Juan de la Costa	14
302	San Pablo	14
303	Calbuco	14
304	Cochamó	14
305	Fresia	14
306	Frutillar	14
307	Llanquihue	14
308	Los Muermos	14
309	Maullín	14
310	Puerto Montt	14
311	Puerto Varas	14
312	Ancud	14
313	Castro	14
314	Chonchi	14
315	Curaco de Vélez	14
316	Dalcahue	14
317	Puqueldón	14
318	Queilén	14
319	Quellón	14
320	Quemchi	14
321	Quinchao	14
322	Chaitén	14
323	Futaleufú	14
324	Hualaihué	14
325	Palena	14
326	Lago Verde	15
327	Coihaique	15
328	Aysén	15
329	Cisnes	15
330	Guaitecas	15
331	Río Ibáñez	15
332	Chile Chico	15
333	Cochrane	15
334	OHiggins	15
335	Tortel	15
336	Natales	16
337	Torres del Paine	16
338	Laguna Blanca	16
339	Punta Arenas	16
340	Río Verde	16
341	San Gregorio	16
342	Porvenir	16
343	Primavera	16
344	Timaukel	16
345	Cabo de Hornos	16
346	Antártica	16
\.


--
-- Data for Name: consideraciones_medicas; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.consideraciones_medicas (id, nombre, descripcion) FROM stdin;
1	Ninguna	Ninguna
2	Problemas de visión	Miopía, astigmatismo, etc
3	Problemas cardiovasculares	Problemas al corazón
4	Problemas de movilidad	Considerar sitios con accesibilidad de movilidad
5	Diabetes	Problemas de azúcar
6	Hipertensión	Tensión alta
\.


--
-- Data for Name: historial_busquedas; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.historial_busquedas (id, consulta, frecuencia, id_usuario) FROM stdin;
1	Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.	65	26
2	Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.	65	4
3	Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.	39	7
4	Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.	59	11
5	In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.	20	25
6	Nam nulla.	62	5
7	Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.	89	17
8	Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.	36	3
9	Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.	74	15
10	Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.	9	20
11	Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.	78	14
12	Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.	94	8
13	Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.	34	12
14	Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.	47	21
15	Maecenas pulvinar lobortis est. Phasellus sit amet erat.	48	13
16	Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.	82	22
17	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.	95	7
18	Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.	48	30
19	Proin risus.	100	16
20	Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.	84	26
21	Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	5	17
22	Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.	77	24
23	In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.	66	9
24	Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.	88	16
25	Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.	15	13
26	Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.	27	30
27	Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.	6	15
28	Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.	67	24
29	Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.	59	11
30	Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.	15	7
31	Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.	31	5
32	Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.	25	11
33	Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.	40	28
34	Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.	71	23
35	Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.	64	23
36	Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.	2	29
37	Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo.	34	2
38	In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.	1	25
39	Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.	1	15
40	Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.	8	6
41	Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.	70	21
42	Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.	88	10
43	Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.	9	5
44	Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.	78	25
45	Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.	23	8
46	In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.	39	7
47	Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.	10	12
48	Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.	4	13
49	Suspendisse potenti.	77	25
50	Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.	24	19
51	Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.	58	14
52	Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.	21	18
53	Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.	96	2
54	Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.	38	25
55	Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.	75	29
56	Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.	61	16
57	Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus turpis.	94	1
58	Nam dui. Proin leo odio, porttitor consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo.	39	8
59	In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.	69	25
60	Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.	8	17
61	Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.	100	6
62	Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.	53	30
63	Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.	12	23
64	Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.	70	2
65	Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.	21	16
66	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.	87	7
67	Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.	65	4
68	Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.	16	28
69	Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.	79	1
70	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.	81	13
71	Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.	38	21
72	Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.	81	8
73	Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.	53	25
74	Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.	86	22
75	Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.	57	27
76	Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.	46	4
77	Aenean auctor gravida sem.	24	1
78	Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.	22	8
79	Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.	73	24
80	Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.	59	18
81	Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum luctus nec, molestie sed, justo.	98	19
82	Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.	15	22
83	Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.	100	2
84	Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.	66	23
85	Maecenas rhoncus aliquam lacus.	64	19
86	Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.	2	9
87	Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.	48	17
88	Morbi ut odio.	76	18
89	Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.	55	29
90	Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.	77	15
91	Donec dapibus. Duis at velit eu est congue elementum.	23	27
206	Antofagasta  	1	31
208	Coquimbo  	1	31
209	Valparaiso  	1	31
210	Metropolitana de Santiago  	1	31
92	Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.	81	27
93	Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.	45	28
94	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.	69	22
95	In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.	5	8
96	Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.	44	8
97	Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.	95	26
98	Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.	7	16
99	Sed ante. Vivamus tortor. Duis mattis egestas metus.	55	15
100	Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.	36	22
109	prueba	1	32
110	volcan	1	32
111	volcanes	1	32
112	Libertador General Bernardo OHiggins Coltauco 	1	32
113	Valparaiso null 	1	32
114	Valparaiso  	1	32
115	Atacama  	1	32
116	Antofagasta  	1	32
120	clove	1	33
121	tony	1	33
122	tony	1	33
123	tony	1	33
125	Los Ríos  	1	31
126	Volcanes	1	31
127	prueba	1	31
128	prueba	1	31
129	prueba	1	31
130	prueba	1	31
131	prueba	1	31
132	prueba	1	31
133	prueba	1	31
134	prueba	1	31
135	prueba	1	31
136	prueba	1	31
137	prueba	1	31
138	prueba	1	31
139	prueba	1	31
140	prueba	1	31
141	prueba	1	31
142	prueba	1	31
143	prueba	1	31
144	prueba	1	31
145	prueba	1	31
146	prueba	1	31
147	prueba	1	31
148	prueba	1	31
149	prueba	1	31
150	prueba	1	31
151	prueba	1	31
152	prueba	1	31
153	prueba	1	31
154	prueba	1	31
155	prueba	1	31
156	prueba	1	31
157	prueba	1	31
158	prueba	1	31
159	prueba	1	31
160	prueba	1	31
161	prueba	1	31
162	prueba	1	31
163	prueba	1	31
164	prueba	1	31
165	prueba	1	31
166	prueba	1	31
167	prueba	1	31
168	prueba	1	31
169	prueba	1	31
170	prueba	1	31
171	prueba	1	31
172	prueba	1	31
173	prueba	1	31
174	prueba	1	31
175	prueba	1	31
176	prueba	1	31
177	prueba	1	31
178	prueba	1	31
179	prueba	1	31
180	prueba	1	31
181	prueba	1	31
182	prueba	1	31
183	prueba	1	31
184	prueba	1	31
185	prueba	1	31
186	prueba	1	31
187	prueba	1	31
188	prueba	1	31
189	prueba	1	31
190	prueba	1	31
191	prueba	1	31
192	prueba	1	31
193	prueba	1	31
194	prueba	1	31
195	prueba	1	31
196	prueba	1	31
197	prueba	1	31
198	prueba	1	31
199	prueba	1	31
200	prueba	1	31
201	prueba	1	31
202	prueba	1	31
203	volcanes	1	31
204	Arica y Parinacota  	1	31
205	Tarapacá  	1	31
207	Atacama  	1	31
211	Libertador General Bernardo OHiggins  	1	31
213	Ñuble  	1	31
218	Los Lagos  	1	31
222	Metropolitana de Santiago  	1	31
223	Antofagasta  	1	31
212	Maule  	1	31
214	Biobío  	1	31
215	La Araucanía  	1	31
216	La Araucanía  	1	31
217	Los Ríos  	1	31
219	Aysén del General Carlos Ibáñez del Campo  	1	31
220	Magallanes y de la Antártica Chilena  	1	31
221	Magallanes y de la Antártica Chilena  	1	31
224	Antofagasta  	1	31
\.


--
-- Data for Name: historial_comunas; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.historial_comunas (id, frecuencia, id_comuna, id_usuario) FROM stdin;
1	12	8	18
2	34	8	5
3	62	7	25
4	41	3	10
5	69	6	5
6	93	1	29
7	78	1	2
8	91	5	16
9	15	6	28
10	1	6	24
11	56	5	28
12	65	9	21
13	7	8	24
14	87	4	5
15	22	7	21
16	94	10	30
17	30	10	13
18	71	8	28
19	72	3	27
20	5	7	23
21	75	10	28
22	89	7	18
23	13	4	6
24	32	9	12
25	54	10	30
26	54	10	6
27	65	1	12
28	79	6	16
29	47	4	8
30	59	3	6
31	23	5	5
32	17	8	3
33	54	9	20
34	39	2	19
35	100	3	24
36	4	6	19
37	72	8	23
38	29	7	10
39	93	2	15
40	3	2	22
41	36	5	19
42	58	5	7
43	81	3	15
44	1	2	29
45	23	5	20
46	58	5	7
47	93	8	21
48	14	9	5
49	44	10	14
50	70	3	22
51	42	3	10
52	62	8	16
53	90	7	10
54	23	4	23
55	80	6	1
56	7	5	27
57	34	9	5
58	41	4	16
59	2	5	4
60	89	2	26
61	22	9	30
62	24	10	18
63	93	6	8
64	40	8	9
65	76	10	13
66	96	2	30
67	60	10	9
68	20	7	17
69	100	5	9
70	5	4	5
71	2	6	23
72	34	8	10
73	19	5	29
74	94	9	4
75	44	3	11
76	48	9	30
77	40	1	6
78	10	6	29
79	96	9	25
80	1	9	14
81	18	10	28
82	71	1	21
83	27	1	13
84	96	1	4
85	83	10	29
86	88	2	2
87	27	5	4
88	45	9	4
89	67	6	22
90	54	8	5
91	98	7	7
92	64	7	18
93	35	1	19
94	73	2	21
95	43	8	2
96	5	4	7
97	37	5	29
98	38	8	10
99	38	3	22
100	74	1	23
101	2	10	31
102	1	40	32
103	1	40	31
105	1	6	31
104	2	4	31
106	2	6	33
\.


--
-- Data for Name: historial_ofertas; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.historial_ofertas (id, id_oferta, id_usuario, frecuencia) FROM stdin;
1	9	2	83
2	1	6	392
3	20	8	781
4	4	8	172
5	1	10	32
6	25	8	319
7	17	30	586
8	26	19	955
9	8	29	549
10	25	23	269
11	20	17	608
12	25	28	321
13	25	30	603
14	24	8	386
15	19	27	856
16	21	22	977
17	8	17	329
18	18	26	957
19	23	26	643
20	29	24	405
21	23	7	219
22	22	13	975
23	28	17	124
24	28	14	767
25	23	30	380
26	30	14	39
27	15	15	777
28	5	29	524
29	26	23	528
30	27	6	803
31	26	22	178
32	3	27	295
33	22	11	63
34	19	29	312
35	19	12	430
36	2	25	716
37	14	12	418
38	20	30	785
39	26	27	661
40	1	15	338
41	5	22	216
42	13	24	385
43	7	19	552
44	6	4	944
45	15	18	56
46	24	21	684
47	5	29	946
48	23	25	849
49	9	9	751
50	14	23	360
51	24	8	577
52	21	28	645
53	23	29	465
54	2	14	924
55	29	20	614
56	30	27	904
57	8	24	30
58	14	25	643
59	21	6	603
60	26	4	154
61	10	18	145
62	28	18	251
63	8	6	900
64	10	21	429
65	11	27	667
66	24	11	525
67	26	26	216
68	10	7	201
69	15	23	257
70	20	16	228
71	19	17	501
72	1	13	955
73	21	23	598
74	11	25	246
75	16	9	325
76	25	1	509
77	9	11	297
78	3	28	357
79	10	14	356
80	17	18	976
81	7	7	727
82	14	21	215
83	25	24	49
84	9	21	171
85	17	26	886
86	9	3	123
87	20	14	934
88	26	5	798
89	7	5	537
90	30	5	887
91	4	4	954
92	29	26	265
93	24	2	556
94	16	9	571
95	14	21	552
96	6	5	602
97	2	16	41
98	26	2	982
99	7	1	770
100	10	14	234
101	3	31	2
102	1	31	1
103	134	32	1
104	134	31	1
105	14	31	1
106	117	31	1
107	18	31	1
108	24	33	2
\.


--
-- Data for Name: historial_regiones; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.historial_regiones (id, frecuencia, id_region, id_usuario) FROM stdin;
1	99	6	9
2	9	8	8
3	34	6	4
4	2	10	23
5	37	5	17
6	63	3	11
7	46	6	16
8	92	10	25
9	84	10	24
10	85	3	9
11	28	8	9
12	69	7	5
13	5	7	14
14	70	2	1
15	9	3	11
16	56	9	25
17	8	5	10
18	21	9	30
19	56	4	19
20	37	4	17
21	78	10	5
22	44	5	27
23	5	9	19
24	77	10	8
25	74	4	26
26	73	2	20
27	30	10	23
28	13	8	17
29	20	8	23
30	72	6	15
31	14	3	26
32	8	8	2
33	62	1	30
34	64	1	3
35	100	2	3
36	84	8	6
37	77	6	6
38	80	2	13
39	36	3	12
40	86	2	29
41	57	4	7
42	52	4	22
43	42	5	2
44	2	5	2
45	48	5	27
46	63	9	24
47	91	3	30
48	67	7	16
49	18	9	12
50	59	6	9
51	15	3	25
52	100	3	6
53	52	3	2
54	73	5	26
55	57	4	6
56	39	9	6
57	78	3	19
58	67	6	12
59	76	3	6
60	88	4	22
61	27	9	18
62	56	4	2
63	58	5	6
64	47	10	15
65	13	10	9
66	11	2	7
67	26	2	17
68	21	10	17
69	1	8	26
70	53	9	27
71	59	4	27
72	65	10	9
73	61	7	14
74	16	1	5
75	51	3	1
76	17	6	7
77	29	3	19
78	48	10	4
79	97	5	24
80	29	6	9
81	62	9	13
82	43	6	10
83	36	7	11
84	74	6	29
85	14	8	12
86	98	3	18
87	42	7	11
88	69	8	20
89	57	5	23
90	48	10	2
91	94	10	15
92	8	6	21
93	6	2	5
94	71	5	22
95	26	8	19
96	20	7	26
97	56	4	7
98	70	9	28
99	52	9	17
100	85	5	28
102	1	5	32
103	1	5	31
101	4	2	31
104	2	1	31
105	2	2	33
\.


--
-- Data for Name: oferta_consideraciones; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.oferta_consideraciones (id, id_oferta, id_consideracion) FROM stdin;
1	3	5
2	3	2
3	12	2
4	17	2
5	15	2
6	26	3
7	11	4
8	27	2
9	25	5
10	8	3
11	24	4
12	16	2
13	7	3
14	30	4
15	14	2
16	7	5
17	26	3
18	18	2
19	8	3
20	30	2
21	19	4
22	13	6
23	13	2
24	1	2
25	16	3
26	23	3
27	26	3
28	11	2
29	18	4
30	24	6
31	19	5
32	19	6
33	2	2
34	4	2
35	5	3
36	6	3
37	9	4
38	10	2
39	20	3
40	21	3
41	22	5
42	28	3
43	29	2
86	73	1
87	74	1
88	75	1
89	76	1
90	77	1
91	78	1
92	79	1
93	80	1
94	81	1
95	82	1
96	83	1
97	84	1
98	85	1
99	86	1
100	87	1
101	88	1
102	89	1
103	90	1
104	91	1
105	92	1
106	93	1
107	94	1
108	95	1
109	96	1
110	97	1
111	98	1
112	99	1
113	100	1
114	101	1
115	102	1
116	103	1
117	104	1
118	105	1
119	106	1
120	107	1
121	108	1
122	109	1
123	110	1
124	111	1
125	112	1
126	113	1
127	114	1
128	115	1
129	116	1
130	117	1
131	118	1
132	119	1
133	120	1
134	121	1
135	122	1
136	123	1
137	124	1
138	125	1
139	126	1
140	127	1
141	128	1
142	129	1
143	130	1
144	131	1
145	132	1
146	133	1
147	134	1
148	135	1
149	136	1
150	137	1
151	138	1
152	139	1
153	140	1
154	141	1
155	142	1
156	143	1
157	144	1
158	145	1
159	146	1
160	147	1
161	148	1
162	149	1
163	150	1
164	151	1
165	152	1
166	153	1
167	154	1
168	155	1
169	156	1
170	157	1
171	158	1
172	159	1
173	160	1
174	161	1
175	162	1
176	163	1
177	164	1
178	165	1
179	166	1
180	167	1
181	168	1
182	169	1
183	170	1
184	171	1
185	172	1
186	173	1
187	174	1
188	175	1
189	176	1
190	177	1
191	178	1
192	179	1
193	180	1
194	181	1
195	182	1
196	183	1
197	184	1
198	185	1
199	186	1
200	187	1
201	188	1
202	189	1
203	190	1
204	191	1
205	192	1
206	193	1
207	194	1
208	195	1
209	196	1
210	197	1
211	198	1
212	199	1
213	200	1
214	201	1
215	202	1
216	203	1
217	204	1
218	205	1
219	206	1
220	207	1
221	208	1
222	209	1
223	210	1
224	211	1
225	212	1
226	213	1
227	214	1
228	215	1
229	216	1
230	217	1
231	218	1
232	219	1
233	220	1
234	221	1
235	139	2
236	139	4
237	139	5
238	140	5
239	141	2
240	141	4
241	141	3
242	142	5
243	143	3
244	143	2
245	144	2
246	144	3
247	145	5
248	145	3
249	145	4
250	146	3
251	147	3
252	148	3
253	148	5
254	148	2
255	149	2
256	149	5
257	149	3
258	150	4
259	150	5
260	150	3
261	151	3
262	151	4
263	152	3
264	152	2
265	153	5
266	153	2
267	154	2
268	154	4
269	154	5
270	155	3
271	155	4
272	156	4
273	156	5
274	156	2
275	157	3
276	157	2
277	158	2
278	158	3
279	159	2
280	160	2
281	161	4
282	161	2
283	162	5
284	162	3
285	162	2
286	163	2
287	163	4
288	163	5
289	164	3
290	165	2
291	166	3
292	166	2
293	166	4
294	167	2
295	167	3
296	168	2
297	168	4
298	168	5
299	169	2
300	169	5
301	170	4
302	170	3
303	170	2
304	171	4
305	172	4
306	172	5
307	172	3
308	173	3
309	173	4
310	173	2
311	174	5
312	174	3
313	175	4
314	176	5
315	177	5
316	177	3
317	177	2
318	178	3
319	179	4
320	180	5
321	180	2
322	180	4
323	181	4
324	181	2
325	182	5
326	183	5
327	184	5
328	184	3
329	184	2
330	185	3
331	185	5
332	185	2
333	186	4
334	186	3
335	187	3
336	187	2
337	188	2
338	188	5
339	188	4
340	189	2
341	189	5
342	189	3
343	190	2
344	190	5
345	190	3
346	191	4
347	192	5
348	192	2
349	192	3
350	193	2
351	194	4
352	195	5
353	196	2
354	196	4
355	196	3
356	197	4
357	198	2
358	198	4
359	198	3
360	199	5
361	200	4
362	200	2
363	200	3
364	201	3
365	201	2
366	202	2
367	203	2
368	203	4
369	203	3
370	204	4
371	204	5
372	205	3
373	206	3
374	206	5
375	206	4
376	207	2
377	207	4
378	207	5
379	208	5
380	208	3
381	209	4
382	209	2
383	209	3
384	210	5
385	211	5
386	211	2
387	212	2
388	212	5
389	213	3
390	213	5
391	213	2
392	214	4
393	214	5
394	214	3
395	215	5
396	215	4
397	215	2
398	216	4
399	217	5
400	218	4
401	219	5
402	220	3
403	220	5
404	220	2
\.


--
-- Data for Name: ofertas_turisticas; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.ofertas_turisticas (id, nombre, precio, ubicacion, url_imagen, fecha_inicio, fecha_final, id_proveedor, id_comuna) FROM stdin;
1	Utah	81603	\N	\N	2020-06-23	2021-05-08	1	10
2	Donald	17865	\N	\N	2019-04-26	2021-01-27	1	5
3	Packers	67991	\N	\N	2019-05-28	2021-06-17	1	10
4	Meadow Vale	5789	\N	\N	2019-04-18	2021-08-16	1	8
5	Lindbergh	55644	\N	\N	2021-01-12	2021-10-09	1	8
6	Monterey	95944	\N	\N	2020-03-14	2021-08-07	1	6
7	Tony	67138	\N	\N	2019-06-28	2021-04-25	1	6
8	Forest Dale	79426	\N	\N	2019-09-15	2021-06-11	1	3
9	Oriole	8904	\N	\N	2019-02-13	2021-04-25	1	1
10	Arizona	28384	\N	\N	2019-08-26	2020-10-27	1	9
11	Evergreen	82919	\N	\N	2019-11-19	2021-05-29	1	1
12	Warbler	22965	\N	\N	2020-06-15	2020-10-29	1	9
13	Clove	59926	\N	\N	2020-12-17	2021-04-28	1	3
14	Dryden	65888	\N	\N	2020-12-07	2021-03-13	1	4
15	Sundown	65560	\N	\N	2019-02-13	2020-12-15	1	7
16	Nancy	85047	\N	\N	2020-12-21	2021-01-18	1	10
17	Ridge Oak	66201	\N	\N	2020-12-05	2021-09-20	1	3
18	Hovde	38419	\N	\N	2020-04-04	2021-02-10	1	4
19	Havey	93150	\N	\N	2020-03-05	2021-09-15	1	3
20	Bellgrove	37357	\N	\N	2019-05-22	2021-07-24	1	4
21	Kropf	10245	\N	\N	2020-05-07	2021-01-28	1	1
22	Acker	32937	\N	\N	2019-09-23	2021-04-06	1	3
23	Grayhawk	9408	\N	\N	2020-11-11	2020-12-30	1	2
24	Bay	25542	\N	\N	2019-12-05	2020-11-29	1	6
25	Marquette	7983	\N	\N	2020-06-03	2021-06-23	1	7
26	Pennsylvania	11770	\N	\N	2019-05-08	2021-10-06	1	10
27	Jenifer	97398	\N	\N	2019-04-18	2021-08-31	1	9
28	Carey	13436	\N	\N	2019-04-27	2021-05-26	1	3
29	Schlimgen	35435	\N	\N	2020-08-05	2021-02-27	1	7
30	Ohio	53685	\N	\N	2019-10-08	2021-07-02	1	6
73	Ex Casino y Centro Cultural Agustín Ross	Gratuito	Agustín Ross Edwards 495, Pichilemu, OHiggins	\N	2022-01-09	\N	1	6
74	Punta de Lobos	Gratuito	Punta de Lobos S/N 	\N	2022-01-09	\N	1	6
75	Museo Ferroviario		Aníbal Pinto 0375, Pichilemu, OHiggins	\N	2022-01-09	\N	1	6
76	Plaza de Armas Santa Cruz	Gratuito	Plaza de Armas Santa Cruz, Región de OHiggins Chile	\N	2022-01-09	\N	1	6
77	Rancho Campesino El Bronce	$2.500 - $5.000 por persona	La Villa, Cahuil - Pichilemu	\N	2022-01-09	\N	1	6
78	Donde Esaú		Avenida Costanera 604, Pichilemu, OHiggins	\N	2022-01-09	\N	1	6
79	Restaurant Tinajas del Mar		Camino a Cahuil, Pichilemu, OHiggins	\N	2022-01-09	\N	1	6
80	Sal de Cáhuil	$1.500 - $10.000	Localidad de Cahuil y Barrancas, Pichilemu - Región de OHiggins	\N	2022-01-09	\N	1	6
81	Artesanías de Pañul	$500 - $60.000	Localidad de Pañul, Pichilemu - Región de OHiggins	\N	2022-01-09	\N	1	6
82	Manjar y Quesos		Camino a Pichidegua s/n, Marchihue, OHiggins	\N	2022-01-09	\N	1	6
83	Chocolata		Gob. Carlos Bories 852, Punta Arenas, Magallanes y la Antártica Chilena	\N	2022-01-09	\N	1	12
84	Cementerio Municipal Sara Braun		Pedro Sarmiento de Gamboa 29, Punta Arenas, Magallanes y la Antártica Chilena	\N	2022-01-09	\N	1	12
85	Faro Monumental	Gratuito	Avda. Fco de Aguirre con Avenida del Mar S/N	\N	2022-01-09	\N	1	35
86	Museo Arqueológico	Gratuito	Cordovéz esquina Cienfuegos s/n	\N	2022-01-09	\N	1	35
87	Museo Histórico Gabriel González Videla	Gratuito	Calle Matta 495 esquina Cordovez	\N	2022-01-09	\N	1	35
88	Avenida del Mar			\N	2022-01-09	\N	1	35
89	Jardin Japonés	$1000 pesos adultos, $300 pesos niños y $500 pesos adulto mayor	Eduardo de la Barra con Ruta 5 Norte s/n	\N	2022-01-09	\N	1	35
90	Mirador Santa Lucia	Gratuito	Calle General Novoa s/n	\N	2022-01-09	\N	1	35
91	Mercado La Recova		Calle cienfuegos con esquina Cantouernet s/n	\N	2022-01-09	\N	1	35
92	Centro Gastronómico Caleta San Pedro		Caleta San Pedro, a 4 km al norte de La Serena	\N	2022-01-09	\N	1	35
93	Donde El Guatón		Calle Brasil #750	\N	2022-01-09	\N	1	35
94	Mercado La Recova	$1.000 - $50.000	Calle cienfuegos con esquina Cantouernet s/n	\N	2022-01-09	\N	1	35
95	Mall Plaza La Serena		Alberto Solari 1400 La Serena	\N	2022-01-09	\N	1	35
96	Parque Pedro de Valdivia	Gratuito	Brasil esq. Ruta 5 Norte	\N	2022-01-09	\N	1	35
97	Serena Zoo	$3000 pesos entrada general	Sector El Hinojal, por ruta 41 camino hacia el Valle de Elqui	\N	2022-01-09	\N	1	35
98	Mercado La Recova	$1000 - $50.000	Calle cienfuegos con esquina Cantouernet s/n	\N	2022-01-09	\N	1	35
99	Cruz del Tercer Milenio	$2500 Entrada General		\N	2022-01-09	\N	1	36
100	Mezquita de Coquimbo	Gratis	Los Granados 500 Villa Dominante, Coquimbo	\N	2022-01-09	\N	1	36
101	Parque Nacional Río Clarillo	Niño/a nacional (edad igual e inferior a los 11 años) ingreso liberado. Adolescente nacional (12 a 17 años) $2.600. Adulto nacional $5.200. Adulto mayor nacional (sobre 60 años) ingreso liberado. 	camino público asfaltado que une Puente Alto con el poblado de El Principal. Pirque	\N	2022-01-09	\N	1	37
102	Observatorio Roan Jasé		Camino al volcán 29238 San José de Maipo	\N	2022-01-09	\N	1	37
103	Baños Colina	Adulto $8.000 \nNiños 4-13 años: $4.000\nNiños menores de 3 años: Gratis		\N	2022-01-09	\N	1	37
104	Emporio de la Memé	$6.061 - $15.152	Camino al volcán 46307	\N	2022-01-09	\N	1	37
105	Dejavu		Camino al volcán 30180	\N	2022-01-09	\N	1	37
106	Café de las dos		Avenida Ramón Subercaseaux 560. Pirque	\N	2022-01-09	\N	1	37
107	Recuerdos del Cajón del Maipo		Camino al Volcán 9652	\N	2022-01-09	\N	1	37
108	Casa Chocolate tienda boutique		Camino al volcán 30288. San Alfonso, San José de Maipo	\N	2022-01-09	\N	1	37
109	Casa de la cultura Dedal de oro		Camino al volcán s/n	\N	2022-01-09	\N	1	37
110	Lugar 1	precio prueba 1	ubicación prueba 1	\N	2022-01-09	\N	1	6
111	Prueba 2		ubicación prueba 2	\N	2022-01-09	\N	1	6
112	Prueba 1	precio prueba 1	ubicación prueba 1	\N	2022-01-09	\N	1	6
113	Prueba archivo			\N	2022-01-09	\N	1	6
114	Prueba seba1	precio prueba 1	ubicación prueba 1	\N	2022-01-09	\N	1	6
115	Prueba seba2	precio prueba 2	ubicación prueba 2	\N	2022-01-09	\N	1	6
116	Prueba seba1	precio prueba 1	ubicación prueba 1	\N	2022-01-09	\N	1	6
117	Prueba seba2	precio prueba 2	ubicación prueba 2	\N	2022-01-09	\N	1	6
118	prueba pyme seba 1	fgf	sdds	\N	2022-01-09	\N	1	6
119	Prueba		Lugar prueba	\N	2022-01-09	\N	1	6
120	Prueba 2		lugar prueba	\N	2022-01-09	\N	1	6
121	Test		Coquimbo	\N	2022-01-09	\N	1	36
122	Test 2			\N	2022-01-09	\N	1	36
123	Punto 1	4500	maipú	\N	2022-01-09	\N	1	6
124	ola	adad	c	\N	2022-01-09	\N	1	6
125	agosto	sd	dsd	\N	2022-01-09	\N	1	37
126	Parque Aikén del sur		a 84 kms de Coyhaique, vía ruta 240	\N	2022-01-09	\N	1	38
127	Puerto Aysén		a 65 kms al noreste de Coyhaique	\N	2022-01-09	\N	1	38
128	Río Simpson		Varía según el sector a visitar, a 1 km de Coyhaique, o a 30 km en la Reserva Nacional Río Simpson	\N	2022-01-09	\N	1	38
129	prueba pyme seba 1			\N	2022-01-09	\N	1	38
130	Termas de Puyuhuapi Lodge & Spa	Valor: $100.000		\N	2022-01-09	\N	1	38
131	Puerto Aysén y Puerto Chacabuco	Valor: $23.000		\N	2022-01-09	\N	1	38
132	Termas de Huife, aguas del río Liucura	Valor: $20.000	KM 33 CAMINO PUCON - HUIFE	\N	2022-01-09	\N	1	40
133	Montañas, saltos y ancestros: Tour Palguín y Ruka mapuche	Valor: $15.000		\N	2022-01-09	\N	1	40
134	Volcanes y paisajes naturales: visita a la base del Volcán Villarrica	Valor: $10.000		\N	2022-01-09	\N	1	40
135	Tour a Olmué y Limache, campo chileno	Valor: $8.000		\N	2022-01-09	\N	1	39
136	Tour a La Ligua, tradiciones, tejidos y pasteles	Valor: $15.000		\N	2022-01-09	\N	1	39
137	Tour Bahía Coique y Cuenca del Lago Ranco			\N	2022-01-09	\N	1	42
138	Tour Descubre Valdivia, tradición			\N	2022-01-09	\N	1	42
139	Tour Descubre Valdivia, tradición	nose 2	nose 3	\N	2022-01-09	\N	1	42
140	Tour Descubre Valdivia			\N	2022-01-09	\N	1	42
141	Tour Santuario de la Naturaleza Carlos Andwanter			\N	2022-01-09	\N	1	42
142	Tour Navegación fluvial, ríos, humedales y naturaleza 			\N	2022-01-09	\N	1	42
143	Tour Termas de Llifén			\N	2022-01-09	\N	1	42
144	Tour termas en el Sur	15000	Km 33 camino pucon	\N	2022-01-09	\N	1	41
145	Morro de Arica	40000		\N	2022-01-14	\N	1	1
146	Volcán, lago, aguas termales, geiser y desierto	42000		\N	2022-01-14	\N	1	2
147	Volcán, iglesia, lago y parque	41000		\N	2022-01-14	\N	1	3
148	Museo	41000	San Miguel Azapa	\N	2022-01-14	\N	1	4
149	Museo	31000	Iquique playas	\N	2022-01-14	\N	1	5
150	Aguas termales y desierto	31000		\N	2022-01-14	\N	1	6
151	Alto hospicio	31000		\N	2022-01-14	\N	1	8
152	La tirana música tradicional y artesanía	31000		\N	2022-01-14	\N	1	10
153	Mano del desierto	28000		\N	2022-01-14	\N	1	12
154	La portada, parque con un arco de piedra	28000		\N	2022-01-14	\N	1	13
155	Museo de antofagasta	28000		\N	2022-01-14	\N	1	14
156	Museo ruinas de Huanchaca	28000		\N	2022-01-14	\N	1	15
157	Enjoy Antofagasta	28000		\N	2022-01-14	\N	1	16
158	Catedral	25000		\N	2022-01-14	\N	1	21
159	Bahía inglesa	25000		\N	2022-01-14	\N	1	22
160	Playa la piscina y las machas	25000		\N	2022-01-14	\N	1	23
161	Caldera centro cultural	25000		\N	2022-01-14	\N	1	24
162	Huasco	25000		\N	2022-01-14	\N	1	25
163	Totoralillo hoteles	25000		\N	2022-01-14	\N	1	30
164	Enjoy Coquimbo	25000		\N	2022-01-14	\N	1	31
165	Playa La Herradura	25000		\N	2022-01-14	\N	1	32
166	Cruz del Tercer Milenio	25000		\N	2022-01-14	\N	1	33
167	Peñuelas	25000		\N	2022-01-14	\N	1	34
168	Reñaca playas y hoteles	47000		\N	2022-01-14	\N	1	44
169	Casa museo La Sebastiana	47000		\N	2022-01-14	\N	1	45
170	Quinta Vergara	47000		\N	2022-01-14	\N	1	46
171	Palacio Baburizza	47000		\N	2022-01-14	\N	1	47
172	Jardín botánico de viña del mar	47000		\N	2022-01-14	\N	1	48
173	Cajon del Maipo	44000		\N	2022-01-14	\N	1	83
174	Hoteles en Santiago	44000		\N	2022-01-14	\N	1	85
175	Cerro San Cristobal hoteles	44000		\N	2022-01-14	\N	1	85
176	Museo interactivo	44000		\N	2022-01-14	\N	1	86
177	Pichilemu playa punta de lobos	44000		\N	2022-01-14	\N	1	135
178	Lindas vistas de Rancagua	19000		\N	2022-01-14	\N	1	136
179	Santa cruz, vinos y museo	19000		\N	2022-01-14	\N	1	137
180	Sewell minería	19000		\N	2022-01-14	\N	1	138
181	San fernardo lindas vistas y aguas termales	19000		\N	2022-01-14	\N	1	139
182	Vinos de Talca	19000		\N	2022-01-14	\N	1	168
183	Curicó parque Radal hoteles	22000		\N	2022-01-14	\N	1	169
184	Constitucion playas y ríos	22000		\N	2022-01-14	\N	1	170
185	Catedral Linares	22000		\N	2022-01-14	\N	1	170
186	Cunaripe playa	22000		\N	2022-01-14	\N	1	171
187	Buchupureo playa	15000		\N	2022-01-14	\N	1	198
188	Cobquecura playa	15000		\N	2022-01-14	\N	1	199
189	Pinto aguas termales	15000		\N	2022-01-14	\N	1	200
190	Camping y río San Fabían	15000		\N	2022-01-14	\N	1	201
191	San Carlos hoteles	15000		\N	2022-01-14	\N	1	201
192	Museo de concepción	23000		\N	2022-01-14	\N	1	219
193	Talcahuano casino y playa	23000		\N	2022-01-14	\N	1	220
194	Mural en casa del Arte	23000		\N	2022-01-14	\N	1	221
195	Los ángeles bonita cascada hoteles	23000		\N	2022-01-14	\N	1	222
196	Laja acampada y río	23000		\N	2022-01-14	\N	1	223
197	Centro de aventura	28000		\N	2022-01-14	\N	1	252
198	Cerro Ñielol y Plaza Anibal Pinto	28000		\N	2022-01-14	\N	1	253
199	Volcán Villarica y Lago Verde	28000		\N	2022-01-14	\N	1	254
200	Lagos, playas y acampadas	28000		\N	2022-01-14	\N	1	255
201	Aguas termales Curacautin	28000		\N	2022-01-14	\N	1	255
202	Lago panguipulli bonitas vistas	23000		\N	2022-01-14	\N	1	284
203	Isla Teja y mercado de mariscos	23000		\N	2022-01-14	\N	1	285
204	Panguipulli vistas	23000		\N	2022-01-14	\N	1	285
205	Ríos, museos y cerveza	23000		\N	2022-01-14	\N	1	286
206	Mercado de mariscos, ríos y lagos	23000		\N	2022-01-14	\N	1	287
207	Isla Grande de Chiloe	29000		\N	2022-01-14	\N	1	296
208	Playas y Pinguinos	29000		\N	2022-01-14	\N	1	296
209	Lago y arquitectura alemana	29000		\N	2022-01-14	\N	1	297
210	Fiordos bonitos estadía	29000		\N	2022-01-14	\N	1	297
211	Teatro del Lago	29000		\N	2022-01-14	\N	1	297
212	Reserva río Simpson	40000		\N	2022-01-14	\N	1	326
213	Cerro McKay	40000		\N	2022-01-14	\N	1	327
214	Parque Nacional Queulat	40000		\N	2022-01-14	\N	1	328
215	Río Tranquilo puerto	40000		\N	2022-01-14	\N	1	329
216	Glaciar, clueva y lago hospedaje	40000		\N	2022-01-14	\N	1	330
217	Torres del Paine	45000		\N	2022-01-14	\N	1	336
218	Estrecho de Magallanes	45000		\N	2022-01-14	\N	1	337
219	Parque y lago en Paine	45000		\N	2022-01-14	\N	1	337
220	Lago Pehué	45000		\N	2022-01-14	\N	1	338
221	Dientes de Navarino	45000		\N	2022-01-14	\N	1	338
\.


--
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.proveedores (id, nombre, web, telefono, correo) FROM stdin;
1	Sernatur	https://www.sernatur.cl/	600 600 60 66	turismoatiende@sernatur.cl
\.


--
-- Data for Name: regiones; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.regiones (id, nombre, abreviatura, capital, url_imagen) FROM stdin;
1	Arica y Parinacota	AP	Arica	https://chileanendemics.rbge.org.uk/images/uploads/_hero/PN-Chungar%C3%A1-Arica-Parinacota-PC-2007.jpg
2	Tarapacá	TA	Iquique	https://www.cambioclimaticochile.cl/wp-content/uploads/2018/06/Tarapaca.jpg
4	Atacama	AT	Copiapó	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqdmr62oRXccLXbTKUNoBJU2njhZ0kMmuS6g&usqp=CAU
5	Coquimbo	CO	La Serena	https://upload.wikimedia.org/wikipedia/commons/6/60/Cruz_del_Tercer_Milenio.jpg
6	Valparaiso	VA	valparaíso	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP9Sdtdqw119QDJzRlZmaP_jAYf0TX2kFaqg&usqp=CAU
8	Libertador General Bernardo OHiggins	OH	Rancagua	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgMdfKXM4NQbjl-JUAd6xb0Ij4MJ2l6iRjeg&usqp=CAU
9	Maule	MA	Talca	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrlcmAYeF8mc3emSFtt_CvVMexqF6c3utRkg&usqp=CAU
10	Ñuble	NB	Chillán	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtqkcBK8bGxT_iqaU4BH6OCNqZoJtPVt3P_w&usqp=CAU
11	Biobío	BI	Concepción	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMnw5TF1jUBRT7Ff4aKTW6rmf2Phl8inmbMg&usqp=CAU
12	La Araucanía	IAR	Temuco	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxc-4rkmL1KffhmEUPPJQ2hT3BStH2ivYQWw&usqp=CAU
13	Los Ríos	LR	Valdivia	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLYMci4pbXVejTkFTz05_6czbEAItSCbcEkA&usqp=CAU
14	Los Lagos	LL	Puerto Montt	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRagw6mh2F-ywpS6ZR8zZXLoJBkMBkYvVdK2g&usqp=CAU
15	Aysén del General Carlos Ibáñez del Campo	AI	Coyhaique	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNGZyuyG55m7gIzp-o5n3CYiBnDeetLhla2w&usqp=CAU
16	Magallanes y de la Antártica Chilena	MG	Punta Arenas	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKyLY7Zp5qtEJb5XUT2PCk84-q1Xg3gSBLIA&usqp=CAU
7	Metropolitana de Santiago	RM	Santiago	https://images.pexels.com/photos/2017747/pexels-photo-2017747.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500
3	Antofagasta	AN	Antofagasta	https://i3.visitchile.com/img/GalleryContent/231/Antofagasta1.jpg
\.


--
-- Data for Name: scrapings; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.scrapings (id, nombredb, ultimatupla) FROM stdin;
1	chilepass	269
\.


--
-- Data for Name: usuario_consideraciones; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.usuario_consideraciones (id, id_consideracion, id_usuario) FROM stdin;
1	2	1
2	4	29
3	2	18
4	5	27
5	5	20
6	2	19
7	6	18
8	5	23
9	2	27
10	4	15
11	5	9
12	6	4
13	4	5
14	6	26
15	4	8
16	5	6
17	3	22
18	1	27
19	6	27
20	5	11
21	3	8
22	2	29
23	3	19
24	6	26
25	6	4
26	4	27
27	5	11
28	5	28
29	6	23
30	5	13
48	6	33
49	5	33
203	2	31
204	6	31
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: ejdgaispifmugu
--

COPY public.usuarios (id, nombre, correo, fecha_nacimiento, id_comuna) FROM stdin;
1	Goldina Probin	gprobin0@si.edu	2020-03-04	5
2	Waneta Filppetti	wfilppetti1@reuters.com	2003-12-17	6
3	Emilie MacCheyne	emaccheyne2@yelp.com	1979-01-06	6
4	Juliette Cerman	jcerman3@wisc.edu	2015-02-01	4
5	Land Kenelin	lkenelin4@dmoz.org	1924-02-23	7
6	Kent Moukes	kmoukes5@walmart.com	1978-07-21	8
7	Padraig Saiens	psaiens6@mtv.com	1991-12-30	3
8	Fredia Brauner	fbrauner7@deliciousdays.com	1980-02-10	9
9	Anthiathia Gronowe	agronowe8@paginegialle.it	1989-05-20	8
10	Wilhelm Boutellier	wboutellier9@indiatimes.com	2003-12-26	2
11	Giselle Rebillard	grebillarda@thetimes.co.uk	1922-09-12	2
12	Horatia Doidge	hdoidgeb@domainmarket.com	2001-02-14	7
13	Essie Baseley	ebaseleyc@canalblog.com	1964-06-23	6
14	Myrvyn Dan	mdand@google.ca	2001-05-21	4
15	Yuma Barbe	ybarbee@dyndns.org	2006-11-20	10
16	Lucina Fesby	lfesbyf@wired.com	1950-07-25	3
17	Alaster Bezemer	abezemerg@businesswire.com	1936-07-07	6
18	Marv Ridoutt	mridoutth@bing.com	1940-06-15	1
19	Heinrik Whapples	hwhapplesi@timesonline.co.uk	2007-02-23	9
20	Rodolph Freemantle	rfreemantlej@netvibes.com	1956-04-28	6
21	Harli Leghorn	hleghornk@wiley.com	2018-07-12	1
22	Lin Drewet	ldrewetl@ihg.com	1942-01-26	6
23	Ty Jeanneau	tjeanneaum@reddit.com	1994-11-06	2
24	Cindy Skydall	cskydalln@chron.com	1980-10-18	1
25	Abbey Fortune	afortuneo@topsy.com	1967-07-10	8
26	Christal Fautley	cfautleyp@mlb.com	1972-04-19	6
27	Ephrem Gillard	egillardq@huffingtonpost.com	1964-04-14	10
28	Petrina Lacaze	placazer@foxnews.com	1922-12-04	5
29	Nilson Riccelli	nriccellis@fastcompany.com	1919-02-03	4
30	Orazio Ohrtmann	oohrtmannt@google.fr	2004-02-10	6
32	Isaac Greendell Rojas Aedos	swater.isaactv@gmail.com	2000-03-29	202
33	Vanessa Sáez	vanessa.saez@usach.cl	1991-12-27	100
31	Isaac Greendell Rojas Aedo	isaac.rojas@usach.cl	2000-03-23	23
\.


--
-- Name: comunas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.comunas_id_seq', 346, true);


--
-- Name: consideraciones_medicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.consideraciones_medicas_id_seq', 6, true);


--
-- Name: historial_busquedas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.historial_busquedas_id_seq', 224, true);


--
-- Name: historial_comunas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.historial_comunas_id_seq', 106, true);


--
-- Name: historial_ofertas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.historial_ofertas_id_seq', 108, true);


--
-- Name: historial_regiones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.historial_regiones_id_seq', 105, true);


--
-- Name: oferta_consideraciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.oferta_consideraciones_id_seq', 404, true);


--
-- Name: ofertas_turisticas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.ofertas_turisticas_id_seq', 221, true);


--
-- Name: proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.proveedores_id_seq', 1, true);


--
-- Name: regiones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.regiones_id_seq', 16, true);


--
-- Name: scrapings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.scrapings_id_seq', 1, true);


--
-- Name: usuario_consideraciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.usuario_consideraciones_id_seq', 204, true);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ejdgaispifmugu
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 33, true);


--
-- Name: comunas comunas_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.comunas
    ADD CONSTRAINT comunas_pkey PRIMARY KEY (id);


--
-- Name: consideraciones_medicas consideraciones_medicas_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.consideraciones_medicas
    ADD CONSTRAINT consideraciones_medicas_pkey PRIMARY KEY (id);


--
-- Name: historial_busquedas historial_busquedas_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_busquedas
    ADD CONSTRAINT historial_busquedas_pkey PRIMARY KEY (id);


--
-- Name: historial_comunas historial_comunas_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_comunas
    ADD CONSTRAINT historial_comunas_pkey PRIMARY KEY (id);


--
-- Name: historial_ofertas historial_ofertas_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_ofertas
    ADD CONSTRAINT historial_ofertas_pkey PRIMARY KEY (id);


--
-- Name: historial_regiones historial_regiones_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_regiones
    ADD CONSTRAINT historial_regiones_pkey PRIMARY KEY (id);


--
-- Name: oferta_consideraciones oferta_consideraciones_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.oferta_consideraciones
    ADD CONSTRAINT oferta_consideraciones_pkey PRIMARY KEY (id);


--
-- Name: ofertas_turisticas ofertas_turisticas_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.ofertas_turisticas
    ADD CONSTRAINT ofertas_turisticas_pkey PRIMARY KEY (id);


--
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id);


--
-- Name: regiones regiones_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.regiones
    ADD CONSTRAINT regiones_pkey PRIMARY KEY (id);


--
-- Name: scrapings scrapings_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.scrapings
    ADD CONSTRAINT scrapings_pkey PRIMARY KEY (id);


--
-- Name: usuario_consideraciones usuario_consideraciones_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.usuario_consideraciones
    ADD CONSTRAINT usuario_consideraciones_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: usuarios fk_comuna; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_comuna FOREIGN KEY (id_comuna) REFERENCES public.comunas(id);


--
-- Name: ofertas_turisticas fk_comuna; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.ofertas_turisticas
    ADD CONSTRAINT fk_comuna FOREIGN KEY (id_comuna) REFERENCES public.comunas(id);


--
-- Name: historial_comunas fk_comuna; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_comunas
    ADD CONSTRAINT fk_comuna FOREIGN KEY (id_comuna) REFERENCES public.comunas(id);


--
-- Name: usuario_consideraciones fk_consideracion; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.usuario_consideraciones
    ADD CONSTRAINT fk_consideracion FOREIGN KEY (id_consideracion) REFERENCES public.consideraciones_medicas(id);


--
-- Name: oferta_consideraciones fk_consideracion; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.oferta_consideraciones
    ADD CONSTRAINT fk_consideracion FOREIGN KEY (id_consideracion) REFERENCES public.consideraciones_medicas(id);


--
-- Name: historial_ofertas fk_oferta; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_ofertas
    ADD CONSTRAINT fk_oferta FOREIGN KEY (id_oferta) REFERENCES public.ofertas_turisticas(id);


--
-- Name: oferta_consideraciones fk_oferta; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.oferta_consideraciones
    ADD CONSTRAINT fk_oferta FOREIGN KEY (id_oferta) REFERENCES public.ofertas_turisticas(id);


--
-- Name: ofertas_turisticas fk_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.ofertas_turisticas
    ADD CONSTRAINT fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id);


--
-- Name: comunas fk_region; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.comunas
    ADD CONSTRAINT fk_region FOREIGN KEY (id_region) REFERENCES public.regiones(id);


--
-- Name: historial_regiones fk_region; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_regiones
    ADD CONSTRAINT fk_region FOREIGN KEY (id_region) REFERENCES public.regiones(id);


--
-- Name: historial_busquedas fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_busquedas
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- Name: historial_regiones fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_regiones
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- Name: historial_comunas fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_comunas
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- Name: usuario_consideraciones fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.usuario_consideraciones
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- Name: historial_ofertas fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: ejdgaispifmugu
--

ALTER TABLE ONLY public.historial_ofertas
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: ejdgaispifmugu
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO ejdgaispifmugu;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO ejdgaispifmugu;


--
-- PostgreSQL database dump complete
--

