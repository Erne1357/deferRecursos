--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2024-07-30 02:19:20

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
-- TOC entry 241 (class 1259 OID 34666)
-- Name: abonos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abonos (
    id_abono integer NOT NULL,
    monto_abono numeric(10,2) NOT NULL,
    fecha date NOT NULL,
    id_deuda integer
);


ALTER TABLE public.abonos OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 34665)
-- Name: abonos_id_abono_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.abonos_id_abono_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abonos_id_abono_seq OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 240
-- Name: abonos_id_abono_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.abonos_id_abono_seq OWNED BY public.abonos.id_abono;


--
-- TOC entry 247 (class 1259 OID 34767)
-- Name: ajuste_inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ajuste_inventario (
    id_ajuste integer NOT NULL,
    id_stock integer NOT NULL,
    cantidad_ajustada numeric(10,2) NOT NULL,
    razon text NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_usuario integer
);


ALTER TABLE public.ajuste_inventario OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 34766)
-- Name: ajuste_inventario_id_ajuste_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ajuste_inventario_id_ajuste_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ajuste_inventario_id_ajuste_seq OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 246
-- Name: ajuste_inventario_id_ajuste_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ajuste_inventario_id_ajuste_seq OWNED BY public.ajuste_inventario.id_ajuste;


--
-- TOC entry 221 (class 1259 OID 34509)
-- Name: aromas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aromas (
    id_aroma integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text
);


ALTER TABLE public.aromas OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 34508)
-- Name: aromas_id_aroma_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aromas_id_aroma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aromas_id_aroma_seq OWNER TO postgres;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 220
-- Name: aromas_id_aroma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aromas_id_aroma_seq OWNED BY public.aromas.id_aroma;


--
-- TOC entry 215 (class 1259 OID 34482)
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 34481)
-- Name: categorias_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 214
-- Name: categorias_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_id_categoria_seq OWNED BY public.categorias.id_categoria;


--
-- TOC entry 225 (class 1259 OID 34527)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(100) NOT NULL,
    telefono character varying(20),
    correo character varying(100),
    calle character varying(100),
    numero character varying(10),
    colonia character varying(100),
    ciudad character varying(100),
    estado character varying(100),
    cp character varying(10),
    forma_de_pago character varying(50),
    tipo character varying(50),
    razon_social character varying(100)
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 34526)
-- Name: clientes_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 224
-- Name: clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;


--
-- TOC entry 251 (class 1259 OID 34796)
-- Name: conversiones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversiones (
    id_conversion integer NOT NULL,
    id_unidad_origen integer NOT NULL,
    id_unidad_destino integer NOT NULL,
    factor_conversion numeric(10,6) NOT NULL
);


ALTER TABLE public.conversiones OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 34795)
-- Name: conversiones_id_conversion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversiones_id_conversion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversiones_id_conversion_seq OWNER TO postgres;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 250
-- Name: conversiones_id_conversion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversiones_id_conversion_seq OWNED BY public.conversiones.id_conversion;


--
-- TOC entry 235 (class 1259 OID 34606)
-- Name: detalle_ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_ventas (
    id_detalle integer NOT NULL,
    cantidad integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    id_producto integer,
    id_venta integer
);


ALTER TABLE public.detalle_ventas OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 34605)
-- Name: detalle_ventas_id_detalle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_ventas_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_ventas_id_detalle_seq OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 234
-- Name: detalle_ventas_id_detalle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_ventas_id_detalle_seq OWNED BY public.detalle_ventas.id_detalle;


--
-- TOC entry 239 (class 1259 OID 34654)
-- Name: deudas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deudas (
    id_deuda integer NOT NULL,
    monto_total numeric(10,2) NOT NULL,
    monto_restante numeric(10,2) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_limite date NOT NULL,
    tiene_credito boolean NOT NULL,
    id_cliente integer
);


ALTER TABLE public.deudas OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 34653)
-- Name: deudas_id_deuda_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deudas_id_deuda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deudas_id_deuda_seq OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 238
-- Name: deudas_id_deuda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deudas_id_deuda_seq OWNED BY public.deudas.id_deuda;


--
-- TOC entry 217 (class 1259 OID 34491)
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcas (
    id_marca integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text
);


ALTER TABLE public.marcas OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 34490)
-- Name: marcas_id_marca_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marcas_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marcas_id_marca_seq OWNER TO postgres;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 216
-- Name: marcas_id_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcas_id_marca_seq OWNED BY public.marcas.id_marca;


--
-- TOC entry 237 (class 1259 OID 34623)
-- Name: materias_primas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materias_primas (
    id_materia_prima integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    stock numeric NOT NULL,
    unidad_medida character varying(50),
    id_proveedor integer,
    id_presentacion integer
);


ALTER TABLE public.materias_primas OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 34622)
-- Name: materias_primas_id_materia_prima_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materias_primas_id_materia_prima_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materias_primas_id_materia_prima_seq OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 236
-- Name: materias_primas_id_materia_prima_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materias_primas_id_materia_prima_seq OWNED BY public.materias_primas.id_materia_prima;


--
-- TOC entry 219 (class 1259 OID 34500)
-- Name: presentaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.presentaciones (
    id_presentacion integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    cantidad numeric(10,2) NOT NULL,
    id_unidad integer NOT NULL
);


ALTER TABLE public.presentaciones OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 34499)
-- Name: presentaciones_id_presentacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.presentaciones_id_presentacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.presentaciones_id_presentacion_seq OWNER TO postgres;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 218
-- Name: presentaciones_id_presentacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.presentaciones_id_presentacion_seq OWNED BY public.presentaciones.id_presentacion;


--
-- TOC entry 229 (class 1259 OID 34543)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    id_categoria integer,
    id_proveedor integer,
    id_marca integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 34542)
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_producto_seq OWNER TO postgres;

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 228
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- TOC entry 223 (class 1259 OID 34518)
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedores (
    id_proveedor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    telefono character varying(20),
    correo character varying(100)
);


ALTER TABLE public.proveedores OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 34517)
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedores_id_proveedor_seq OWNER TO postgres;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 222
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.proveedores.id_proveedor;


--
-- TOC entry 231 (class 1259 OID 34567)
-- Name: stock_especifico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock_especifico (
    id_stock integer NOT NULL,
    cantidad integer NOT NULL,
    precio_venta numeric(10,2) NOT NULL,
    id_producto integer,
    id_presentacion integer,
    id_aroma integer,
    precio_compra numeric(10,2) DEFAULT 0
);


ALTER TABLE public.stock_especifico OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 34566)
-- Name: stock_especifico_id_stock_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stock_especifico_id_stock_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stock_especifico_id_stock_seq OWNER TO postgres;

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 230
-- Name: stock_especifico_id_stock_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stock_especifico_id_stock_seq OWNED BY public.stock_especifico.id_stock;


--
-- TOC entry 249 (class 1259 OID 34787)
-- Name: unidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.unidades (
    id_unidad integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.unidades OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 34786)
-- Name: unidades_id_unidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.unidades_id_unidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidades_id_unidad_seq OWNER TO postgres;

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 248
-- Name: unidades_id_unidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.unidades_id_unidad_seq OWNED BY public.unidades.id_unidad;


--
-- TOC entry 243 (class 1259 OID 34681)
-- Name: uso_materias_primas_especifico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uso_materias_primas_especifico (
    id_uso integer NOT NULL,
    id_materia_prima integer NOT NULL,
    id_stock_fabricado integer NOT NULL,
    cantidad_usada numeric(10,2) NOT NULL,
    fecha date DEFAULT CURRENT_DATE NOT NULL,
    id_presentacion integer
);


ALTER TABLE public.uso_materias_primas_especifico OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 34680)
-- Name: uso_materias_primas_especifico_id_uso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.uso_materias_primas_especifico_id_uso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uso_materias_primas_especifico_id_uso_seq OWNER TO postgres;

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 242
-- Name: uso_materias_primas_especifico_id_uso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.uso_materias_primas_especifico_id_uso_seq OWNED BY public.uso_materias_primas_especifico.id_uso;


--
-- TOC entry 245 (class 1259 OID 34699)
-- Name: uso_stock_especifico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uso_stock_especifico (
    id_uso integer NOT NULL,
    id_stock_utilizado integer NOT NULL,
    id_stock_fabricado integer NOT NULL,
    cantidad_usada numeric(10,2) NOT NULL,
    fecha date DEFAULT CURRENT_DATE NOT NULL,
    id_presentacion integer
);


ALTER TABLE public.uso_stock_especifico OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 34698)
-- Name: uso_stock_especifico_id_uso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.uso_stock_especifico_id_uso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uso_stock_especifico_id_uso_seq OWNER TO postgres;

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 244
-- Name: uso_stock_especifico_id_uso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.uso_stock_especifico_id_uso_seq OWNED BY public.uso_stock_especifico.id_uso;


--
-- TOC entry 227 (class 1259 OID 34536)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    usuario character varying(100) NOT NULL,
    contrasena character varying(100) NOT NULL,
    rol character varying(50)
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 34535)
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 226
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- TOC entry 233 (class 1259 OID 34589)
-- Name: ventas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventas (
    id_venta integer NOT NULL,
    fecha date NOT NULL,
    monto_total numeric(10,2) NOT NULL,
    id_usuario integer,
    id_cliente integer
);


ALTER TABLE public.ventas OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 34588)
-- Name: ventas_id_venta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventas_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ventas_id_venta_seq OWNER TO postgres;

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 232
-- Name: ventas_id_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventas_id_venta_seq OWNED BY public.ventas.id_venta;


--
-- TOC entry 3277 (class 2604 OID 34669)
-- Name: abonos id_abono; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abonos ALTER COLUMN id_abono SET DEFAULT nextval('public.abonos_id_abono_seq'::regclass);


--
-- TOC entry 3282 (class 2604 OID 34770)
-- Name: ajuste_inventario id_ajuste; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ajuste_inventario ALTER COLUMN id_ajuste SET DEFAULT nextval('public.ajuste_inventario_id_ajuste_seq'::regclass);


--
-- TOC entry 3266 (class 2604 OID 34512)
-- Name: aromas id_aroma; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aromas ALTER COLUMN id_aroma SET DEFAULT nextval('public.aromas_id_aroma_seq'::regclass);


--
-- TOC entry 3263 (class 2604 OID 34485)
-- Name: categorias id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);


--
-- TOC entry 3268 (class 2604 OID 34530)
-- Name: clientes id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);


--
-- TOC entry 3285 (class 2604 OID 34799)
-- Name: conversiones id_conversion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversiones ALTER COLUMN id_conversion SET DEFAULT nextval('public.conversiones_id_conversion_seq'::regclass);


--
-- TOC entry 3274 (class 2604 OID 34609)
-- Name: detalle_ventas id_detalle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas ALTER COLUMN id_detalle SET DEFAULT nextval('public.detalle_ventas_id_detalle_seq'::regclass);


--
-- TOC entry 3276 (class 2604 OID 34657)
-- Name: deudas id_deuda; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deudas ALTER COLUMN id_deuda SET DEFAULT nextval('public.deudas_id_deuda_seq'::regclass);


--
-- TOC entry 3264 (class 2604 OID 34494)
-- Name: marcas id_marca; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas ALTER COLUMN id_marca SET DEFAULT nextval('public.marcas_id_marca_seq'::regclass);


--
-- TOC entry 3275 (class 2604 OID 34626)
-- Name: materias_primas id_materia_prima; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias_primas ALTER COLUMN id_materia_prima SET DEFAULT nextval('public.materias_primas_id_materia_prima_seq'::regclass);


--
-- TOC entry 3265 (class 2604 OID 34503)
-- Name: presentaciones id_presentacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presentaciones ALTER COLUMN id_presentacion SET DEFAULT nextval('public.presentaciones_id_presentacion_seq'::regclass);


--
-- TOC entry 3270 (class 2604 OID 34546)
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- TOC entry 3267 (class 2604 OID 34521)
-- Name: proveedores id_proveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);


--
-- TOC entry 3271 (class 2604 OID 34570)
-- Name: stock_especifico id_stock; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_especifico ALTER COLUMN id_stock SET DEFAULT nextval('public.stock_especifico_id_stock_seq'::regclass);


--
-- TOC entry 3284 (class 2604 OID 34790)
-- Name: unidades id_unidad; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unidades ALTER COLUMN id_unidad SET DEFAULT nextval('public.unidades_id_unidad_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 34684)
-- Name: uso_materias_primas_especifico id_uso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_materias_primas_especifico ALTER COLUMN id_uso SET DEFAULT nextval('public.uso_materias_primas_especifico_id_uso_seq'::regclass);


--
-- TOC entry 3280 (class 2604 OID 34702)
-- Name: uso_stock_especifico id_uso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_stock_especifico ALTER COLUMN id_uso SET DEFAULT nextval('public.uso_stock_especifico_id_uso_seq'::regclass);


--
-- TOC entry 3269 (class 2604 OID 34539)
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 3273 (class 2604 OID 34592)
-- Name: ventas id_venta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas ALTER COLUMN id_venta SET DEFAULT nextval('public.ventas_id_venta_seq'::regclass);


--
-- TOC entry 3519 (class 0 OID 34666)
-- Dependencies: 241
-- Data for Name: abonos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abonos (id_abono, monto_abono, fecha, id_deuda) FROM stdin;
\.


--
-- TOC entry 3525 (class 0 OID 34767)
-- Dependencies: 247
-- Data for Name: ajuste_inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ajuste_inventario (id_ajuste, id_stock, cantidad_ajustada, razon, fecha, id_usuario) FROM stdin;
\.


--
-- TOC entry 3499 (class 0 OID 34509)
-- Dependencies: 221
-- Data for Name: aromas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aromas (id_aroma, nombre, descripcion) FROM stdin;
1	Lavanda	Aroma a lavanda
2	Channel	Aroma a Channel
3	Chicle	Aroma a chicle
4	Fresa	Aroma a fresa
5	Calvin Klein	Aroma a Calvin Klein
6	Cereza	Aroma a cereza
7	Coco	Aroma a coco
8	Vainilla	Aroma a vainilla
9	Paco	Aroma a Paco
10	Canela	Aroma a canela
11	Carro nuevo	Aroma a carro nuevo
12	Black ice	Aroma a Black Ice
13	Carolhe	Aroma a Carolhe
\.


--
-- TOC entry 3493 (class 0 OID 34482)
-- Dependencies: 215
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categorias (id_categoria, nombre, descripcion) FROM stdin;
1	Desengrasantes	Productos desengrasantes para diversas superficies
2	Limpiadores	Limpiadores para diferentes aplicaciones
3	Limpieza para carro	Productos de limpieza y cuidado para automóviles
4	Venenos y más	Venenos y productos relacionados
5	Ratoneras	Productos para control de roedores
6	Escobas	Diferentes tipos de escobas
7	Trapeadores	Diferentes tipos de trapeadores
8	Productos de limpieza	Diversos productos de limpieza
9	Limpiavidrios y jaladores	Productos para limpieza de vidrios y jaladores
10	Mechudos	Diferentes tipos de mechudos
11	Limpieza de pisos	Productos y accesorios para limpieza de pisos
12	Envases y atomizadores	Envases y atomizadores para diferentes usos
13	Telas	Diversos tipos de telas para limpieza
14	Fibras	Diferentes tipos de fibras para limpieza
15	Bolsas	Diversos tipos de bolsas
16	Guantes	Diferentes tipos de guantes
17	Aromatizantes	Aromatizantes para diversos usos
18	Desinfectantes	Productos desinfectantes
19	Limpieza	Otros productos de limpieza
20	Limpieza para baño	Productos para limpieza de baños
21	Dispensadores	Diversos tipos de dispensadores
22	Papel higiénico	Diferentes tipos de papel higiénico
23	Toallas	Diferentes tipos de toallas
\.


--
-- TOC entry 3503 (class 0 OID 34527)
-- Dependencies: 225
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, nombre, telefono, correo, calle, numero, colonia, ciudad, estado, cp, forma_de_pago, tipo, razon_social) FROM stdin;
\.


--
-- TOC entry 3529 (class 0 OID 34796)
-- Dependencies: 251
-- Data for Name: conversiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversiones (id_conversion, id_unidad_origen, id_unidad_destino, factor_conversion) FROM stdin;
\.


--
-- TOC entry 3513 (class 0 OID 34606)
-- Dependencies: 235
-- Data for Name: detalle_ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_ventas (id_detalle, cantidad, precio, id_producto, id_venta) FROM stdin;
\.


--
-- TOC entry 3517 (class 0 OID 34654)
-- Dependencies: 239
-- Data for Name: deudas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deudas (id_deuda, monto_total, monto_restante, fecha_inicio, fecha_limite, tiene_credito, id_cliente) FROM stdin;
\.


--
-- TOC entry 3495 (class 0 OID 34491)
-- Dependencies: 217
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcas (id_marca, nombre, descripcion) FROM stdin;
1	Defer	Marca Defer
2	Generica	Marca genérica
3	Wiese	Marca Wiese de aromatizante
4	Glade	Marca glade de aromatizante
\.


--
-- TOC entry 3515 (class 0 OID 34623)
-- Dependencies: 237
-- Data for Name: materias_primas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materias_primas (id_materia_prima, nombre, descripcion, stock, unidad_medida, id_proveedor, id_presentacion) FROM stdin;
\.


--
-- TOC entry 3497 (class 0 OID 34500)
-- Dependencies: 219
-- Data for Name: presentaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.presentaciones (id_presentacion, nombre, descripcion, cantidad, id_unidad) FROM stdin;
8	grande	Tamaño grande	0.00	1
9	chica	Tamaño chica	0.00	1
14	36x5	36x5 pulgadas	0.00	1
15	48x5	48x5 pulgadas	0.00	1
16	24x5	24x5 pulgadas	0.00	1
17	c4pz	Contiene 4 piezas	0.00	1
18	c2pz	Contiene 2 piezas	0.00	1
19	c25sobres20g	Caja con 25 sobres de 20 gramos cada uno	0.00	1
20	24x33	24 x 33 pulgadas	0.00	1
21	33x40	33 x 40 pulgadas	0.00	1
22	38x60	38 x 60 pulgadas	0.00	1
24	mediano	Tamaño mediano	0.00	1
25	grande	Tamaño grande	0.00	1
26	chico	Tamaño chico	0.00	1
27	c100pz	Contiene 100 piezas	0.00	1
1	500 ml	500 mililitros	0.00	1
2	1 l	1 litro	0.00	1
3	3.87 l	3.87 litros	0.00	1
4	19 l	19 litros	0.00	1
5	125 ml	125 mililitros	0.00	1
6	500 g	500 gramos	0.00	1
7	1 kg	1 kilogramo	0.00	1
10	40 cm	40 centímetros	0.00	1
11	50 cm	50 centímetros	0.00	1
12	60 cm	60 centímetros	0.00	1
13	30 cm	30 centímetros	0.00	1
23	900 ml	900 mililitros	0.00	1
30	Metalico chico	Tamaño chico hecho de metal	0.00	1
31	Plastico grande	Tamaño grande hecho de plastico	0.00	1
28	boca mediana	Boca mediana	0.00	1
29	boca grande	Boca grande	0.00	1
32	90 cm	90 centimetros	0.00	1
33	120 cm	120 centimetros	0.00	1
34	Blanco 19	Discos para pulir color blanco de 19 pulgadas	0.00	1
35	Natural 19	Discos para pulir color natural de 19 pulgadas	0.00	1
36	Negro 19	Discos para pulir color Negro de 19 pulgadas	0.00	1
37	Rojo 19	Discos para pulir color Rojo de 19 pulgadas	0.00	1
38	900 ml	900 mililitros	0.00	1
39	Economico	Economico 	0.00	1
40	Industrial	Industrial	0.00	1
41	jumbo	Tamaño jumbo	0.00	1
42	400 ml	400 mililitros	0.00	1
43	24 oz	24 onzas	0.00	1
44	32 oz	32 onzas	0.00	1
45	Jr	Junior	0.00	1
46	180 Jr	180 por unidad 	0.00	1
47	700	700 por unidad 	0.00	1
\.


--
-- TOC entry 3507 (class 0 OID 34543)
-- Dependencies: 229
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, nombre, descripcion, id_categoria, id_proveedor, id_marca) FROM stdin;
1	Degreaser	Desengrasante	1	\N	1
2	Red Power	Desengrasante	1	\N	1
3	Blue Power	Desengrasante	1	\N	1
4	Green Power	Desengrasante	1	\N	1
5	Motor Sol	Desengrasante	1	\N	1
6	Sarri-Limp	Limpiador	2	\N	1
7	Cloro	Cloro	2	\N	1
8	Pino Limp	Limpiador	2	\N	1
9	Windess	Limpiador	2	\N	1
10	Limpiador multiusos tipo fabuloso	Limpiador multiusos	2	\N	1
11	Impregnador para mechudos	Impregnador	2	\N	1
12	Plato Det	Detergente para platos	2	\N	1
13	Hi Limp	Limpiador	2	\N	1
14	Suavi Limp	Limpiador	2	\N	1
15	Hi Bac	Limpiador	2	\N	1
16	Detergente para ropa	Detergente	2	\N	1
17	Armorol	Limpieza para carro	3	\N	1
18	Brillol	Limpieza para carro	3	\N	1
19	Bug Wash	Limpieza para carro	3	\N	1
20	Aromatizante Ambiental	Aromatizante Ambiental	3	\N	1
21	Doña Cuva	Veneno	4	\N	1
22	Cynoffer	Veneno	4	\N	1
23	Zapper sin moscas	Veneno	4	\N	1
24	Pulgosos	Veneno	4	\N	1
25	Acido muriatico	Ácido muriático	4	\N	1
26	Metanol	Metanol	4	\N	1
27	Thinner	Thinner	4	\N	1
28	Sosa caustica	Sosa cáustica	4	\N	1
29	Guserina	Glicerina	4	\N	1
30	Ratonera de madera	Ratonera	5	\N	1
31	Ratoneras de pegamento	Ratonera	5	\N	1
32	Pelets	Ratonera	5	\N	1
33	Escopa cepillo	Escoba	6	\N	1
34	Escoba abanico	Escoba	6	\N	1
35	Cepillo grueso	Cepillo	6	\N	1
36	Cepillo lavacoches	Cepillo	6	\N	1
37	Escoba peñolera	Escoba	6	\N	1
38	Escoba Domestica	Escoba	6	\N	1
39	Rastrillo Jardinero	Rastrillo	6	\N	1
40	Trapeador algodón	Trapeador	7	\N	1
41	Trapeador magitel	Trapeador	7	\N	1
42	Micro fibra tipo toalla	Micro fibra	7	\N	1
43	Micro fibra lisa	Micro fibra	7	\N	1
44	Recogedor de lámina	Recogedor	8	\N	1
45	Recogedor de plástico	Recogedor	8	\N	1
46	Cepillo de plancha	Cepillo	8	\N	1
47	Cepillo para wc con base	Cepillo	8	\N	1
48	Plumero removedor de Polvo	Plumero	8	\N	1
49	Basurero rectangular	Basurero	8	\N	1
50	Exprimidores	Exprimidor	8	\N	1
51	Bomba para wc	Bomba	8	\N	1
52	Limpiavidrios	Limpiavidrios	9	\N	1
53	Jalador de lámina reforzado de cuero	Jalador	9	\N	1
54	Jalador de piso	Jalador	9	\N	1
55	Jalador de hule espuma con base metálica	Jalador	9	\N	1
56	Funda para mops	Funda para mops	10	\N	1
57	Bases metálicas intercambiables	Bases metálicas	10	\N	1
58	Cubeta con exprimidor y separador	Cubeta	11	\N	1
59	Letrero piso mojado	Letrero	11	\N	1
60	Discos para pulir pisos	Discos	11	\N	1
61	Botellas	Botellas	12	\N	1
64	Pistola atomizador económico	Pistola atomizador	12	\N	1
65	Franela	Franela	13	\N	1
66	Jerga	Jerga	13	\N	1
67	Scott Shop Towel	Towel	13	\N	1
68	Pañuelos Kleenex	Pañuelos	13	\N	1
69	Fibra verde	Fibra	14	\N	1
70	Fibra esponja	Fibra	14	\N	1
71	Fibra plástica	Fibra	14	\N	1
72	Fibra metálica	Fibra	14	\N	1
73	Paños de microfibra	Paños	14	\N	1
74	Bolsa de alta densidad	Bolsa	15	\N	1
75	Bolsa de baja densidad	Bolsa	15	\N	1
76	Bolsa plástica para despachar	Bolsa	15	\N	1
77	Bolsa transparente	Bolsa	15	\N	1
78	Látex multiusos	Guantes	16	\N	1
79	Guantes de nitrilo	Guantes	16	\N	1
80	Aromatizante	Aromatizante	17	\N	1
81	Aromatizante manual Wiese	Aromatizante	17	\N	3
82	Aromatizante manual Glade	Aromatizante	17	\N	4
83	Desinfectante para superficies	Desinfectante	18	\N	1
84	Ajax amonia	Desinfectante	18	\N	1
85	Ajax bicloro	Desinfectante	18	\N	1
86	Aceite Pledge	Limpieza	19	\N	1
87	Dex	Limpieza	19	\N	1
88	Mota para trapeador	Limpieza	19	\N	1
89	Mango metalico	Limpieza	19	\N	1
90	Pastilla para baño	Limpieza para baño	20	\N	1
91	Tapete para migitorio	Limpieza para baño	20	\N	1
92	Tapete para migitorio con pastilla	Limpieza para baño	20	\N	1
93	Dispensador humo	Dispensador	21	\N	1
94	Dispensador toalla en rollo humo	Dispensador	21	\N	1
95	Dispensador toalla Inter mini	Dispensador	21	\N	1
96	Jabonera a granel	Dispensador	21	\N	1
97	Dispensador programable	Dispensador	21	\N	1
98	Higiénico	Papel higiénico	22	\N	1
99	Cono para agua	Papel higiénico	22	\N	1
100	Toalla rollo blanca	Toalla	23	\N	1
101	Toalla rollo canela	Toalla	23	\N	1
102	Toalla Fapsa blanco	Toalla	23	\N	1
103	Toalla Fapsa kraft	Toalla	23	\N	1
62	Botella con atomizador economico	Botella con atomizador economico	12	\N	1
63	Pistola atomizador uso industrial	Pistola atomizador	12	\N	1
104	Botella con atomizador industrial	Botella con atomizaro industrial	12	\N	1
105	Caja papel higienico	Caja de papel higienico	22	\N	2
106	Caja cono para agua	Caja de conos para agua	22	\N	2
107	Caja toalla rollo blanca	Caja de toalla rollo blanca	23	\N	2
108	Caja toalla rollo canela	Caja de toalla rollo canela	23	\N	2
109	Caja toalla fapsa blanca	Caja de toalla fapsa color blanco	23	\N	2
110	Caja toalla fapsa kraft	Caja de toalla fapsa color kraft	23	\N	2
\.


--
-- TOC entry 3501 (class 0 OID 34518)
-- Dependencies: 223
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedores (id_proveedor, nombre, descripcion, telefono, correo) FROM stdin;
1	BETA	Proveedor BETA	\N	\N
2	ECODELI	Proveedor ECODELI	\N	\N
3	EMPAX	Proveedor EMPAX	\N	\N
4	GALLEGOS	Proveedor GALLEGOS	\N	\N
5	JAMZA	Proveedor JAMZA	\N	\N
6	JEM	Proveedor JEM	\N	\N
7	MANUCHAR	Proveedor MANUCHAR	\N	\N
8	RICASA	Proveedor RICASA	\N	\N
9	PLASTIPRODUCTOS	Proveedor PLASTIPRODUCTOS	\N	\N
\.


--
-- TOC entry 3509 (class 0 OID 34567)
-- Dependencies: 231
-- Data for Name: stock_especifico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stock_especifico (id_stock, cantidad, precio_venta, id_producto, id_presentacion, id_aroma, precio_compra) FROM stdin;
1	0	30.00	1	1	\N	0.00
2	0	45.00	1	2	\N	0.00
3	0	95.00	1	3	\N	0.00
4	0	450.00	1	4	\N	0.00
5	0	30.00	2	1	\N	0.00
6	0	45.00	2	2	\N	0.00
7	0	95.00	2	3	\N	0.00
8	0	450.00	2	4	\N	0.00
9	0	30.00	3	1	\N	0.00
10	0	45.00	3	2	\N	0.00
11	0	95.00	3	3	\N	0.00
12	0	450.00	3	4	\N	0.00
13	0	30.00	4	1	\N	0.00
14	0	45.00	4	2	\N	0.00
15	0	95.00	4	3	\N	0.00
16	0	450.00	4	4	\N	0.00
17	0	30.00	5	1	\N	0.00
18	0	45.00	5	2	\N	0.00
19	0	95.00	5	3	\N	0.00
20	0	450.00	5	4	\N	0.00
21	0	30.00	6	1	\N	0.00
22	0	45.00	6	2	\N	0.00
23	0	95.00	6	3	\N	0.00
24	0	450.00	6	4	\N	0.00
25	0	14.00	7	2	\N	0.00
26	0	50.00	7	3	\N	0.00
27	0	170.00	7	4	\N	0.00
28	0	16.00	8	2	\N	0.00
29	0	50.00	8	3	\N	0.00
30	0	250.00	8	4	\N	0.00
31	0	30.00	9	2	\N	0.00
32	0	110.00	9	3	\N	0.00
33	0	230.00	9	4	\N	0.00
34	0	14.00	10	2	\N	0.00
35	0	50.00	10	3	\N	0.00
36	0	225.00	10	4	\N	0.00
37	0	60.00	11	2	\N	0.00
38	0	180.00	11	3	\N	0.00
39	0	795.00	11	4	\N	0.00
40	0	30.00	12	2	\N	0.00
41	0	105.00	12	3	\N	0.00
42	0	450.00	12	4	\N	0.00
43	0	30.00	13	2	\N	0.00
44	0	105.00	13	3	\N	0.00
45	0	450.00	13	4	\N	0.00
46	0	30.00	14	2	\N	0.00
47	0	105.00	14	3	\N	0.00
48	0	450.00	14	4	\N	0.00
49	0	30.00	15	2	\N	0.00
50	0	105.00	15	3	\N	0.00
51	0	450.00	15	4	\N	0.00
52	0	30.00	16	2	\N	0.00
53	0	105.00	16	3	\N	0.00
54	0	450.00	16	4	\N	0.00
55	0	45.00	17	1	\N	0.00
56	0	60.00	17	2	\N	0.00
57	0	250.00	17	3	\N	0.00
58	0	995.00	17	4	\N	0.00
59	0	30.00	18	1	\N	0.00
60	0	45.00	18	2	\N	0.00
61	0	150.00	18	3	\N	0.00
62	0	595.00	18	4	\N	0.00
63	0	30.00	19	2	\N	0.00
64	0	105.00	19	3	\N	0.00
65	0	450.00	19	4	\N	0.00
66	0	20.00	20	5	1	0.00
67	0	30.00	20	1	1	0.00
68	0	45.00	20	2	1	0.00
69	0	130.00	20	3	1	0.00
70	0	450.00	20	4	1	0.00
71	0	20.00	20	5	2	0.00
72	0	30.00	20	1	2	0.00
73	0	45.00	20	2	2	0.00
74	0	130.00	20	3	2	0.00
75	0	450.00	20	4	2	0.00
76	0	20.00	20	5	3	0.00
77	0	30.00	20	1	3	0.00
78	0	45.00	20	2	3	0.00
79	0	130.00	20	3	3	0.00
80	0	450.00	20	4	3	0.00
81	0	20.00	20	5	4	0.00
82	0	30.00	20	1	4	0.00
83	0	45.00	20	2	4	0.00
84	0	130.00	20	3	4	0.00
85	0	450.00	20	4	4	0.00
86	0	20.00	20	5	5	0.00
87	0	30.00	20	1	5	0.00
88	0	45.00	20	2	5	0.00
89	0	130.00	20	3	5	0.00
90	0	450.00	20	4	5	0.00
91	0	20.00	20	5	6	0.00
92	0	30.00	20	1	6	0.00
93	0	45.00	20	2	6	0.00
94	0	130.00	20	3	6	0.00
95	0	450.00	20	4	6	0.00
96	0	20.00	20	5	7	0.00
97	0	30.00	20	1	7	0.00
98	0	45.00	20	2	7	0.00
99	0	130.00	20	3	7	0.00
100	0	450.00	20	4	7	0.00
101	0	20.00	20	5	8	0.00
102	0	30.00	20	1	8	0.00
103	0	45.00	20	2	8	0.00
104	0	130.00	20	3	8	0.00
105	0	450.00	20	4	8	0.00
106	0	20.00	20	5	9	0.00
107	0	30.00	20	1	9	0.00
108	0	45.00	20	2	9	0.00
109	0	130.00	20	3	9	0.00
110	0	450.00	20	4	9	0.00
111	0	20.00	20	5	10	0.00
112	0	30.00	20	1	10	0.00
113	0	45.00	20	2	10	0.00
114	0	130.00	20	3	10	0.00
115	0	450.00	20	4	10	0.00
116	0	20.00	20	5	11	0.00
117	0	30.00	20	1	11	0.00
118	0	45.00	20	2	11	0.00
119	0	130.00	20	3	11	0.00
120	0	450.00	20	4	11	0.00
121	0	20.00	20	5	12	0.00
122	0	30.00	20	1	12	0.00
123	0	45.00	20	2	12	0.00
124	0	130.00	20	3	12	0.00
125	0	450.00	20	4	12	0.00
126	0	20.00	20	5	13	0.00
127	0	30.00	20	1	13	0.00
128	0	45.00	20	2	13	0.00
129	0	130.00	20	3	13	0.00
130	0	450.00	20	4	13	0.00
131	0	45.00	21	2	\N	0.00
132	0	150.00	21	3	\N	0.00
133	0	450.00	21	4	\N	0.00
134	0	45.00	22	2	\N	0.00
135	0	150.00	22	3	\N	0.00
136	0	450.00	22	4	\N	0.00
137	0	45.00	23	1	\N	0.00
138	0	25.00	24	1	\N	0.00
139	0	10.00	25	1	\N	0.00
140	0	16.00	25	2	\N	0.00
141	0	50.00	25	3	\N	0.00
142	0	195.00	25	4	\N	0.00
143	0	68.00	26	2	\N	0.00
144	0	35.00	27	1	\N	0.00
145	0	45.00	27	2	\N	0.00
146	0	38.00	28	6	\N	0.00
147	0	58.00	28	7	\N	0.00
148	0	38.00	29	1	\N	0.00
149	0	39.00	30	8	\N	0.00
150	0	19.00	30	9	\N	0.00
151	0	38.00	31	17	\N	0.00
152	0	40.00	31	18	\N	0.00
153	0	300.00	32	19	\N	0.00
154	0	38.00	33	\N	\N	0.00
155	0	47.00	34	24	\N	0.00
156	0	47.00	34	25	\N	0.00
157	0	60.00	35	13	\N	0.00
158	0	65.00	35	10	\N	0.00
159	0	95.00	35	12	\N	0.00
160	0	95.00	36	\N	\N	0.00
161	0	125.00	37	\N	\N	0.00
162	0	95.00	38	\N	\N	0.00
163	0	95.00	39	30	\N	0.00
164	0	95.00	39	31	\N	0.00
165	0	69.00	40	25	\N	0.00
166	0	60.00	40	24	\N	0.00
167	0	48.00	40	26	\N	0.00
168	0	48.00	41	\N	\N	0.00
169	0	125.00	42	\N	\N	0.00
170	0	125.00	43	\N	\N	0.00
171	0	45.00	44	26	\N	0.00
172	0	55.00	44	25	\N	0.00
173	0	26.00	45	\N	\N	0.00
174	0	16.00	46	\N	\N	0.00
175	0	38.00	47	\N	\N	0.00
176	0	39.00	48	\N	\N	0.00
177	0	125.00	49	\N	\N	0.00
178	0	110.00	50	28	\N	0.00
179	0	115.00	50	29	\N	0.00
180	0	38.00	51	\N	\N	0.00
181	0	60.00	52	\N	\N	0.00
182	0	70.00	53	10	\N	0.00
183	0	75.00	53	11	\N	0.00
184	0	65.00	54	10	\N	0.00
185	0	225.00	55	\N	\N	0.00
186	0	100.00	56	12	\N	0.00
187	0	135.00	56	32	\N	0.00
188	0	155.00	56	33	\N	0.00
189	0	150.00	57	16	\N	0.00
190	0	160.00	57	14	\N	0.00
191	0	170.00	57	15	\N	0.00
192	0	1850.00	58	\N	\N	0.00
193	0	275.00	59	\N	\N	0.00
194	0	95.00	60	34	\N	0.00
195	0	95.00	60	35	\N	0.00
196	0	95.00	60	36	\N	0.00
197	0	95.00	60	37	\N	0.00
198	0	9.00	61	1	\N	0.00
199	0	9.00	61	38	\N	0.00
200	0	20.00	62	1	\N	0.00
201	0	20.00	62	38	\N	0.00
202	0	25.00	104	1	\N	0.00
203	0	25.00	104	38	\N	0.00
204	0	16.00	63	\N	\N	0.00
205	0	12.00	64	\N	\N	0.00
206	0	18.00	65	\N	\N	0.00
207	0	18.00	66	\N	\N	0.00
208	0	59.00	67	\N	\N	0.00
209	0	25.00	68	\N	\N	0.00
210	0	8.00	69	\N	\N	0.00
211	0	8.00	70	\N	\N	0.00
212	0	12.00	71	\N	\N	0.00
213	0	8.00	72	9	\N	0.00
214	0	12.00	72	24	\N	0.00
215	0	14.00	72	25	\N	0.00
216	0	18.00	72	41	\N	0.00
217	0	18.00	73	\N	\N	0.00
218	0	60.00	74	24	\N	0.00
219	0	60.00	74	25	\N	0.00
220	0	50.00	75	20	\N	0.00
221	0	50.00	75	21	\N	0.00
222	0	50.00	75	22	\N	0.00
223	0	148.00	76	\N	\N	0.00
224	0	85.00	77	\N	\N	0.00
225	0	22.00	78	26	\N	0.00
226	0	22.00	78	24	\N	0.00
227	0	22.00	78	25	\N	0.00
228	0	105.00	79	25	\N	0.00
229	0	65.00	80	\N	\N	0.00
230	0	45.00	81	42	\N	0.00
231	0	45.00	82	42	\N	0.00
232	0	125.00	83	\N	\N	0.00
233	0	49.00	84	2	\N	0.00
234	0	38.00	85	\N	\N	0.00
235	0	79.00	86	\N	\N	0.00
236	0	250.00	87	\N	\N	0.00
237	0	80.00	88	43	\N	0.00
238	0	90.00	88	44	\N	0.00
239	0	175.00	89	\N	\N	0.00
240	0	18.00	90	\N	\N	0.00
241	0	25.00	91	\N	\N	0.00
242	0	35.00	92	\N	\N	0.00
243	0	450.00	93	45	\N	0.00
244	0	450.00	93	41	\N	0.00
245	0	1300.00	94	\N	\N	0.00
246	0	295.00	95	\N	\N	0.00
247	0	295.00	96	\N	\N	0.00
248	0	390.00	97	\N	\N	0.00
249	0	35.00	98	46	\N	0.00
250	0	70.00	98	47	\N	0.00
251	0	385.00	105	46	\N	0.00
252	0	399.00	105	47	\N	0.00
253	0	85.00	99	1	\N	0.00
254	0	70.00	100	1	\N	0.00
255	0	75.00	101	1	\N	0.00
256	0	48.00	102	1	\N	0.00
257	0	48.00	103	2	\N	0.00
\.


--
-- TOC entry 3527 (class 0 OID 34787)
-- Dependencies: 249
-- Data for Name: unidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.unidades (id_unidad, nombre, descripcion) FROM stdin;
1	litros	Litros
2	mililitros	Mililitros
\.


--
-- TOC entry 3521 (class 0 OID 34681)
-- Dependencies: 243
-- Data for Name: uso_materias_primas_especifico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uso_materias_primas_especifico (id_uso, id_materia_prima, id_stock_fabricado, cantidad_usada, fecha, id_presentacion) FROM stdin;
\.


--
-- TOC entry 3523 (class 0 OID 34699)
-- Dependencies: 245
-- Data for Name: uso_stock_especifico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uso_stock_especifico (id_uso, id_stock_utilizado, id_stock_fabricado, cantidad_usada, fecha, id_presentacion) FROM stdin;
\.


--
-- TOC entry 3505 (class 0 OID 34536)
-- Dependencies: 227
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_usuario, usuario, contrasena, rol) FROM stdin;
1	admin	admin123	admin
2	user	user123	normal
\.


--
-- TOC entry 3511 (class 0 OID 34589)
-- Dependencies: 233
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventas (id_venta, fecha, monto_total, id_usuario, id_cliente) FROM stdin;
\.


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 240
-- Name: abonos_id_abono_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abonos_id_abono_seq', 1, false);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 246
-- Name: ajuste_inventario_id_ajuste_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ajuste_inventario_id_ajuste_seq', 1, false);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 220
-- Name: aromas_id_aroma_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aromas_id_aroma_seq', 13, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 214
-- Name: categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 23, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 224
-- Name: clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 250
-- Name: conversiones_id_conversion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversiones_id_conversion_seq', 1, false);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 234
-- Name: detalle_ventas_id_detalle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_ventas_id_detalle_seq', 1, false);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 238
-- Name: deudas_id_deuda_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deudas_id_deuda_seq', 1, false);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 216
-- Name: marcas_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcas_id_marca_seq', 4, true);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 236
-- Name: materias_primas_id_materia_prima_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materias_primas_id_materia_prima_seq', 1, false);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 218
-- Name: presentaciones_id_presentacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.presentaciones_id_presentacion_seq', 47, true);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 228
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 110, true);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 222
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 9, true);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 230
-- Name: stock_especifico_id_stock_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stock_especifico_id_stock_seq', 257, true);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 248
-- Name: unidades_id_unidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.unidades_id_unidad_seq', 2, true);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 242
-- Name: uso_materias_primas_especifico_id_uso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.uso_materias_primas_especifico_id_uso_seq', 1, false);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 244
-- Name: uso_stock_especifico_id_uso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.uso_stock_especifico_id_uso_seq', 1, false);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 226
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 232
-- Name: ventas_id_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventas_id_venta_seq', 1, false);


--
-- TOC entry 3313 (class 2606 OID 34671)
-- Name: abonos abonos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abonos
    ADD CONSTRAINT abonos_pkey PRIMARY KEY (id_abono);


--
-- TOC entry 3319 (class 2606 OID 34775)
-- Name: ajuste_inventario ajuste_inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ajuste_inventario
    ADD CONSTRAINT ajuste_inventario_pkey PRIMARY KEY (id_ajuste);


--
-- TOC entry 3293 (class 2606 OID 34516)
-- Name: aromas aromas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aromas
    ADD CONSTRAINT aromas_pkey PRIMARY KEY (id_aroma);


--
-- TOC entry 3287 (class 2606 OID 34489)
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 3297 (class 2606 OID 34534)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 3323 (class 2606 OID 34801)
-- Name: conversiones conversiones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversiones
    ADD CONSTRAINT conversiones_pkey PRIMARY KEY (id_conversion);


--
-- TOC entry 3307 (class 2606 OID 34611)
-- Name: detalle_ventas detalle_ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_pkey PRIMARY KEY (id_detalle);


--
-- TOC entry 3311 (class 2606 OID 34659)
-- Name: deudas deudas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deudas
    ADD CONSTRAINT deudas_pkey PRIMARY KEY (id_deuda);


--
-- TOC entry 3289 (class 2606 OID 34498)
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id_marca);


--
-- TOC entry 3309 (class 2606 OID 34630)
-- Name: materias_primas materias_primas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias_primas
    ADD CONSTRAINT materias_primas_pkey PRIMARY KEY (id_materia_prima);


--
-- TOC entry 3291 (class 2606 OID 34507)
-- Name: presentaciones presentaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presentaciones
    ADD CONSTRAINT presentaciones_pkey PRIMARY KEY (id_presentacion);


--
-- TOC entry 3301 (class 2606 OID 34550)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 3295 (class 2606 OID 34525)
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);


--
-- TOC entry 3303 (class 2606 OID 34572)
-- Name: stock_especifico stock_especifico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_especifico
    ADD CONSTRAINT stock_especifico_pkey PRIMARY KEY (id_stock);


--
-- TOC entry 3321 (class 2606 OID 34794)
-- Name: unidades unidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT unidades_pkey PRIMARY KEY (id_unidad);


--
-- TOC entry 3315 (class 2606 OID 34687)
-- Name: uso_materias_primas_especifico uso_materias_primas_especifico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_materias_primas_especifico
    ADD CONSTRAINT uso_materias_primas_especifico_pkey PRIMARY KEY (id_uso);


--
-- TOC entry 3317 (class 2606 OID 34705)
-- Name: uso_stock_especifico uso_stock_especifico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_stock_especifico
    ADD CONSTRAINT uso_stock_especifico_pkey PRIMARY KEY (id_uso);


--
-- TOC entry 3299 (class 2606 OID 34541)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 3305 (class 2606 OID 34594)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_venta);


--
-- TOC entry 3338 (class 2606 OID 34672)
-- Name: abonos abonos_id_deuda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abonos
    ADD CONSTRAINT abonos_id_deuda_fkey FOREIGN KEY (id_deuda) REFERENCES public.deudas(id_deuda);


--
-- TOC entry 3346 (class 2606 OID 34776)
-- Name: ajuste_inventario ajuste_inventario_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ajuste_inventario
    ADD CONSTRAINT ajuste_inventario_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3333 (class 2606 OID 34612)
-- Name: detalle_ventas detalle_ventas_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- TOC entry 3334 (class 2606 OID 34617)
-- Name: detalle_ventas detalle_ventas_id_venta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_ventas
    ADD CONSTRAINT detalle_ventas_id_venta_fkey FOREIGN KEY (id_venta) REFERENCES public.ventas(id_venta);


--
-- TOC entry 3337 (class 2606 OID 34660)
-- Name: deudas deudas_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deudas
    ADD CONSTRAINT deudas_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- TOC entry 3335 (class 2606 OID 34826)
-- Name: materias_primas fk_presentacion_materias_primas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias_primas
    ADD CONSTRAINT fk_presentacion_materias_primas FOREIGN KEY (id_presentacion) REFERENCES public.presentaciones(id_presentacion) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3339 (class 2606 OID 34831)
-- Name: uso_materias_primas_especifico fk_presentacion_uso_materias_primas_especifico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_materias_primas_especifico
    ADD CONSTRAINT fk_presentacion_uso_materias_primas_especifico FOREIGN KEY (id_presentacion) REFERENCES public.presentaciones(id_presentacion) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3342 (class 2606 OID 34836)
-- Name: uso_stock_especifico fk_presentacion_uso_stock_especifico; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_stock_especifico
    ADD CONSTRAINT fk_presentacion_uso_stock_especifico FOREIGN KEY (id_presentacion) REFERENCES public.presentaciones(id_presentacion) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3347 (class 2606 OID 34781)
-- Name: ajuste_inventario fk_stock; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ajuste_inventario
    ADD CONSTRAINT fk_stock FOREIGN KEY (id_stock) REFERENCES public.stock_especifico(id_stock) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3324 (class 2606 OID 34821)
-- Name: presentaciones fk_unidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.presentaciones
    ADD CONSTRAINT fk_unidad FOREIGN KEY (id_unidad) REFERENCES public.unidades(id_unidad) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3348 (class 2606 OID 34807)
-- Name: conversiones fk_unidad_destino; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversiones
    ADD CONSTRAINT fk_unidad_destino FOREIGN KEY (id_unidad_destino) REFERENCES public.unidades(id_unidad) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3349 (class 2606 OID 34802)
-- Name: conversiones fk_unidad_origen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversiones
    ADD CONSTRAINT fk_unidad_origen FOREIGN KEY (id_unidad_origen) REFERENCES public.unidades(id_unidad) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3336 (class 2606 OID 34631)
-- Name: materias_primas materias_primas_id_proveedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materias_primas
    ADD CONSTRAINT materias_primas_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor);


--
-- TOC entry 3325 (class 2606 OID 34716)
-- Name: productos productos_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3326 (class 2606 OID 34726)
-- Name: productos productos_id_marca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_marca_fkey FOREIGN KEY (id_marca) REFERENCES public.marcas(id_marca) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3327 (class 2606 OID 34721)
-- Name: productos productos_id_proveedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3328 (class 2606 OID 34741)
-- Name: stock_especifico stock_especifico_id_aroma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_especifico
    ADD CONSTRAINT stock_especifico_id_aroma_fkey FOREIGN KEY (id_aroma) REFERENCES public.aromas(id_aroma) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3329 (class 2606 OID 34736)
-- Name: stock_especifico stock_especifico_id_presentacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_especifico
    ADD CONSTRAINT stock_especifico_id_presentacion_fkey FOREIGN KEY (id_presentacion) REFERENCES public.presentaciones(id_presentacion) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3330 (class 2606 OID 34731)
-- Name: stock_especifico stock_especifico_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock_especifico
    ADD CONSTRAINT stock_especifico_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3340 (class 2606 OID 34746)
-- Name: uso_materias_primas_especifico uso_materias_primas_especifico_id_materia_prima_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_materias_primas_especifico
    ADD CONSTRAINT uso_materias_primas_especifico_id_materia_prima_fkey FOREIGN KEY (id_materia_prima) REFERENCES public.materias_primas(id_materia_prima) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3341 (class 2606 OID 34751)
-- Name: uso_materias_primas_especifico uso_materias_primas_especifico_id_stock_fabricado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_materias_primas_especifico
    ADD CONSTRAINT uso_materias_primas_especifico_id_stock_fabricado_fkey FOREIGN KEY (id_stock_fabricado) REFERENCES public.stock_especifico(id_stock) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3343 (class 2606 OID 34711)
-- Name: uso_stock_especifico uso_stock_especifico_id_stock_fabricado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_stock_especifico
    ADD CONSTRAINT uso_stock_especifico_id_stock_fabricado_fkey FOREIGN KEY (id_stock_fabricado) REFERENCES public.stock_especifico(id_stock);


--
-- TOC entry 3344 (class 2606 OID 34761)
-- Name: uso_stock_especifico uso_stock_especifico_id_stock_fabricado_uso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_stock_especifico
    ADD CONSTRAINT uso_stock_especifico_id_stock_fabricado_uso_fkey FOREIGN KEY (id_stock_fabricado) REFERENCES public.stock_especifico(id_stock) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3345 (class 2606 OID 34756)
-- Name: uso_stock_especifico uso_stock_especifico_id_stock_utilizado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uso_stock_especifico
    ADD CONSTRAINT uso_stock_especifico_id_stock_utilizado_fkey FOREIGN KEY (id_stock_utilizado) REFERENCES public.stock_especifico(id_stock) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3331 (class 2606 OID 34600)
-- Name: ventas ventas_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);


--
-- TOC entry 3332 (class 2606 OID 34595)
-- Name: ventas ventas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);


-- Completed on 2024-07-30 02:19:20

--
-- PostgreSQL database dump complete
--

