--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: enum_aktivitas_gerbang_kendaraans_buka_atau_tutup; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_aktivitas_gerbang_kendaraans_buka_atau_tutup AS ENUM (
    'Buka',
    'Tutup',
    'Terbuka',
    'Tertutup'
);


ALTER TYPE public.enum_aktivitas_gerbang_kendaraans_buka_atau_tutup OWNER TO postgres;

--
-- Name: enum_aktivitas_gerbang_kendaraans_lokasi_gerbang; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_aktivitas_gerbang_kendaraans_lokasi_gerbang AS ENUM (
    'Masuk',
    'Keluar'
);


ALTER TYPE public.enum_aktivitas_gerbang_kendaraans_lokasi_gerbang OWNER TO postgres;

--
-- Name: enum_aktivitas_gerbang_kendaraans_status_palang; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_aktivitas_gerbang_kendaraans_status_palang AS ENUM (
    'Sukses',
    'Gagal',
    'Gagal (Sensor)'
);


ALTER TYPE public.enum_aktivitas_gerbang_kendaraans_status_palang OWNER TO postgres;

--
-- Name: enum_aktivitas_gerbang_kendaraans_tipe_gerbang; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_aktivitas_gerbang_kendaraans_tipe_gerbang AS ENUM (
    'In',
    'Out'
);


ALTER TYPE public.enum_aktivitas_gerbang_kendaraans_tipe_gerbang OWNER TO postgres;

--
-- Name: enum_dashboard_pendapatans_periode; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_dashboard_pendapatans_periode AS ENUM (
    'hari_ini',
    'minggu_ini',
    'bulan_ini',
    'tahun_ini'
);


ALTER TYPE public.enum_dashboard_pendapatans_periode OWNER TO postgres;

--
-- Name: enum_data_vouchers_model_bayar; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_data_vouchers_model_bayar AS ENUM (
    'Check In',
    'Check Out'
);


ALTER TYPE public.enum_data_vouchers_model_bayar OWNER TO postgres;

--
-- Name: enum_data_vouchers_verifikasi; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_data_vouchers_verifikasi AS ENUM (
    'Tiket',
    'Nopol'
);


ALTER TYPE public.enum_data_vouchers_verifikasi OWNER TO postgres;

--
-- Name: enum_kendaraans_tipe_kendaraan; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_kendaraans_tipe_kendaraan AS ENUM (
    'Mobil',
    'Motor',
    'All'
);


ALTER TYPE public.enum_kendaraans_tipe_kendaraan OWNER TO postgres;

--
-- Name: enum_permasalahan_atau_perbaikans_kategori_permasalahan; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_permasalahan_atau_perbaikans_kategori_permasalahan AS ENUM (
    'Hardware/Alat',
    'Sistem',
    'SDM',
    'Operasional',
    'Lain-lain'
);


ALTER TYPE public.enum_permasalahan_atau_perbaikans_kategori_permasalahan OWNER TO postgres;

--
-- Name: enum_permasalahan_atau_perbaikans_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_permasalahan_atau_perbaikans_status AS ENUM (
    'Pending',
    'On Progress',
    'Done'
);


ALTER TYPE public.enum_permasalahan_atau_perbaikans_status OWNER TO postgres;

--
-- Name: enum_permasalahan_atau_perbaikans_status_perbaikan; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_permasalahan_atau_perbaikans_status_perbaikan AS ENUM (
    'Pending',
    'On Progress',
    'Done'
);


ALTER TYPE public.enum_permasalahan_atau_perbaikans_status_perbaikan OWNER TO postgres;

--
-- Name: enum_permasalahan_atau_perbaikans_status_permasalahan; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_permasalahan_atau_perbaikans_status_permasalahan AS ENUM (
    'Pending',
    'On Progress',
    'Done'
);


ALTER TYPE public.enum_permasalahan_atau_perbaikans_status_permasalahan OWNER TO postgres;

--
-- Name: enum_perusahaans_jenis_perusahaan; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_perusahaans_jenis_perusahaan AS ENUM (
    'Pemilik Gedung',
    'Tenant',
    'Developer'
);


ALTER TYPE public.enum_perusahaans_jenis_perusahaan OWNER TO postgres;

--
-- Name: enum_pos_nama_interface; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pos_nama_interface AS ENUM (
    'BGI',
    'TWS',
    'PAWL',
    'SMART PARKING',
    'SER TELINKS',
    'USB TELINKS'
);


ALTER TYPE public.enum_pos_nama_interface OWNER TO postgres;

--
-- Name: enum_pos_nama_printer; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pos_nama_printer AS ENUM (
    'Epson TM-T81 Receipt',
    'Epson TM-T82 Receipt',
    'Epson TM-U220 Receipt',
    ''
);


ALTER TYPE public.enum_pos_nama_printer OWNER TO postgres;

--
-- Name: enum_pos_nama_printer_id; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pos_nama_printer_id AS ENUM (
    'Epson TM-T81 Receipt',
    'Epson TM-T82 Receipt',
    'Epson TM-U220 Receipt',
    'Epson TM-T88III Receipt',
    'Epson TM-T88IV Receipt',
    'Epson TM-T88V Receipt',
    'Epson TM-T82II Receipt'
);


ALTER TYPE public.enum_pos_nama_printer_id OWNER TO postgres;

--
-- Name: enum_pos_tipe_kendaraan; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pos_tipe_kendaraan AS ENUM (
    'Mobil',
    'Motor',
    'All'
);


ALTER TYPE public.enum_pos_tipe_kendaraan OWNER TO postgres;

--
-- Name: enum_pos_tipe_manless; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pos_tipe_manless AS ENUM (
    'Loop 1 with Button',
    'Loop 1 with Button and Feedback',
    'Feedback with Button',
    'Button Only'
);


ALTER TYPE public.enum_pos_tipe_manless OWNER TO postgres;

--
-- Name: enum_pos_tipe_pos; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_pos_tipe_pos AS ENUM (
    'In',
    'Out'
);


ALTER TYPE public.enum_pos_tipe_pos OWNER TO postgres;

--
-- Name: enum_produk_members_periode_unit; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_produk_members_periode_unit AS ENUM (
    'Hari',
    'Bulan',
    'Tahun'
);


ALTER TYPE public.enum_produk_members_periode_unit OWNER TO postgres;

--
-- Name: enum_produk_vouchers_metode_verifikasi; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_produk_vouchers_metode_verifikasi AS ENUM (
    'Tiket',
    'Nopol'
);


ALTER TYPE public.enum_produk_vouchers_metode_verifikasi OWNER TO postgres;

--
-- Name: enum_produk_vouchers_model_pembayaran; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_produk_vouchers_model_pembayaran AS ENUM (
    'Check In',
    'Check Out'
);


ALTER TYPE public.enum_produk_vouchers_model_pembayaran OWNER TO postgres;

--
-- Name: enum_produk_vouchers_periode_unit; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_produk_vouchers_periode_unit AS ENUM (
    'Keluar',
    'Hari',
    'Bulan'
);


ALTER TYPE public.enum_produk_vouchers_periode_unit OWNER TO postgres;

--
-- Name: enum_users_jenis_kelamin; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_users_jenis_kelamin AS ENUM (
    'Laki-laki',
    'Perempuan'
);


ALTER TYPE public.enum_users_jenis_kelamin OWNER TO postgres;

--
-- Name: enum_users_level; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum_users_level AS ENUM (
    'Administrator',
    'Operator',
    'Reporting',
    'No Akses',
    'Kepala Lokasi',
    'Front Office'
);


ALTER TYPE public.enum_users_level OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aktivitas_gerbang_kendaraans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aktivitas_gerbang_kendaraans (
    id integer NOT NULL,
    plat_nomor character varying(255),
    kendaraan_id integer,
    waktu time without time zone,
    lokasi_gerbang public.enum_aktivitas_gerbang_kendaraans_lokasi_gerbang,
    buka_atau_tutup public.enum_aktivitas_gerbang_kendaraans_buka_atau_tutup,
    status_palang public.enum_aktivitas_gerbang_kendaraans_status_palang,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    tiket character varying(255),
    petugas_id integer,
    tipe_gerbang public.enum_aktivitas_gerbang_kendaraans_tipe_gerbang,
    data_member_id integer
);


ALTER TABLE public.aktivitas_gerbang_kendaraans OWNER TO postgres;

--
-- Name: aktivitas_gerbang_kendaraans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aktivitas_gerbang_kendaraans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aktivitas_gerbang_kendaraans_id_seq OWNER TO postgres;

--
-- Name: aktivitas_gerbang_kendaraans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aktivitas_gerbang_kendaraans_id_seq OWNED BY public.aktivitas_gerbang_kendaraans.id;


--
-- Name: daftar_rfids; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daftar_rfids (
    id integer NOT NULL,
    rfid_tag character varying(255) NOT NULL,
    nama character varying(255),
    no_plat character varying(255),
    tanggal_daftar timestamp with time zone,
    tanggal_mulai timestamp with time zone,
    tanggal_akhir timestamp with time zone,
    status character varying(255) DEFAULT 'aktif'::character varying,
    synced boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.daftar_rfids OWNER TO postgres;

--
-- Name: daftar_rfids_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.daftar_rfids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.daftar_rfids_id_seq OWNER TO postgres;

--
-- Name: daftar_rfids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.daftar_rfids_id_seq OWNED BY public.daftar_rfids.id;


--
-- Name: data_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_members (
    id integer NOT NULL,
    nama character varying(255),
    no_hp character varying(255),
    perusahaan_id integer,
    akses_tiket boolean,
    akses_kartu boolean,
    no_kartu character varying(255),
    tgl_input timestamp with time zone,
    produk_id integer,
    tarif integer NOT NULL,
    biaya_member integer NOT NULL,
    biaya_kartu integer NOT NULL,
    periode daterange,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.data_members OWNER TO postgres;

--
-- Name: data_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.data_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.data_members_id_seq OWNER TO postgres;

--
-- Name: data_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.data_members_id_seq OWNED BY public.data_members.id;


--
-- Name: data_nomor_polisis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_nomor_polisis (
    id integer NOT NULL,
    data_member_id integer,
    kendaraan_id integer,
    nomor_polisi character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.data_nomor_polisis OWNER TO postgres;

--
-- Name: data_nomor_polisis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.data_nomor_polisis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.data_nomor_polisis_id_seq OWNER TO postgres;

--
-- Name: data_nomor_polisis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.data_nomor_polisis_id_seq OWNED BY public.data_nomor_polisis.id;


--
-- Name: data_vouchers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data_vouchers (
    id integer NOT NULL,
    produk_voucher_id integer,
    periode daterange,
    tarif integer NOT NULL,
    model_bayar public.enum_data_vouchers_model_bayar,
    verifikasi public.enum_data_vouchers_verifikasi,
    no_tiket_atau_nopol character varying(255),
    kendaraan_id integer,
    keterangan character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.data_vouchers OWNER TO postgres;

--
-- Name: data_vouchers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.data_vouchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.data_vouchers_id_seq OWNER TO postgres;

--
-- Name: data_vouchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.data_vouchers_id_seq OWNED BY public.data_vouchers.id;


--
-- Name: global_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.global_settings (
    id integer NOT NULL,
    nama_operator character varying(255),
    email_operator character varying(255),
    no_telp_operator character varying(255),
    no_fax_operator character varying(255),
    alamat_operator character varying(255),
    nama_lokasi character varying(255),
    email_lokasi character varying(255),
    no_telp_lokasi character varying(255),
    no_fax_lokasi character varying(255),
    alamat_lokasi character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.global_settings OWNER TO postgres;

--
-- Name: global_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.global_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.global_settings_id_seq OWNER TO postgres;

--
-- Name: global_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.global_settings_id_seq OWNED BY public.global_settings.id;


--
-- Name: kendaraans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kendaraans (
    id integer NOT NULL,
    nama_kendaraan character varying(255),
    tipe_kendaraan_id integer,
    status boolean,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.kendaraans OWNER TO postgres;

--
-- Name: kendaraans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kendaraans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kendaraans_id_seq OWNER TO postgres;

--
-- Name: kendaraans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kendaraans_id_seq OWNED BY public.kendaraans.id;


--
-- Name: laporan_riwayat_transaksi_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.laporan_riwayat_transaksi_members (
    id integer NOT NULL,
    no integer,
    nomor_tiket character varying(255),
    waktu_masuk timestamp with time zone,
    gerbang_masuk_id integer,
    jenis_kendaraan_id integer,
    nomor_polisi character varying(255),
    waktu_keluar character varying(255),
    pintu_keluar_id integer,
    durasi_parkir character varying(255),
    denda character varying(255),
    total_pembayaran character varying(255),
    jenis_transaksi character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.laporan_riwayat_transaksi_members OWNER TO postgres;

--
-- Name: laporan_riwayat_transaksi_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.laporan_riwayat_transaksi_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.laporan_riwayat_transaksi_members_id_seq OWNER TO postgres;

--
-- Name: laporan_riwayat_transaksi_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.laporan_riwayat_transaksi_members_id_seq OWNED BY public.laporan_riwayat_transaksi_members.id;


--
-- Name: laporan_transaksi_batals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.laporan_transaksi_batals (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    no_tiket character varying(255),
    tanggal_masuk timestamp with time zone,
    pintu_masuk_id integer,
    tanggal_pembatalan timestamp with time zone,
    alasan_pembatalan character varying(255),
    user_id integer
);


ALTER TABLE public.laporan_transaksi_batals OWNER TO postgres;

--
-- Name: laporan_transaksi_batals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.laporan_transaksi_batals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.laporan_transaksi_batals_id_seq OWNER TO postgres;

--
-- Name: laporan_transaksi_batals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.laporan_transaksi_batals_id_seq OWNED BY public.laporan_transaksi_batals.id;


--
-- Name: level_penggunas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.level_penggunas (
    id integer NOT NULL,
    nama character varying(255),
    hak_akses jsonb,
    perusahaan_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.level_penggunas OWNER TO postgres;

--
-- Name: level_penggunas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.level_penggunas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.level_penggunas_id_seq OWNER TO postgres;

--
-- Name: level_penggunas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.level_penggunas_id_seq OWNED BY public.level_penggunas.id;


--
-- Name: log_aktivitas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_aktivitas (
    id integer NOT NULL,
    waktu timestamp with time zone NOT NULL,
    jenis character varying(255) NOT NULL,
    deskripsi text,
    lokasi character varying(255) NOT NULL,
    synced boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.log_aktivitas OWNER TO postgres;

--
-- Name: log_aktivitas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_aktivitas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_aktivitas_id_seq OWNER TO postgres;

--
-- Name: log_aktivitas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_aktivitas_id_seq OWNED BY public.log_aktivitas.id;


--
-- Name: nama_interfaces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nama_interfaces (
    id integer NOT NULL,
    nama_interface character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.nama_interfaces OWNER TO postgres;

--
-- Name: nama_interfaces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nama_interfaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nama_interfaces_id_seq OWNER TO postgres;

--
-- Name: nama_interfaces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nama_interfaces_id_seq OWNED BY public.nama_interfaces.id;


--
-- Name: nama_printers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nama_printers (
    id integer NOT NULL,
    nama_printer character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.nama_printers OWNER TO postgres;

--
-- Name: nama_printers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nama_printers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nama_printers_id_seq OWNER TO postgres;

--
-- Name: nama_printers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nama_printers_id_seq OWNED BY public.nama_printers.id;


--
-- Name: parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parameters (
    id integer NOT NULL,
    nama character varying(255),
    nilai character varying(255),
    keterangan character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.parameters OWNER TO postgres;

--
-- Name: parameters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parameters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.parameters_id_seq OWNER TO postgres;

--
-- Name: parameters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parameters_id_seq OWNED BY public.parameters.id;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    jenis_payment character varying(255),
    status boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO postgres;

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: permasalahan_atau_perbaikans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.permasalahan_atau_perbaikans (
    id integer NOT NULL,
    judul_permasalahan character varying(255),
    tanggal_permasalahan character varying(255),
    kategori_permasalahan public.enum_permasalahan_atau_perbaikans_kategori_permasalahan,
    pos_id integer,
    hardware_atau_alat character varying(255),
    penyebab_permasalahan text,
    keterangan_permasalahan text,
    nama_pelapor character varying(255),
    status_permasalahan public.enum_permasalahan_atau_perbaikans_status_permasalahan,
    tanggal_perbaikan character varying(255),
    jenis_perbaikan character varying(255),
    status_perbaikan public.enum_permasalahan_atau_perbaikans_status_perbaikan,
    penanganan text,
    keterangan_penanganan text,
    nama_yang_menangani character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.permasalahan_atau_perbaikans OWNER TO postgres;

--
-- Name: permasalahan_atau_perbaikans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.permasalahan_atau_perbaikans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.permasalahan_atau_perbaikans_id_seq OWNER TO postgres;

--
-- Name: permasalahan_atau_perbaikans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.permasalahan_atau_perbaikans_id_seq OWNED BY public.permasalahan_atau_perbaikans.id;


--
-- Name: perusahaans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perusahaans (
    id integer NOT NULL,
    nama character varying(255),
    jenis_perusahaan public.enum_perusahaans_jenis_perusahaan,
    kontak character varying(255),
    status boolean,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.perusahaans OWNER TO postgres;

--
-- Name: perusahaans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.perusahaans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.perusahaans_id_seq OWNER TO postgres;

--
-- Name: perusahaans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.perusahaans_id_seq OWNED BY public.perusahaans.id;


--
-- Name: pos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pos (
    id integer NOT NULL,
    kode character varying(255),
    keterangan character varying(255),
    tipe_pos public.enum_pos_tipe_pos,
    tipe_manless_id integer,
    tipe_kendaraan public.enum_pos_tipe_kendaraan,
    kamera_1 boolean,
    kamera_2 boolean,
    nama_printer_id integer,
    nama_interface_id integer,
    com_port character varying(255),
    otorisasi boolean,
    synchronize character varying(255),
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.pos OWNER TO postgres;

--
-- Name: pos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pos_id_seq OWNER TO postgres;

--
-- Name: pos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pos_id_seq OWNED BY public.pos.id;


--
-- Name: produk_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk_members (
    id integer NOT NULL,
    nama character varying(255),
    periode daterange,
    list_id_kendaraan character varying(255)[],
    max_kendaraan integer,
    tarif integer NOT NULL,
    biaya_kartu integer NOT NULL,
    biaya_ganti_nopol integer NOT NULL,
    status boolean,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.produk_members OWNER TO postgres;

--
-- Name: produk_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produk_members_id_seq OWNER TO postgres;

--
-- Name: produk_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_members_id_seq OWNED BY public.produk_members.id;


--
-- Name: produk_vouchers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk_vouchers (
    id integer NOT NULL,
    nama character varying(255),
    periode daterange,
    list_id_kendaraan character varying(255)[],
    tarif integer NOT NULL,
    model_pembayaran public.enum_produk_vouchers_model_pembayaran,
    metode_verifikasi public.enum_produk_vouchers_metode_verifikasi,
    status boolean,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.produk_vouchers OWNER TO postgres;

--
-- Name: produk_vouchers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_vouchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produk_vouchers_id_seq OWNER TO postgres;

--
-- Name: produk_vouchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_vouchers_id_seq OWNED BY public.produk_vouchers.id;


--
-- Name: riwayat_transaksi_ganti_nopols; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.riwayat_transaksi_ganti_nopols (
    id integer NOT NULL,
    tgl_transaksi timestamp with time zone,
    nomor_polisi_lama character varying(255),
    nomor_polisi_baru character varying(255),
    tarif integer NOT NULL,
    keterangan character varying(255),
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.riwayat_transaksi_ganti_nopols OWNER TO postgres;

--
-- Name: riwayat_transaksi_ganti_nopols_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.riwayat_transaksi_ganti_nopols_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwayat_transaksi_ganti_nopols_id_seq OWNER TO postgres;

--
-- Name: riwayat_transaksi_ganti_nopols_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.riwayat_transaksi_ganti_nopols_id_seq OWNED BY public.riwayat_transaksi_ganti_nopols.id;


--
-- Name: riwayat_transaksi_kartu_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.riwayat_transaksi_kartu_members (
    id integer NOT NULL,
    tgl_transaksi timestamp with time zone,
    no_kartu character varying(255),
    tarif integer NOT NULL,
    keterangan character varying(255),
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.riwayat_transaksi_kartu_members OWNER TO postgres;

--
-- Name: riwayat_transaksi_kartu_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.riwayat_transaksi_kartu_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwayat_transaksi_kartu_members_id_seq OWNER TO postgres;

--
-- Name: riwayat_transaksi_kartu_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.riwayat_transaksi_kartu_members_id_seq OWNED BY public.riwayat_transaksi_kartu_members.id;


--
-- Name: riwayat_transaksi_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.riwayat_transaksi_members (
    id integer NOT NULL,
    tgl_transaksi timestamp with time zone,
    produk_id integer,
    tarif integer NOT NULL,
    masa_aktif character varying(255)[],
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.riwayat_transaksi_members OWNER TO postgres;

--
-- Name: riwayat_transaksi_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.riwayat_transaksi_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwayat_transaksi_members_id_seq OWNER TO postgres;

--
-- Name: riwayat_transaksi_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.riwayat_transaksi_members_id_seq OWNED BY public.riwayat_transaksi_members.id;


--
-- Name: shifts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shifts (
    id integer NOT NULL,
    nama_shift character varying(255),
    awal_shift time without time zone,
    akhir_shift time without time zone,
    status boolean,
    user_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.shifts OWNER TO postgres;

--
-- Name: shifts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shifts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.shifts_id_seq OWNER TO postgres;

--
-- Name: shifts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shifts_id_seq OWNED BY public.shifts.id;


--
-- Name: tarif_dendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarif_dendas (
    id integer NOT NULL,
    kendaraan_id integer NOT NULL,
    denda_tiket integer NOT NULL,
    denda_stnk integer NOT NULL,
    denda_member boolean,
    status boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tarif_dendas OWNER TO postgres;

--
-- Name: tarif_dendas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tarif_dendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tarif_dendas_id_seq OWNER TO postgres;

--
-- Name: tarif_dendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tarif_dendas_id_seq OWNED BY public.tarif_dendas.id;


--
-- Name: tarif_parkirs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tarif_parkirs (
    id integer NOT NULL,
    kendaraan_id integer,
    grace_period integer,
    tarif_grace_period integer,
    rotasi_pertama integer,
    tarif_rotasi_pertama integer,
    rotasi_kedua integer,
    tarif_rotasi_kedua integer,
    rotasi_ketiga integer,
    tarif_rotasi_ketiga integer,
    tarif_maksimal integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tarif_parkirs OWNER TO postgres;

--
-- Name: tarif_parkirs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tarif_parkirs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tarif_parkirs_id_seq OWNER TO postgres;

--
-- Name: tarif_parkirs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tarif_parkirs_id_seq OWNED BY public.tarif_parkirs.id;


--
-- Name: tiket_manuals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiket_manuals (
    id integer NOT NULL,
    barcode character varying(255),
    jenis_pembayaran text,
    waktu_masuk timestamp with time zone,
    waktu_keluar timestamp with time zone,
    lokasi text,
    dicetak boolean DEFAULT false,
    vehicle_type text,
    plat_nomor text,
    durasi_parkir integer,
    biaya numeric,
    synced boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tiket_manuals OWNER TO postgres;

--
-- Name: tiket_manuals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiket_manuals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tiket_manuals_id_seq OWNER TO postgres;

--
-- Name: tiket_manuals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiket_manuals_id_seq OWNED BY public.tiket_manuals.id;


--
-- Name: tipe_dendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipe_dendas (
    id integer NOT NULL,
    tipe_denda character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tipe_dendas OWNER TO postgres;

--
-- Name: tipe_dendas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipe_dendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipe_dendas_id_seq OWNER TO postgres;

--
-- Name: tipe_dendas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipe_dendas_id_seq OWNED BY public.tipe_dendas.id;


--
-- Name: tipe_kendaraans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipe_kendaraans (
    id integer NOT NULL,
    tipe_kendaraan character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tipe_kendaraans OWNER TO postgres;

--
-- Name: tipe_kendaraans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipe_kendaraans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipe_kendaraans_id_seq OWNER TO postgres;

--
-- Name: tipe_kendaraans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipe_kendaraans_id_seq OWNED BY public.tipe_kendaraans.id;


--
-- Name: tipe_manlesses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipe_manlesses (
    id integer NOT NULL,
    tipe_manless character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tipe_manlesses OWNER TO postgres;

--
-- Name: tipe_manlesses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipe_manlesses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipe_manlesses_id_seq OWNER TO postgres;

--
-- Name: tipe_manlesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipe_manlesses_id_seq OWNED BY public.tipe_manlesses.id;


--
-- Name: transaksi_manuals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi_manuals (
    id integer NOT NULL,
    tanggal_masuk timestamp with time zone,
    pintu_masuk_id integer,
    no_tiket_atau_tiket_manual character varying(255),
    kendaraan_id integer,
    nomor_polisi character varying(255),
    pintu_keluar_id integer,
    tanggal_keluar timestamp with time zone,
    petugas_id integer,
    shift_id integer,
    denda boolean,
    tipe_denda_id integer,
    is_active boolean,
    jenis_pembayaran_id integer,
    parkir character varying(255),
    jumlah_denda_stnk integer NOT NULL,
    jumlah_denda_tiket integer NOT NULL,
    "interval" character varying(255),
    keterangan_atau_penjelasan character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    id_data_voucher integer
);


ALTER TABLE public.transaksi_manuals OWNER TO postgres;

--
-- Name: transaksi_manuals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaksi_manuals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transaksi_manuals_id_seq OWNER TO postgres;

--
-- Name: transaksi_manuals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaksi_manuals_id_seq OWNED BY public.transaksi_manuals.id;


--
-- Name: transaksi_rfids; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi_rfids (
    id integer NOT NULL,
    rfid_tag character varying(255),
    waktu_masuk timestamp with time zone,
    waktu_keluar timestamp with time zone,
    lokasi character varying(255),
    dicetak boolean DEFAULT false,
    vehicle_type character varying(255),
    plat_nomor character varying(255),
    durasi_parkir integer,
    biaya numeric,
    synced boolean DEFAULT false,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.transaksi_rfids OWNER TO postgres;

--
-- Name: transaksi_rfids_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaksi_rfids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transaksi_rfids_id_seq OWNER TO postgres;

--
-- Name: transaksi_rfids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaksi_rfids_id_seq OWNED BY public.transaksi_rfids.id;


--
-- Name: transaksi_tunais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi_tunais (
    id integer NOT NULL,
    tanggal_masuk timestamp with time zone,
    pintu_masuk_id integer,
    no_tiket_atau_tiket_manual character varying(255),
    kendaraan_id integer,
    nomor_polisi character varying(255),
    pintu_keluar_id integer,
    tanggal_keluar timestamp with time zone,
    petugas_id integer,
    shift_id integer,
    denda boolean,
    tipe_denda_id integer,
    is_active boolean,
    jenis_pembayaran_id integer,
    parkir character varying(255),
    jumlah_denda_stnk integer NOT NULL,
    jumlah_denda_tiket integer NOT NULL,
    "interval" character varying(255),
    keterangan_atau_penjelasan character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    id_data_voucher integer
);


ALTER TABLE public.transaksi_tunais OWNER TO postgres;

--
-- Name: transaksi_tunais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaksi_tunais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transaksi_tunais_id_seq OWNER TO postgres;

--
-- Name: transaksi_tunais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaksi_tunais_id_seq OWNED BY public.transaksi_tunais.id;


--
-- Name: transaksis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksis (
    id integer NOT NULL,
    tanggal_masuk timestamp with time zone,
    pintu_masuk_id integer,
    no_tiket character varying(255),
    is_manual boolean,
    kendaraan_id integer,
    nomor_polisi character varying(255),
    pintu_keluar_id integer,
    tanggal_keluar timestamp with time zone,
    petugas_id integer,
    shift_id integer,
    denda boolean,
    tipe_denda_id integer,
    is_active boolean,
    jenis_pembayaran_id integer,
    biaya_parkir character varying(255),
    id_data_voucher integer,
    jumlah_denda_stnk integer NOT NULL,
    jumlah_denda_tiket integer NOT NULL,
    "interval" character varying(255),
    keterangan_atau_penjelasan character varying(255),
    id_data_member integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.transaksis OWNER TO postgres;

--
-- Name: transaksis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaksis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transaksis_id_seq OWNER TO postgres;

--
-- Name: transaksis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaksis_id_seq OWNED BY public.transaksis.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nama character varying(255),
    jenis_kelamin public.enum_users_jenis_kelamin,
    no_hp character varying(255),
    alamat_lengkap character varying(255),
    username character varying(255),
    password character varying(255),
    perusahaan_id integer,
    level_pengguna_id integer,
    status boolean,
    added_by integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: aktivitas_gerbang_kendaraans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aktivitas_gerbang_kendaraans ALTER COLUMN id SET DEFAULT nextval('public.aktivitas_gerbang_kendaraans_id_seq'::regclass);


--
-- Name: daftar_rfids id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids ALTER COLUMN id SET DEFAULT nextval('public.daftar_rfids_id_seq'::regclass);


--
-- Name: data_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_members ALTER COLUMN id SET DEFAULT nextval('public.data_members_id_seq'::regclass);


--
-- Name: data_nomor_polisis id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis ALTER COLUMN id SET DEFAULT nextval('public.data_nomor_polisis_id_seq'::regclass);


--
-- Name: data_vouchers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_vouchers ALTER COLUMN id SET DEFAULT nextval('public.data_vouchers_id_seq'::regclass);


--
-- Name: global_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.global_settings ALTER COLUMN id SET DEFAULT nextval('public.global_settings_id_seq'::regclass);


--
-- Name: kendaraans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kendaraans ALTER COLUMN id SET DEFAULT nextval('public.kendaraans_id_seq'::regclass);


--
-- Name: laporan_riwayat_transaksi_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_riwayat_transaksi_members ALTER COLUMN id SET DEFAULT nextval('public.laporan_riwayat_transaksi_members_id_seq'::regclass);


--
-- Name: laporan_transaksi_batals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_transaksi_batals ALTER COLUMN id SET DEFAULT nextval('public.laporan_transaksi_batals_id_seq'::regclass);


--
-- Name: level_penggunas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas ALTER COLUMN id SET DEFAULT nextval('public.level_penggunas_id_seq'::regclass);


--
-- Name: log_aktivitas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_aktivitas ALTER COLUMN id SET DEFAULT nextval('public.log_aktivitas_id_seq'::regclass);


--
-- Name: nama_interfaces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nama_interfaces ALTER COLUMN id SET DEFAULT nextval('public.nama_interfaces_id_seq'::regclass);


--
-- Name: nama_printers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nama_printers ALTER COLUMN id SET DEFAULT nextval('public.nama_printers_id_seq'::regclass);


--
-- Name: parameters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameters ALTER COLUMN id SET DEFAULT nextval('public.parameters_id_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: permasalahan_atau_perbaikans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permasalahan_atau_perbaikans ALTER COLUMN id SET DEFAULT nextval('public.permasalahan_atau_perbaikans_id_seq'::regclass);


--
-- Name: perusahaans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perusahaans ALTER COLUMN id SET DEFAULT nextval('public.perusahaans_id_seq'::regclass);


--
-- Name: pos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos ALTER COLUMN id SET DEFAULT nextval('public.pos_id_seq'::regclass);


--
-- Name: produk_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk_members ALTER COLUMN id SET DEFAULT nextval('public.produk_members_id_seq'::regclass);


--
-- Name: produk_vouchers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk_vouchers ALTER COLUMN id SET DEFAULT nextval('public.produk_vouchers_id_seq'::regclass);


--
-- Name: riwayat_transaksi_ganti_nopols id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_ganti_nopols ALTER COLUMN id SET DEFAULT nextval('public.riwayat_transaksi_ganti_nopols_id_seq'::regclass);


--
-- Name: riwayat_transaksi_kartu_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_kartu_members ALTER COLUMN id SET DEFAULT nextval('public.riwayat_transaksi_kartu_members_id_seq'::regclass);


--
-- Name: riwayat_transaksi_members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_members ALTER COLUMN id SET DEFAULT nextval('public.riwayat_transaksi_members_id_seq'::regclass);


--
-- Name: shifts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shifts ALTER COLUMN id SET DEFAULT nextval('public.shifts_id_seq'::regclass);


--
-- Name: tarif_dendas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarif_dendas ALTER COLUMN id SET DEFAULT nextval('public.tarif_dendas_id_seq'::regclass);


--
-- Name: tarif_parkirs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarif_parkirs ALTER COLUMN id SET DEFAULT nextval('public.tarif_parkirs_id_seq'::regclass);


--
-- Name: tiket_manuals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals ALTER COLUMN id SET DEFAULT nextval('public.tiket_manuals_id_seq'::regclass);


--
-- Name: tipe_dendas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipe_dendas ALTER COLUMN id SET DEFAULT nextval('public.tipe_dendas_id_seq'::regclass);


--
-- Name: tipe_kendaraans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipe_kendaraans ALTER COLUMN id SET DEFAULT nextval('public.tipe_kendaraans_id_seq'::regclass);


--
-- Name: tipe_manlesses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipe_manlesses ALTER COLUMN id SET DEFAULT nextval('public.tipe_manlesses_id_seq'::regclass);


--
-- Name: transaksi_manuals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals ALTER COLUMN id SET DEFAULT nextval('public.transaksi_manuals_id_seq'::regclass);


--
-- Name: transaksi_rfids id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_rfids ALTER COLUMN id SET DEFAULT nextval('public.transaksi_rfids_id_seq'::regclass);


--
-- Name: transaksi_tunais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais ALTER COLUMN id SET DEFAULT nextval('public.transaksi_tunais_id_seq'::regclass);


--
-- Name: transaksis id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksis ALTER COLUMN id SET DEFAULT nextval('public.transaksis_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: aktivitas_gerbang_kendaraans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aktivitas_gerbang_kendaraans (id, plat_nomor, kendaraan_id, waktu, lokasi_gerbang, buka_atau_tutup, status_palang, "createdAt", "updatedAt", tiket, petugas_id, tipe_gerbang, data_member_id) FROM stdin;
1	\N	\N	\N	\N	\N	\N	2025-07-12 13:51:34.897+07	2025-07-12 13:51:34.897+07	\N	\N	\N	\N
2	\N	\N	\N	\N	\N	\N	2025-07-12 13:52:43.683+07	2025-07-12 13:52:43.683+07	\N	\N	\N	\N
3	\N	\N	\N	\N	\N	\N	2025-07-12 13:56:37.212+07	2025-07-12 13:56:37.212+07	\N	\N	\N	\N
4	\N	\N	\N	\N	\N	\N	2025-07-12 13:59:34.858+07	2025-07-12 13:59:34.858+07	\N	\N	\N	\N
5	\N	\N	\N	\N	\N	\N	2025-07-12 13:59:36.559+07	2025-07-12 13:59:36.559+07	\N	\N	\N	\N
6	\N	\N	\N	\N	\N	\N	2025-07-12 14:00:55.068+07	2025-07-12 14:00:55.068+07	\N	\N	\N	\N
7	\N	\N	\N	\N	\N	\N	2025-07-12 14:00:59.704+07	2025-07-12 14:00:59.704+07	\N	\N	\N	\N
8	\N	\N	\N	\N	\N	\N	2025-07-14 07:53:02.236+07	2025-07-14 07:53:02.236+07	\N	\N	\N	\N
9	\N	\N	\N	\N	\N	\N	2025-07-14 07:56:58.231+07	2025-07-14 07:56:58.231+07	\N	\N	\N	\N
10	R1020A	1	05:30:00	Masuk	Terbuka	Sukses	2025-07-14 07:59:13.938+07	2025-07-14 07:59:13.938+07	TIK001	\N	\N	\N
11	R1020A	1	05:30:00	Masuk	Terbuka	Sukses	2025-07-14 08:10:28.038+07	2025-07-14 08:10:28.038+07	TIK001	\N	\N	\N
12	R1020B	2	05:35:00	Keluar	Terbuka	Sukses	2025-07-14 08:10:54.309+07	2025-07-14 08:10:54.309+07	TIK002	\N	\N	\N
13	R1020C	1	05:40:00	Masuk	Terbuka	Sukses	2025-07-14 08:11:10.546+07	2025-07-14 08:11:10.546+07	TIK003	\N	\N	\N
14	R1020D	2	05:45:00	Keluar	Terbuka	Sukses	2025-07-14 08:11:39.046+07	2025-07-14 08:11:39.046+07	TIK004	\N	\N	\N
15	R1020E	1	05:50:00	Masuk	Terbuka	Sukses	2025-07-14 08:11:52.723+07	2025-07-14 08:11:52.723+07	TIK005	\N	\N	\N
16	R1020F	2	05:55:00	Keluar	Terbuka	Sukses	2025-07-14 08:12:06.055+07	2025-07-14 08:12:06.055+07	TIK006	\N	\N	\N
17	R1020G	1	06:00:00	Masuk	Terbuka	Sukses	2025-07-14 08:12:28.946+07	2025-07-14 08:12:28.946+07	TIK007	\N	\N	\N
18	R1020H	2	06:05:00	Keluar	Terbuka	Sukses	2025-07-14 08:12:48.356+07	2025-07-14 08:12:48.356+07	TIK008	\N	\N	\N
19	R1020I	1	06:10:00	Masuk	Terbuka	Sukses	2025-07-14 08:13:03.936+07	2025-07-14 08:13:03.936+07	TIK009	\N	\N	\N
20	R1020J	2	06:15:00	Keluar	Terbuka	Sukses	2025-07-14 08:13:29.127+07	2025-07-14 08:13:29.127+07	TIK010	\N	\N	\N
21	R1020K	1	06:20:00	Masuk	Terbuka	Sukses	2025-07-14 08:13:48.369+07	2025-07-14 08:13:48.369+07	TIK011	\N	\N	\N
22	R1020L	2	06:25:00	Keluar	Terbuka	Sukses	2025-07-14 08:14:10.746+07	2025-07-14 08:14:10.746+07	TIK012	\N	\N	\N
23	R1020M	1	06:30:00	Masuk	Terbuka	Sukses	2025-07-14 08:14:25.086+07	2025-07-14 08:14:25.086+07	TIK013	\N	\N	\N
24	R1020N	2	06:35:00	Keluar	Terbuka	Sukses	2025-07-14 08:14:41.364+07	2025-07-14 08:14:41.364+07	TIK014	\N	\N	\N
25	R1020O	1	06:40:00	Masuk	Terbuka	Sukses	2025-07-14 08:15:09.304+07	2025-07-14 08:15:09.304+07	TIK015	\N	\N	\N
26	R1020P	2	06:45:00	Keluar	Terbuka	Sukses	2025-07-14 08:15:22.816+07	2025-07-14 08:15:22.816+07	TIK016	\N	\N	\N
27	R1020Q	1	06:50:00	Masuk	Terbuka	Sukses	2025-07-14 08:15:33.837+07	2025-07-14 08:15:33.837+07	TIK017	\N	\N	\N
28	R1020R	2	06:55:00	Keluar	Terbuka	Sukses	2025-07-14 08:15:47.045+07	2025-07-14 08:15:47.045+07	TIK018	\N	\N	\N
29	R1020S	1	07:00:00	Masuk	Terbuka	Sukses	2025-07-14 08:16:00.802+07	2025-07-14 08:16:00.802+07	TIK019	\N	\N	\N
30	R1020T	2	07:05:00	Keluar	Terbuka	Sukses	2025-07-14 08:16:11.744+07	2025-07-14 08:16:11.744+07	TIK020	\N	\N	\N
31	R1020U	1	07:10:00	Masuk	Terbuka	Sukses	2025-07-14 08:16:25.01+07	2025-07-14 08:16:25.01+07	TIK021	\N	\N	\N
32	R1020W	1	07:20:00	Masuk	Terbuka	Sukses	2025-07-14 08:17:03.74+07	2025-07-14 08:17:03.74+07	TIK023	\N	\N	\N
33	R1020X	2	07:25:00	Keluar	Terbuka	Sukses	2025-07-14 08:17:18.774+07	2025-07-14 08:17:18.774+07	TIK024	\N	\N	\N
34	R1020Y	1	07:30:00	Masuk	Terbuka	Sukses	2025-07-14 08:17:34.436+07	2025-07-14 08:17:34.436+07	TIK025	\N	\N	\N
35	R1020Z	2	07:35:00	Keluar	Terbuka	Sukses	2025-07-14 08:17:45.773+07	2025-07-14 08:17:45.773+07	TIK026	\N	\N	\N
36	R1030A	1	07:40:00	Masuk	Terbuka	Sukses	2025-07-14 08:18:05.477+07	2025-07-14 08:18:05.477+07	TIK027	\N	\N	\N
37	R1030B	2	07:45:00	Keluar	Terbuka	Sukses	2025-07-14 08:18:19.85+07	2025-07-14 08:18:19.85+07	TIK028	\N	\N	\N
38	R1030C	1	07:50:00	Masuk	Terbuka	Sukses	2025-07-14 08:18:32.061+07	2025-07-14 08:18:32.061+07	TIK029	\N	\N	\N
39	R1030D	2	07:55:00	Keluar	Terbuka	Sukses	2025-07-14 08:18:42.47+07	2025-07-14 08:18:42.47+07	TIK030	\N	\N	\N
40	R1030E	1	08:00:00	Masuk	Terbuka	Sukses	2025-07-14 08:18:51.515+07	2025-07-14 08:18:51.515+07	TIK031	\N	\N	\N
41	R1030F	2	08:05:00	Keluar	Terbuka	Sukses	2025-07-14 08:19:04.612+07	2025-07-14 08:19:04.612+07	TIK032	\N	\N	\N
42	R10301	2	08:05:00	Keluar	Tertutup	Sukses	2025-07-14 08:57:37.326+07	2025-07-14 08:57:37.326+07	TIK032	\N	\N	\N
43	R10311	2	08:05:00	Keluar	Tertutup	Sukses	2025-07-14 09:02:44.172+07	2025-07-14 09:02:44.172+07	TIK032	\N	\N	\N
44	R10311	2	08:05:00	Keluar	Tertutup	Gagal	2025-07-14 09:03:44.895+07	2025-07-14 09:03:44.895+07	TIK039	\N	\N	\N
\.


--
-- Data for Name: daftar_rfids; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.daftar_rfids (id, rfid_tag, nama, no_plat, tanggal_daftar, tanggal_mulai, tanggal_akhir, status, synced, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_members (id, nama, no_hp, perusahaan_id, akses_tiket, akses_kartu, no_kartu, tgl_input, produk_id, tarif, biaya_member, biaya_kartu, periode, user_id, "createdAt", "updatedAt") FROM stdin;
1	TYjhjh	988789	1	f	t	9009a09a9	2025-06-16 00:00:00+07	3	819819898	819819898	7887	[2025-09-27,2025-09-29)	1	2025-06-16 19:58:46.812+07	2025-06-19 07:32:26.383+07
3	909009	909009	1	t	t	ia9898	2025-06-19 00:00:00+07	4	3	3	879989898	[2025-06-27,2025-06-29)	1	2025-06-19 08:22:52.892+07	2025-06-19 08:22:52.892+07
2	member 2	0090	1	t	f		2025-06-19 00:00:00+07	3	819819898	819819898	7887	[2025-06-29,2025-07-09)	1	2025-06-19 07:43:00.539+07	2025-06-19 08:51:47.153+07
4	YAAUAIIOI	9009988778	1	t	f		2025-06-19 00:00:00+07	4	3	3	879989898	[2025-06-27,2025-06-29)	1	2025-06-19 08:53:32.153+07	2025-06-19 08:53:32.153+07
5	admin	akjjk	3	t	t	09990	2025-06-26 00:00:00+07	3	819819898	819819898	7887	[2025-06-29,2025-07-09)	1	2025-06-26 14:56:04.431+07	2025-06-26 14:56:04.431+07
\.


--
-- Data for Name: data_nomor_polisis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_nomor_polisis (id, data_member_id, kendaraan_id, nomor_polisi, "createdAt", "updatedAt") FROM stdin;
3	1	3	898989	2025-06-18 12:35:16.567+07	2025-06-18 12:35:16.567+07
4	1	1	pop	2025-06-18 18:07:11.48+07	2025-06-19 03:47:53.55+07
1	1	3	UIUI	2025-06-16 19:58:46.87+07	2025-06-19 03:48:21.17+07
7	3	2	a988998	2025-06-19 08:22:53.146+07	2025-06-19 08:22:53.146+07
8	3	1	0990	2025-06-19 08:22:53.146+07	2025-06-19 08:22:53.146+07
9	3	4	aia90a90	2025-06-19 08:22:53.146+07	2025-06-19 08:22:53.146+07
11	2	1	Jakkk	2025-06-19 08:51:18.021+07	2025-06-19 08:51:18.021+07
10	2	3	ooo	2025-06-19 08:50:58.305+07	2025-06-19 08:50:58.305+07
6	2	3	aoiaioio	2025-06-19 07:43:00.617+07	2025-06-19 07:43:00.617+07
5	2	1	aioaioio	2025-06-19 07:43:00.617+07	2025-06-19 07:43:00.617+07
12	2	3	4r	2025-06-19 08:51:47.182+07	2025-06-19 08:51:47.182+07
13	4	2	a909090	2025-06-19 08:53:32.428+07	2025-06-19 08:53:32.428+07
15	4	4	iuiiu	2025-06-19 08:53:32.428+07	2025-06-19 08:53:32.428+07
14	4	2	YYYYYYY	2025-06-19 08:53:32.428+07	2025-06-19 08:54:23.669+07
16	5	3	oiioio	2025-06-26 14:56:04.53+07	2025-06-26 14:56:04.53+07
17	5	1	ioiooi	2025-06-26 14:56:04.53+07	2025-06-26 14:56:04.53+07
18	5	3	ai9a89a89	2025-06-26 14:56:04.53+07	2025-06-26 14:56:04.53+07
\.


--
-- Data for Name: data_vouchers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data_vouchers (id, produk_voucher_id, periode, tarif, model_bayar, verifikasi, no_tiket_atau_nopol, kendaraan_id, keterangan, "createdAt", "updatedAt") FROM stdin;
1	1	[2025-06-25,2025-06-27)	9909	Check In	Nopol	990	1	oioi	2025-06-16 20:35:28.147+07	2025-06-16 20:35:28.147+07
\.


--
-- Data for Name: global_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.global_settings (id, nama_operator, email_operator, no_telp_operator, no_fax_operator, alamat_operator, nama_lokasi, email_lokasi, no_telp_lokasi, no_fax_lokasi, alamat_lokasi, "createdAt", "updatedAt") FROM stdin;
12	ABC Parking ABC	cs@evosist.com	085817028312	085817028312	Jl. Alamanda No.227A Cilangkap Cipayung Jakarta Timur	Pasar Banjardowo	pasarmegahjaya@gmail.com	098768900232	08754345678	Pekuncen, Banyumas	2025-06-17 06:05:00.907+07	2025-06-17 06:31:50.55+07
\.


--
-- Data for Name: kendaraans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kendaraans (id, nama_kendaraan, tipe_kendaraan_id, status, user_id, "createdAt", "updatedAt") FROM stdin;
2	mob	2	f	1	2025-06-18 18:03:41.976+07	2025-06-18 18:03:41.976+07
3	Taxi	2	f	1	2025-06-18 18:03:55.788+07	2025-06-18 18:03:55.788+07
4	Umum	1	f	1	2025-06-18 18:04:09.24+07	2025-06-18 18:04:09.24+07
1	JAk	3	t	1	2025-06-16 19:56:06.005+07	2025-06-23 20:27:13.78+07
\.


--
-- Data for Name: laporan_riwayat_transaksi_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.laporan_riwayat_transaksi_members (id, no, nomor_tiket, waktu_masuk, gerbang_masuk_id, jenis_kendaraan_id, nomor_polisi, waktu_keluar, pintu_keluar_id, durasi_parkir, denda, total_pembayaran, jenis_transaksi, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: laporan_transaksi_batals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.laporan_transaksi_batals (id, "createdAt", "updatedAt", no_tiket, tanggal_masuk, pintu_masuk_id, tanggal_pembatalan, alasan_pembatalan, user_id) FROM stdin;
\.


--
-- Data for Name: level_penggunas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.level_penggunas (id, nama, hak_akses, perusahaan_id, "createdAt", "updatedAt") FROM stdin;
2	Petugas POS	[{"aksi": null, "nama_menu": "Dashboard", "nama_sub_menu": null}, {"nama_menu": "Transaksi", "nama_sub_menu": [{"aksi": {"read": true, "create": true}, "nama": "Manual mix"}, {"aksi": {"read": true, "create": true}, "nama": "Pembatalan Transaksi"}, {"aksi": {"read": true, "create_permasalahan": true}, "nama": "Permasalahan atau Perbaikan"}]}, {"nama_menu": "Report", "nama_sub_menu": [{"aksi": null, "nama": "Pembatalan Transaksi"}]}]	\N	2025-06-19 16:05:51.981+07	2025-06-19 16:05:51.981+07
3	 Admin Kendaraan	[{"aksi": null, "nama_menu": "Dashboard", "nama_sub_menu": null}, {"nama_menu": "Master", "nama_sub_menu": [{"aksi": {"read": true, "create": true, "delete": true, "update": true}, "nama": "Kendaraan"}]}, {"nama_menu": "Report", "nama_sub_menu": [{"aksi": null, "nama": "Kendaraan"}]}]	\N	2025-06-19 16:06:20.078+07	2025-06-19 16:06:20.078+07
4	Admin Member	[{"aksi": null, "nama_menu": "Dashboard", "nama_sub_menu": null}, {"nama_menu": "Master", "nama_sub_menu": [{"aksi": {"read": true, "create": true, "delete": true, "update": true, "perpanjang": true, "ganti_kartu": true, "ganti_nopol": true}, "nama": "Data Member"}, {"aksi": {"read": true}, "nama": "Produk Member"}, {"aksi": {"read": true}, "nama": "Kendaraan"}]}, {"nama_menu": "Report", "nama_sub_menu": [{"aksi": null, "nama": "Pendapatan Member"}]}]	\N	2025-06-19 16:06:40.605+07	2025-06-19 16:06:40.605+07
1	Admin	[{"aksi": {"read": true, "create": null, "delete": null, "update": null}, "nama_menu": "Dashboard", "nama_sub_menu": null}, {"nama_menu": "Master Data", "nama_sub_menu": [{"aksi": {"read": true, "create": true, "delete": true, "update": true, "aktif_nonaktif": true}, "nama": "Perusahaan"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true, "pengaturan": true}, "nama": "Level Pengguna"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true, "aktif_nonaktif": true}, "nama": "Data Pengguna"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true}, "nama": "Pos (In/Out)"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true, "aktif_nonaktif": true}, "nama": "Data Kendaraan"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true, "aktif_nonaktif": true}, "nama": "Produk Member"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true, "perpanjang": true, "ganti_kartu": true, "riwayat_transaksi": true, "ganti_nomor_polisi": true}, "nama": "Data Member"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true, "aktif_nonaktif": true}, "nama": "Produk Voucher"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true}, "nama": "Data Voucher"}, {"aksi": {"read": true, "create": true, "delete": true, "update": true, "aktif_nonaktif": true}, "nama": "Shift"}]}, {"nama_menu": "Laporan Data", "nama_sub_menu": [{"aksi": {"read": true, "create": null, "delete": null, "update": null}, "nama": "Kendaraan"}, {"aksi": {"read": true, "create": null, "delete": null, "update": null}, "nama": "Pendapatan Parkir"}, {"aksi": {"read": true, "create": null, "delete": null, "update": null, "batalkan_transaksi": true}, "nama": "Transaksi Batal"}, {"aksi": {"read": true, "create": null, "delete": null, "update": null}, "nama": "Audit Transaksi"}, {"aksi": {"read": true, "create": null, "delete": null, "update": null, "unggah_file": true}, "nama": "Settlement Cashless"}]}, {"nama_menu": "Transaksi", "nama_sub_menu": [{"aksi": {"read": null, "create": true, "delete": null, "update": null}, "nama": "Tambah Transaksi"}, {"aksi": {"read": true, "create": null, "delete": null, "update": null}, "nama": "Riwayat Transaksi"}]}, {"nama_menu": "Pengaturan", "nama_sub_menu": [{"aksi": {"read": true, "create": null, "delete": null, "update": true}, "nama": "Tarif Parkir"}, {"aksi": {"read": true, "create": null, "delete": null, "update": true, "aktif_nonaktif": true}, "nama": "Tarif Denda"}, {"aksi": {"read": true, "create": null, "delete": null, "update": null, "aktif_nonaktif": true}, "nama": "Pembayaran"}, {"aksi": {"read": true, "create": null, "delete": null, "update": true}, "nama": "Parameter"}, {"aksi": {"read": true, "create": null, "delete": null, "update": true}, "nama": "Global"}]}, {"nama_menu": "Bantuan", "nama_sub_menu": [{"aksi": {"read": true, "create": true, "delete": true, "update": true, "proses_data_perbaikan": true}, "nama": "Tiket"}]}]	1	2025-06-19 13:07:00.249+07	2025-06-26 15:31:05.451+07
\.


--
-- Data for Name: log_aktivitas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_aktivitas (id, waktu, jenis, deskripsi, lokasi, synced, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: nama_interfaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nama_interfaces (id, nama_interface, "createdAt", "updatedAt") FROM stdin;
1	BGI	2025-06-25 21:44:09.683+07	2025-06-25 21:44:09.683+07
2	TWS	2025-06-25 21:44:19.981+07	2025-06-25 21:44:19.981+07
3	PAWL	2025-06-25 21:44:31.399+07	2025-06-25 21:44:31.399+07
4	SMART PARKING	2025-06-25 21:44:42.903+07	2025-06-25 21:44:42.903+07
5	SER TELINKS	2025-06-25 21:44:54.613+07	2025-06-25 21:44:54.613+07
6	USB TELINKS	2025-06-25 21:45:07.253+07	2025-06-25 21:45:07.253+07
\.


--
-- Data for Name: nama_printers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nama_printers (id, nama_printer, "createdAt", "updatedAt") FROM stdin;
1	Epson TM-T81 Receipt	2025-06-25 21:40:06.963+07	2025-06-25 21:40:06.963+07
2	Epson TM-T82 Receipt	2025-06-25 21:40:19.642+07	2025-06-25 21:40:19.642+07
3	Epson TM-U220 Receipt	2025-06-25 21:40:31.462+07	2025-06-25 21:40:31.462+07
4	Epson TM-T88III Receipt	2025-06-25 21:40:42.231+07	2025-06-25 21:40:42.231+07
5	Epson TM-T88IV Receipt	2025-06-25 21:40:54.325+07	2025-06-25 21:40:54.325+07
6	Epson TM-T88V Receipt	2025-06-25 21:41:05.778+07	2025-06-25 21:41:05.778+07
7	Epson TM-T82II Receipt	2025-06-25 21:41:23.809+07	2025-06-25 21:41:23.809+07
\.


--
-- Data for Name: parameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parameters (id, nama, nilai, keterangan, "createdAt", "updatedAt") FROM stdin;
1	\N	\N	\N	2025-06-24 13:12:46.412+07	2025-06-24 13:12:46.412+07
2	Bayar Member Secara Berjenjang	false	Pembayaran member secara berjenjang ketika keluar	2025-06-24 13:15:16.263+07	2025-06-24 13:15:16.263+07
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments (id, jenis_payment, status, "createdAt", "updatedAt") FROM stdin;
1	Tunai	t	2025-06-24 12:46:41.769+07	2025-06-24 12:46:41.769+07
3	Cash	t	2025-06-24 12:54:33.513+07	2025-06-25 16:43:50.873+07
2	Member	t	2025-06-24 12:54:17.649+07	2025-07-17 20:39:29.922+07
\.


--
-- Data for Name: permasalahan_atau_perbaikans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.permasalahan_atau_perbaikans (id, judul_permasalahan, tanggal_permasalahan, kategori_permasalahan, pos_id, hardware_atau_alat, penyebab_permasalahan, keterangan_permasalahan, nama_pelapor, status_permasalahan, tanggal_perbaikan, jenis_perbaikan, status_perbaikan, penanganan, keterangan_penanganan, nama_yang_menangani, "createdAt", "updatedAt") FROM stdin;
2	oioioi	29-06-2025	Hardware/Alat	1	Modem	jjo	poi	oioi	Pending			Pending				2025-06-18 06:29:29.659+07	2025-06-18 06:29:29.659+07
\.


--
-- Data for Name: perusahaans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.perusahaans (id, nama, jenis_perusahaan, kontak, status, user_id, "createdAt", "updatedAt") FROM stdin;
2	Pt. Indah Pertiwi	Developer	90a90a09	t	1	2025-06-19 16:52:15.272+07	2025-06-24 16:09:29.161+07
1	900909	Developer	8989jkkj	f	1	2025-06-16 19:58:22.181+07	2025-06-24 16:09:31.724+07
3	iuui	Developer	oioiop	f	1	2025-06-24 17:09:20.021+07	2025-06-24 17:09:20.021+07
4	Pt. Pembangunan	Developer	0000	f	1	2025-06-27 12:23:03.794+07	2025-06-27 12:23:03.794+07
5	ii	Developer	900	f	1	2025-07-02 13:39:20.879+07	2025-07-02 13:39:20.879+07
6	tu	Developer	yyu	f	1	2025-07-02 17:13:44.053+07	2025-07-02 17:13:44.053+07
7	te	Tenant	788787	f	1	2025-07-02 17:14:02.948+07	2025-07-02 17:14:02.948+07
8	uu	Developer	u	f	1	2025-07-08 07:36:14.536+07	2025-07-08 07:36:14.536+07
9	G	Pemilik Gedung	999	f	1	2025-07-08 07:36:30.897+07	2025-07-08 07:36:30.897+07
10	H	Pemilik Gedung	888	f	1	2025-07-09 13:45:52.496+07	2025-07-09 13:45:52.496+07
\.


--
-- Data for Name: pos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pos (id, kode, keterangan, tipe_pos, tipe_manless_id, tipe_kendaraan, kamera_1, kamera_2, nama_printer_id, nama_interface_id, com_port, otorisasi, synchronize, user_id, "createdAt", "updatedAt") FROM stdin;
1	Pos Depan	kaajj	Out	\N	Mobil	t	f	\N	\N	9890	t	8	1	2025-06-18 06:14:45.916+07	2025-06-18 06:14:45.916+07
3	pos depan	tesj	Out	1	Mobil	f	t	1	2	90	t	7	1	2025-06-26 09:41:08.934+07	2025-06-26 09:41:08.934+07
2	0909	90	Out	3	Mobil	t	f	2	1	88	t	77	1	2025-06-25 21:42:13.904+07	2025-06-26 13:14:43.179+07
\.


--
-- Data for Name: produk_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk_members (id, nama, periode, list_id_kendaraan, max_kendaraan, tarif, biaya_kartu, biaya_ganti_nopol, status, user_id, "createdAt", "updatedAt") FROM stdin;
1	9090	[2025-06-27,2025-07-11)	{1}	87	90900990	899889	89988	t	1	2025-06-16 19:57:13.986+07	2025-06-18 06:20:57.034+07
2	YAyauio 	[2025-06-27,2025-06-29)	{1}	90	99898998	9989898	0	f	1	2025-06-18 10:50:22.686+07	2025-06-18 10:50:22.686+07
3	Tes Produk	[2025-06-29,2025-07-09)	{3,1}	98	819819898	7887	8887	f	1	2025-06-18 18:02:19.394+07	2025-06-18 22:22:41.949+07
4	Max 3	[2025-06-27,2025-06-29)	{1,2,4}	3	3	879989898	88	f	1	2025-06-19 08:21:53.809+07	2025-06-25 08:28:21.302+07
\.


--
-- Data for Name: produk_vouchers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk_vouchers (id, nama, periode, list_id_kendaraan, tarif, model_pembayaran, metode_verifikasi, status, user_id, "createdAt", "updatedAt") FROM stdin;
1	090jk	[2025-06-25,2025-06-27)	{1}	9909	Check In	Nopol	f	1	2025-06-16 20:35:03.63+07	2025-06-16 20:35:03.63+07
\.


--
-- Data for Name: riwayat_transaksi_ganti_nopols; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.riwayat_transaksi_ganti_nopols (id, tgl_transaksi, nomor_polisi_lama, nomor_polisi_baru, tarif, keterangan, user_id, "createdAt", "updatedAt") FROM stdin;
1	2025-06-19 03:46:36.691+07	Taoo	oiioio	819819898	tr	1	2025-06-19 03:46:36.693+07	2025-06-19 03:46:36.693+07
2	2025-06-19 03:47:53.578+07	oiioio	pop	819819898	iigbb	1	2025-06-19 03:47:53.578+07	2025-06-19 03:47:53.578+07
3	2025-06-19 03:48:21.198+07	89867	UIUI	819819898	tterr	1	2025-06-19 03:48:21.198+07	2025-06-19 03:48:21.198+07
4	2025-06-19 08:54:23.686+07	aiuiuui	YYYYYYY	3	yuyuyuui	1	2025-06-19 08:54:23.686+07	2025-06-19 08:54:23.686+07
\.


--
-- Data for Name: riwayat_transaksi_kartu_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.riwayat_transaksi_kartu_members (id, tgl_transaksi, no_kartu, tarif, keterangan, user_id, "createdAt", "updatedAt") FROM stdin;
1	2025-06-18 13:29:08.078+07	hjhjhj98	99898998	iiii	1	2025-06-18 13:29:08.079+07	2025-06-18 13:29:08.079+07
2	2025-06-18 13:29:23.992+07	hjhjhj980990	99898998	yuuyuy	1	2025-06-18 13:29:23.992+07	2025-06-18 13:29:23.992+07
3	2025-06-18 13:56:57.62+07	9009a09a9	99898998	iiioioio	1	2025-06-18 13:56:57.621+07	2025-06-18 13:56:57.621+07
\.


--
-- Data for Name: riwayat_transaksi_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.riwayat_transaksi_members (id, tgl_transaksi, produk_id, tarif, masa_aktif, user_id, "createdAt", "updatedAt") FROM stdin;
1	2025-06-18 08:44:57.358+07	1	90900990	{2025-06-27,2025-07-11}	1	2025-06-18 08:44:57.359+07	2025-06-18 08:44:57.359+07
2	2025-06-18 08:45:22.684+07	1	90900990	{2025-06-27,2025-07-11}	1	2025-06-18 08:45:22.685+07	2025-06-18 08:45:22.685+07
3	2025-06-18 10:51:08.755+07	2	99898998	{2025-06-27,2025-06-29}	1	2025-06-18 10:51:08.756+07	2025-06-18 10:51:08.756+07
4	2025-06-18 12:33:54.647+07	2	99898998	{2025-06-30,2025-07-02}	1	2025-06-18 12:33:54.647+07	2025-06-18 12:33:54.647+07
5	2025-06-18 12:34:16.52+07	2	99898998	{2025-07-31,2025-08-02}	1	2025-06-18 12:34:16.52+07	2025-06-18 12:34:16.52+07
6	2025-06-18 12:34:34.289+07	2	99898998	{2025-08-29,2025-08-31}	1	2025-06-18 12:34:34.289+07	2025-06-18 12:34:34.289+07
7	2025-06-18 12:35:36.504+07	2	99898998	{2025-09-27,2025-09-29}	1	2025-06-18 12:35:36.504+07	2025-06-18 12:35:36.504+07
\.


--
-- Data for Name: shifts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shifts (id, nama_shift, awal_shift, akhir_shift, status, user_id, "createdAt", "updatedAt") FROM stdin;
1	Shift	06:27:00	06:28:00	t	1	2025-06-18 06:22:25.078+07	2025-06-24 07:13:50.707+07
\.


--
-- Data for Name: tarif_dendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tarif_dendas (id, kendaraan_id, denda_tiket, denda_stnk, denda_member, status, "createdAt", "updatedAt") FROM stdin;
1	1	50000	95000	f	f	2025-06-24 10:39:21.471+07	2025-06-24 10:39:21.471+07
3	2	50000	95000	f	f	2025-06-24 10:39:34.769+07	2025-06-24 10:39:34.769+07
5	4	50000	95000	f	t	2025-06-24 10:39:46.672+07	2025-06-24 10:55:46.089+07
4	3	50000	95000	f	f	2025-06-24 10:39:39.669+07	2025-06-24 10:55:52.067+07
\.


--
-- Data for Name: tarif_parkirs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tarif_parkirs (id, kendaraan_id, grace_period, tarif_grace_period, rotasi_pertama, tarif_rotasi_pertama, rotasi_kedua, tarif_rotasi_kedua, rotasi_ketiga, tarif_rotasi_ketiga, tarif_maksimal, "createdAt", "updatedAt") FROM stdin;
1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-06-16 19:56:06.015+07	2025-06-16 19:56:06.015+07
2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-06-18 18:03:42.269+07	2025-06-18 18:03:42.269+07
3	3	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-06-18 18:03:56.112+07	2025-06-18 18:03:56.112+07
4	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-06-18 18:04:09.574+07	2025-06-18 18:04:09.574+07
\.


--
-- Data for Name: tiket_manuals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiket_manuals (id, barcode, jenis_pembayaran, waktu_masuk, waktu_keluar, lokasi, dicetak, vehicle_type, plat_nomor, durasi_parkir, biaya, synced, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: tipe_dendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipe_dendas (id, tipe_denda, "createdAt", "updatedAt") FROM stdin;
1	Tidak Dapat Menunjukkan STNK	2025-06-25 17:59:23.93+07	2025-06-25 17:59:23.93+07
2	Kehilangan Tiket	2025-06-25 18:02:34.405+07	2025-06-25 18:02:34.405+07
3	Tiket Rusak atau Tidak Bisa Dipindai	2025-06-25 18:02:55.035+07	2025-06-25 18:02:55.035+07
4	Melebihi Durasi Parkir yang Ditentukan	2025-06-25 18:03:07.941+07	2025-06-25 18:03:07.941+07
5	Parkir di Area Terlarang	2025-06-25 18:03:20.357+07	2025-06-25 18:03:20.357+07
6	Masuk Tanpa Tiket Resmi atau Menyalahi Prosedur Masuk	2025-06-25 18:03:31.191+07	2025-06-25 18:03:31.191+07
7	Melanggar Prosedur Keamanan	2025-06-25 18:03:42.65+07	2025-06-25 18:03:42.65+07
\.


--
-- Data for Name: tipe_kendaraans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipe_kendaraans (id, tipe_kendaraan, "createdAt", "updatedAt") FROM stdin;
1	All	2025-06-16 19:55:44.211+07	2025-06-16 19:55:44.211+07
2	Mobil	2025-06-16 19:55:49.988+07	2025-06-16 19:55:49.988+07
3	Motor	2025-06-16 19:55:55.617+07	2025-06-16 19:55:55.617+07
\.


--
-- Data for Name: tipe_manlesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipe_manlesses (id, tipe_manless, "createdAt", "updatedAt") FROM stdin;
1	Loop 1 with Button	2025-06-25 21:36:54.376+07	2025-06-25 21:36:54.376+07
2	Loop 1 with Button and Feedback	2025-06-25 21:37:07.746+07	2025-06-25 21:37:07.746+07
3	Feedback with Button	2025-06-25 21:37:20.486+07	2025-06-25 21:37:20.486+07
4	Button Only	2025-06-25 21:37:35.694+07	2025-06-25 21:37:35.694+07
\.


--
-- Data for Name: transaksi_manuals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi_manuals (id, tanggal_masuk, pintu_masuk_id, no_tiket_atau_tiket_manual, kendaraan_id, nomor_polisi, pintu_keluar_id, tanggal_keluar, petugas_id, shift_id, denda, tipe_denda_id, is_active, jenis_pembayaran_id, parkir, jumlah_denda_stnk, jumlah_denda_tiket, "interval", keterangan_atau_penjelasan, "createdAt", "updatedAt", id_data_voucher) FROM stdin;
1	2025-05-04 09:00:00+07	1	ABC/21/2005	1	R2020AJ	1	2025-05-04 11:00:00+07	1	1	f	1	t	1	9000	0	0	2	keterangan	2025-07-05 09:00:16.289+07	2025-07-05 09:00:16.289+07	\N
3	2025-05-04 09:00:00+07	1	ABC/21/2005	1	R2020AJ	1	2025-05-04 11:00:00+07	1	1	f	1	t	1	9000	0	0	2	keterangan	2025-07-10 09:40:59.996+07	2025-07-10 09:40:59.996+07	\N
4	2025-05-04 07:00:00+07	1	ABC/21/2005	1	R2020AJ	1	2025-05-04 07:00:00+07	1	1	f	\N	t	1	0	0	0	0	keterangan	2025-07-14 19:13:14.969+07	2025-07-14 19:13:14.969+07	\N
8	2025-05-04 07:00:00+07	1	ABC/21/2008	1	R2020AJ	1	2025-05-04 07:00:00+07	1	1	f	1	t	1	0	0	0	0	keterangan	2025-07-14 19:15:04.469+07	2025-07-14 19:15:04.469+07	1
\.


--
-- Data for Name: transaksi_rfids; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi_rfids (id, rfid_tag, waktu_masuk, waktu_keluar, lokasi, dicetak, vehicle_type, plat_nomor, durasi_parkir, biaya, synced, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: transaksi_tunais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi_tunais (id, tanggal_masuk, pintu_masuk_id, no_tiket_atau_tiket_manual, kendaraan_id, nomor_polisi, pintu_keluar_id, tanggal_keluar, petugas_id, shift_id, denda, tipe_denda_id, is_active, jenis_pembayaran_id, parkir, jumlah_denda_stnk, jumlah_denda_tiket, "interval", keterangan_atau_penjelasan, "createdAt", "updatedAt", id_data_voucher) FROM stdin;
1	2025-05-04 09:00:00+07	1	ABC/21/2005	1	R2020AJ	1	2025-05-04 11:00:00+07	1	1	f	1	t	1	9000	0	0	2	keterangan	2025-07-05 09:00:34.031+07	2025-07-05 09:00:34.031+07	\N
2	2025-05-04 09:00:00+07	1	ABC/21/2005	1	R2020AJ	1	2025-05-04 11:00:00+07	1	1	f	1	t	1	9000	0	0	2	keterangan	2025-07-10 09:41:11.693+07	2025-07-10 09:41:11.693+07	\N
\.


--
-- Data for Name: transaksis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksis (id, tanggal_masuk, pintu_masuk_id, no_tiket, is_manual, kendaraan_id, nomor_polisi, pintu_keluar_id, tanggal_keluar, petugas_id, shift_id, denda, tipe_denda_id, is_active, jenis_pembayaran_id, biaya_parkir, id_data_voucher, jumlah_denda_stnk, jumlah_denda_tiket, "interval", keterangan_atau_penjelasan, id_data_member, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, nama, jenis_kelamin, no_hp, alamat_lengkap, username, password, perusahaan_id, level_pengguna_id, status, added_by, "createdAt", "updatedAt") FROM stdin;
1	Admin	Laki-laki	9198189	099090	admin	$argon2id$v=19$m=65536,t=3,p=4$vd0svewh6SVENIJzAATGaQ$GvKHiqWfwps8PhXNrfnosdgk5SeGgSt9Fi9ppNmFqio	1	1	\N	1	2025-06-16 19:53:30.961+07	2025-06-19 13:07:12.187+07
4	Psjs	Laki-laki	990909	jajak	op	$argon2id$v=19$m=65536,t=3,p=4$X2hMQhxTno7yX/az6Ggh0A$L5ZnKfWWjPDAuYcWPYKuykSYESks872AZMCd3BAy/to	2	3	t	1	2025-06-25 07:20:22.635+07	2025-06-25 07:21:35.259+07
\.


--
-- Name: aktivitas_gerbang_kendaraans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aktivitas_gerbang_kendaraans_id_seq', 1, true);


--
-- Name: daftar_rfids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.daftar_rfids_id_seq', 1, false);


--
-- Name: data_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_members_id_seq', 2, true);


--
-- Name: data_nomor_polisis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_nomor_polisis_id_seq', 2, true);


--
-- Name: data_vouchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_vouchers_id_seq', 2, true);


--
-- Name: global_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.global_settings_id_seq', 2, true);


--
-- Name: kendaraans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kendaraans_id_seq', 1, true);


--
-- Name: laporan_riwayat_transaksi_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.laporan_riwayat_transaksi_members_id_seq', 1, false);


--
-- Name: laporan_transaksi_batals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.laporan_transaksi_batals_id_seq', 1, false);


--
-- Name: level_penggunas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.level_penggunas_id_seq', 1, true);


--
-- Name: log_aktivitas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_aktivitas_id_seq', 1, false);


--
-- Name: nama_interfaces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nama_interfaces_id_seq', 1, true);


--
-- Name: nama_printers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nama_printers_id_seq', 1, true);


--
-- Name: parameters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parameters_id_seq', 1, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 2, true);


--
-- Name: permasalahan_atau_perbaikans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permasalahan_atau_perbaikans_id_seq', 2, true);


--
-- Name: perusahaans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.perusahaans_id_seq', 1, true);


--
-- Name: pos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pos_id_seq', 1, true);


--
-- Name: produk_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_members_id_seq', 2, true);


--
-- Name: produk_vouchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_vouchers_id_seq', 1, true);


--
-- Name: riwayat_transaksi_ganti_nopols_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.riwayat_transaksi_ganti_nopols_id_seq', 1, false);


--
-- Name: riwayat_transaksi_kartu_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.riwayat_transaksi_kartu_members_id_seq', 1, false);


--
-- Name: riwayat_transaksi_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.riwayat_transaksi_members_id_seq', 7, true);


--
-- Name: shifts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shifts_id_seq', 1, true);


--
-- Name: tarif_dendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tarif_dendas_id_seq', 2, true);


--
-- Name: tarif_parkirs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tarif_parkirs_id_seq', 4, true);


--
-- Name: tiket_manuals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiket_manuals_id_seq', 1, false);


--
-- Name: tipe_dendas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipe_dendas_id_seq', 1, true);


--
-- Name: tipe_kendaraans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipe_kendaraans_id_seq', 1, true);


--
-- Name: tipe_manlesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipe_manlesses_id_seq', 1, true);


--
-- Name: transaksi_manuals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaksi_manuals_id_seq', 8, true);


--
-- Name: transaksi_rfids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaksi_rfids_id_seq', 1, false);


--
-- Name: transaksi_tunais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaksi_tunais_id_seq', 2, true);


--
-- Name: transaksis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaksis_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: aktivitas_gerbang_kendaraans aktivitas_gerbang_kendaraans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aktivitas_gerbang_kendaraans
    ADD CONSTRAINT aktivitas_gerbang_kendaraans_pkey PRIMARY KEY (id);


--
-- Name: daftar_rfids daftar_rfids_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_pkey PRIMARY KEY (id);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key1 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key10 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key11; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key11 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key12 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key13; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key13 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key14; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key14 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key15 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key16 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key17; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key17 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key18; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key18 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key19; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key19 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key2 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key20; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key20 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key3 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key4 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key5 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key6 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key7 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key8 UNIQUE (rfid_tag);


--
-- Name: daftar_rfids daftar_rfids_rfid_tag_key9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daftar_rfids
    ADD CONSTRAINT daftar_rfids_rfid_tag_key9 UNIQUE (rfid_tag);


--
-- Name: data_members data_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_members
    ADD CONSTRAINT data_members_pkey PRIMARY KEY (id);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key1 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key10 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key100; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key100 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key101; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key101 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key102; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key102 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key103; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key103 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key104; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key104 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key105; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key105 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key106; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key106 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key107; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key107 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key108; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key108 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key109; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key109 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key11; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key11 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key110; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key110 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key111; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key111 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key112; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key112 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key113; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key113 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key114; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key114 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key115; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key115 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key116; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key116 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key117; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key117 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key118; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key118 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key119; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key119 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key12 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key120; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key120 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key121; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key121 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key122; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key122 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key123; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key123 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key124; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key124 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key125; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key125 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key126; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key126 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key127; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key127 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key128; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key128 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key129; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key129 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key13; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key13 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key130; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key130 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key131; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key131 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key132; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key132 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key133; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key133 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key134; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key134 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key135; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key135 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key136; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key136 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key137; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key137 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key138; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key138 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key139; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key139 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key14; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key14 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key140; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key140 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key141; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key141 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key142; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key142 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key143; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key143 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key144; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key144 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key145; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key145 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key146; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key146 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key147; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key147 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key148; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key148 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key149; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key149 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key15 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key150; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key150 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key151; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key151 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key152; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key152 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key153; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key153 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key154; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key154 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key155; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key155 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key156; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key156 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key157; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key157 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key158; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key158 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key159; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key159 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key16 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key160; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key160 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key161; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key161 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key162; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key162 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key163; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key163 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key164; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key164 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key165; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key165 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key166; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key166 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key167; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key167 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key168; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key168 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key169; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key169 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key17; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key17 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key170; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key170 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key171; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key171 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key172; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key172 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key173; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key173 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key174; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key174 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key175; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key175 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key176; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key176 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key177; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key177 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key178; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key178 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key179; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key179 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key18; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key18 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key180; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key180 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key181; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key181 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key182; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key182 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key183; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key183 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key184; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key184 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key185; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key185 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key186; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key186 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key187; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key187 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key188; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key188 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key189; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key189 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key19; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key19 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key190; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key190 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key191; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key191 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key192; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key192 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key193; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key193 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key194; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key194 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key195; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key195 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key196; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key196 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key197; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key197 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key198; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key198 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key199; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key199 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key2 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key20; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key20 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key200; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key200 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key201; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key201 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key202; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key202 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key203; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key203 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key204; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key204 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key205; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key205 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key206; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key206 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key207; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key207 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key208; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key208 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key209; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key209 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key21; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key21 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key210; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key210 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key211; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key211 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key212; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key212 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key213; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key213 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key214; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key214 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key215; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key215 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key216; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key216 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key217; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key217 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key218; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key218 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key219; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key219 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key22; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key22 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key220; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key220 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key221; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key221 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key222; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key222 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key223; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key223 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key224; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key224 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key225; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key225 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key226; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key226 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key227; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key227 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key228; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key228 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key229; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key229 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key23; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key23 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key230; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key230 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key231; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key231 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key232; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key232 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key233; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key233 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key234; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key234 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key235; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key235 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key236; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key236 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key237; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key237 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key238; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key238 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key239; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key239 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key24; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key24 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key240; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key240 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key241; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key241 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key242; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key242 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key243; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key243 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key244; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key244 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key245; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key245 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key246; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key246 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key247; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key247 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key248; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key248 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key249; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key249 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key25; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key25 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key250; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key250 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key251; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key251 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key252; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key252 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key253; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key253 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key254; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key254 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key255; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key255 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key256; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key256 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key257; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key257 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key258; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key258 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key259; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key259 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key26; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key26 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key260; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key260 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key261; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key261 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key262; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key262 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key263; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key263 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key264; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key264 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key265; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key265 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key266; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key266 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key267; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key267 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key268; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key268 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key269; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key269 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key27; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key27 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key270; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key270 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key271; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key271 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key272; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key272 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key273; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key273 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key274; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key274 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key275; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key275 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key276; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key276 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key277 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key278; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key278 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key279; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key279 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key28; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key28 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key280; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key280 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key281; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key281 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key282; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key282 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key283; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key283 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key284; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key284 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key285; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key285 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key286; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key286 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key287; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key287 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key288; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key288 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key289; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key289 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key29; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key29 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key290; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key290 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key291; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key291 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key292; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key292 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key293; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key293 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key294; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key294 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key295; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key295 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key296; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key296 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key297; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key297 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key298; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key298 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key299; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key299 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key3 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key30; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key30 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key300; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key300 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key301; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key301 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key302; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key302 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key303; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key303 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key304; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key304 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key305; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key305 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key306; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key306 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key307; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key307 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key308; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key308 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key309; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key309 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key31; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key31 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key310; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key310 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key311; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key311 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key312; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key312 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key313; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key313 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key314; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key314 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key315; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key315 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key316; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key316 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key317; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key317 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key318; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key318 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key319; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key319 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key32; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key32 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key320; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key320 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key321; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key321 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key322; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key322 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key323; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key323 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key324; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key324 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key325; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key325 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key326; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key326 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key327; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key327 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key328; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key328 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key329; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key329 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key33; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key33 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key330; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key330 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key331; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key331 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key332; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key332 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key333; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key333 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key334; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key334 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key335; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key335 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key336; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key336 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key337; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key337 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key338; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key338 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key339; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key339 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key34; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key34 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key340; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key340 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key341; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key341 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key342; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key342 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key343; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key343 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key344; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key344 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key345; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key345 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key346; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key346 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key347; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key347 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key348; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key348 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key349; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key349 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key35; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key35 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key350; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key350 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key351; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key351 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key352; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key352 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key353; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key353 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key354; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key354 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key355; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key355 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key356; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key356 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key357; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key357 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key358; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key358 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key359; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key359 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key36; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key36 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key360; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key360 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key361; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key361 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key362; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key362 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key363; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key363 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key364; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key364 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key365; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key365 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key366; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key366 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key367; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key367 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key368; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key368 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key369; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key369 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key37; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key37 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key370; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key370 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key371; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key371 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key372; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key372 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key373; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key373 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key374; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key374 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key38; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key38 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key39; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key39 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key4 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key40; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key40 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key41; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key41 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key42; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key42 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key43; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key43 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key44; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key44 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key45; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key45 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key46; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key46 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key47; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key47 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key48; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key48 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key49; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key49 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key5 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key50; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key50 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key51; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key51 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key52; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key52 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key53; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key53 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key54; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key54 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key55; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key55 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key56; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key56 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key57; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key57 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key58; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key58 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key59; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key59 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key6 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key60; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key60 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key61; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key61 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key62; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key62 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key63; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key63 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key64; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key64 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key65; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key65 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key66; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key66 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key67; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key67 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key68; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key68 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key69; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key69 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key7 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key70; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key70 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key71; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key71 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key72; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key72 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key73; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key73 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key74; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key74 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key75; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key75 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key76; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key76 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key77; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key77 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key78; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key78 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key79; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key79 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key8 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key80; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key80 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key81; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key81 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key82; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key82 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key83; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key83 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key84; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key84 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key85; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key85 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key86; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key86 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key87; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key87 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key88; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key88 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key89; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key89 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key9 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key90; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key90 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key91; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key91 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key92; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key92 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key93; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key93 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key94; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key94 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key95; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key95 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key96; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key96 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key97; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key97 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key98; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key98 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_nomor_polisi_key99; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_nomor_polisi_key99 UNIQUE (nomor_polisi);


--
-- Name: data_nomor_polisis data_nomor_polisis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_pkey PRIMARY KEY (id);


--
-- Name: data_vouchers data_vouchers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_vouchers
    ADD CONSTRAINT data_vouchers_pkey PRIMARY KEY (id);


--
-- Name: global_settings global_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.global_settings
    ADD CONSTRAINT global_settings_pkey PRIMARY KEY (id);


--
-- Name: kendaraans kendaraans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kendaraans
    ADD CONSTRAINT kendaraans_pkey PRIMARY KEY (id);


--
-- Name: laporan_riwayat_transaksi_members laporan_riwayat_transaksi_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_riwayat_transaksi_members
    ADD CONSTRAINT laporan_riwayat_transaksi_members_pkey PRIMARY KEY (id);


--
-- Name: laporan_transaksi_batals laporan_transaksi_batals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_transaksi_batals
    ADD CONSTRAINT laporan_transaksi_batals_pkey PRIMARY KEY (id);


--
-- Name: level_penggunas level_penggunas_nama_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key1 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key10 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key100; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key100 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key101; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key101 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key102; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key102 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key103; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key103 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key104; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key104 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key105; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key105 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key106; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key106 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key107; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key107 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key108; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key108 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key109; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key109 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key11; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key11 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key110; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key110 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key111; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key111 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key112; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key112 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key113; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key113 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key114; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key114 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key115; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key115 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key116; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key116 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key117; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key117 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key118; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key118 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key119; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key119 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key12 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key120; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key120 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key121; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key121 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key122; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key122 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key123; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key123 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key124; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key124 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key125; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key125 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key126; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key126 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key127; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key127 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key128; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key128 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key129; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key129 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key13; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key13 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key130; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key130 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key131; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key131 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key132; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key132 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key133; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key133 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key134; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key134 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key135; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key135 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key136; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key136 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key137; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key137 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key138; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key138 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key139; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key139 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key14; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key14 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key140; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key140 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key141; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key141 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key142; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key142 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key143; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key143 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key144; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key144 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key145; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key145 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key146; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key146 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key147; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key147 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key148; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key148 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key149; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key149 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key15 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key150; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key150 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key151; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key151 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key152; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key152 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key153; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key153 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key154; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key154 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key155; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key155 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key156; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key156 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key157; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key157 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key158; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key158 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key159; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key159 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key16 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key160; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key160 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key161; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key161 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key162; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key162 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key163; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key163 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key164; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key164 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key165; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key165 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key166; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key166 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key167; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key167 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key168; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key168 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key169; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key169 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key17; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key17 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key170; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key170 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key171; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key171 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key172; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key172 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key173; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key173 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key174; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key174 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key175; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key175 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key176; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key176 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key177; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key177 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key178; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key178 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key179; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key179 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key18; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key18 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key180; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key180 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key181; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key181 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key182; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key182 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key183; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key183 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key184; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key184 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key185; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key185 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key186; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key186 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key187; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key187 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key188; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key188 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key189; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key189 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key19; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key19 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key190; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key190 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key191; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key191 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key192; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key192 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key193; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key193 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key194; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key194 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key195; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key195 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key196; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key196 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key197; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key197 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key198; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key198 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key199; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key199 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key2 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key20; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key20 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key200; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key200 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key201; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key201 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key202; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key202 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key203; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key203 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key204; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key204 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key205; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key205 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key206; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key206 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key207; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key207 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key208; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key208 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key209; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key209 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key21; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key21 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key210; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key210 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key211; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key211 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key212; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key212 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key213; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key213 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key214; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key214 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key215; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key215 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key216; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key216 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key217; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key217 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key218; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key218 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key219; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key219 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key22; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key22 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key220; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key220 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key221; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key221 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key222; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key222 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key223; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key223 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key224; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key224 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key225; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key225 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key226; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key226 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key227; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key227 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key228; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key228 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key229; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key229 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key23; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key23 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key230; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key230 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key231; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key231 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key232; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key232 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key233; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key233 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key234; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key234 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key235; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key235 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key236; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key236 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key237; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key237 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key238; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key238 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key239; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key239 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key24; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key24 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key240; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key240 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key241; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key241 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key242; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key242 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key243; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key243 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key244; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key244 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key245; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key245 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key246; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key246 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key247; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key247 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key248; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key248 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key249; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key249 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key25; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key25 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key250; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key250 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key251; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key251 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key252; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key252 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key253; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key253 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key254; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key254 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key255; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key255 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key256; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key256 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key257; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key257 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key258; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key258 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key259; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key259 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key26; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key26 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key260; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key260 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key261; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key261 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key262; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key262 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key263; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key263 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key264; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key264 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key265; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key265 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key266; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key266 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key267; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key267 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key268; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key268 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key269; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key269 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key27; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key27 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key270; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key270 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key271; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key271 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key272; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key272 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key273; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key273 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key274; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key274 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key275; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key275 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key276; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key276 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key277 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key278; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key278 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key279; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key279 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key28; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key28 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key280; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key280 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key281; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key281 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key282; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key282 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key283; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key283 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key284; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key284 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key285; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key285 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key286; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key286 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key287; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key287 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key288; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key288 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key289; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key289 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key29; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key29 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key290; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key290 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key291; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key291 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key292; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key292 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key293; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key293 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key294; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key294 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key295; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key295 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key296; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key296 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key297; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key297 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key298; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key298 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key299; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key299 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key3 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key30; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key30 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key300; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key300 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key301; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key301 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key302; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key302 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key303; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key303 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key304; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key304 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key305; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key305 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key306; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key306 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key307; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key307 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key308; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key308 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key309; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key309 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key31; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key31 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key310; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key310 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key311; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key311 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key312; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key312 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key313; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key313 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key314; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key314 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key315; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key315 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key316; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key316 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key317; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key317 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key318; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key318 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key319; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key319 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key32; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key32 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key320; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key320 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key321; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key321 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key322; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key322 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key323; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key323 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key324; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key324 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key325; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key325 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key326; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key326 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key327; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key327 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key328; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key328 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key329; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key329 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key33; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key33 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key330; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key330 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key331; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key331 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key332; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key332 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key333; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key333 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key334; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key334 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key335; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key335 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key336; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key336 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key337; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key337 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key338; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key338 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key339; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key339 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key34; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key34 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key340; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key340 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key341; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key341 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key342; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key342 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key343; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key343 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key344; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key344 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key345; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key345 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key346; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key346 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key347; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key347 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key348; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key348 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key35; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key35 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key36; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key36 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key37; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key37 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key38; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key38 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key39; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key39 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key4 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key40; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key40 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key41; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key41 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key42; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key42 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key43; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key43 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key44; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key44 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key45; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key45 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key46; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key46 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key47; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key47 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key48; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key48 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key49; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key49 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key5 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key50; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key50 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key51; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key51 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key52; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key52 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key53; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key53 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key54; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key54 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key55; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key55 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key56; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key56 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key57; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key57 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key58; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key58 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key59; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key59 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key6 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key60; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key60 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key61; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key61 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key62; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key62 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key63; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key63 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key64; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key64 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key65; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key65 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key66; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key66 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key67; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key67 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key68; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key68 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key69; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key69 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key7 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key70; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key70 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key71; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key71 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key72; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key72 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key73; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key73 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key74; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key74 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key75; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key75 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key76; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key76 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key77; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key77 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key78; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key78 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key79; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key79 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key8 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key80; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key80 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key81; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key81 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key82; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key82 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key83; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key83 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key84; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key84 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key85; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key85 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key86; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key86 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key87; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key87 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key88; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key88 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key89; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key89 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key9 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key90; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key90 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key91; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key91 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key92; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key92 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key93; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key93 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key94; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key94 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key95; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key95 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key96; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key96 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key97; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key97 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key98; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key98 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_nama_key99; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_nama_key99 UNIQUE (nama);


--
-- Name: level_penggunas level_penggunas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_pkey PRIMARY KEY (id);


--
-- Name: log_aktivitas log_aktivitas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_aktivitas
    ADD CONSTRAINT log_aktivitas_pkey PRIMARY KEY (id);


--
-- Name: nama_interfaces nama_interfaces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nama_interfaces
    ADD CONSTRAINT nama_interfaces_pkey PRIMARY KEY (id);


--
-- Name: nama_printers nama_printers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nama_printers
    ADD CONSTRAINT nama_printers_pkey PRIMARY KEY (id);


--
-- Name: parameters parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameters
    ADD CONSTRAINT parameters_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: permasalahan_atau_perbaikans permasalahan_atau_perbaikans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permasalahan_atau_perbaikans
    ADD CONSTRAINT permasalahan_atau_perbaikans_pkey PRIMARY KEY (id);


--
-- Name: perusahaans perusahaans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perusahaans
    ADD CONSTRAINT perusahaans_pkey PRIMARY KEY (id);


--
-- Name: pos pos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos
    ADD CONSTRAINT pos_pkey PRIMARY KEY (id);


--
-- Name: produk_members produk_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk_members
    ADD CONSTRAINT produk_members_pkey PRIMARY KEY (id);


--
-- Name: produk_vouchers produk_vouchers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk_vouchers
    ADD CONSTRAINT produk_vouchers_pkey PRIMARY KEY (id);


--
-- Name: riwayat_transaksi_ganti_nopols riwayat_transaksi_ganti_nopols_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_ganti_nopols
    ADD CONSTRAINT riwayat_transaksi_ganti_nopols_pkey PRIMARY KEY (id);


--
-- Name: riwayat_transaksi_kartu_members riwayat_transaksi_kartu_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_kartu_members
    ADD CONSTRAINT riwayat_transaksi_kartu_members_pkey PRIMARY KEY (id);


--
-- Name: riwayat_transaksi_members riwayat_transaksi_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_members
    ADD CONSTRAINT riwayat_transaksi_members_pkey PRIMARY KEY (id);


--
-- Name: shifts shifts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shifts
    ADD CONSTRAINT shifts_pkey PRIMARY KEY (id);


--
-- Name: tarif_dendas tarif_dendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarif_dendas
    ADD CONSTRAINT tarif_dendas_pkey PRIMARY KEY (id);


--
-- Name: tarif_parkirs tarif_parkirs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarif_parkirs
    ADD CONSTRAINT tarif_parkirs_pkey PRIMARY KEY (id);


--
-- Name: tiket_manuals tiket_manuals_barcode_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key1 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key10 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key11; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key11 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key12 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key13; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key13 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key14; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key14 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key15 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key2 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key3 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key4 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key5 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key6 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key7 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key8 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_barcode_key9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_barcode_key9 UNIQUE (barcode);


--
-- Name: tiket_manuals tiket_manuals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiket_manuals
    ADD CONSTRAINT tiket_manuals_pkey PRIMARY KEY (id);


--
-- Name: tipe_dendas tipe_dendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipe_dendas
    ADD CONSTRAINT tipe_dendas_pkey PRIMARY KEY (id);


--
-- Name: tipe_kendaraans tipe_kendaraans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipe_kendaraans
    ADD CONSTRAINT tipe_kendaraans_pkey PRIMARY KEY (id);


--
-- Name: tipe_manlesses tipe_manlesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipe_manlesses
    ADD CONSTRAINT tipe_manlesses_pkey PRIMARY KEY (id);


--
-- Name: transaksi_manuals transaksi_manuals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_pkey PRIMARY KEY (id);


--
-- Name: transaksi_rfids transaksi_rfids_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_rfids
    ADD CONSTRAINT transaksi_rfids_pkey PRIMARY KEY (id);


--
-- Name: transaksi_tunais transaksi_tunais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_pkey PRIMARY KEY (id);


--
-- Name: transaksis transaksis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksis
    ADD CONSTRAINT transaksis_pkey PRIMARY KEY (id);


--
-- Name: users users_nama_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key UNIQUE (nama);


--
-- Name: users users_nama_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key1 UNIQUE (nama);


--
-- Name: users users_nama_key10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key10 UNIQUE (nama);


--
-- Name: users users_nama_key100; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key100 UNIQUE (nama);


--
-- Name: users users_nama_key101; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key101 UNIQUE (nama);


--
-- Name: users users_nama_key102; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key102 UNIQUE (nama);


--
-- Name: users users_nama_key103; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key103 UNIQUE (nama);


--
-- Name: users users_nama_key104; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key104 UNIQUE (nama);


--
-- Name: users users_nama_key105; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key105 UNIQUE (nama);


--
-- Name: users users_nama_key106; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key106 UNIQUE (nama);


--
-- Name: users users_nama_key107; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key107 UNIQUE (nama);


--
-- Name: users users_nama_key108; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key108 UNIQUE (nama);


--
-- Name: users users_nama_key109; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key109 UNIQUE (nama);


--
-- Name: users users_nama_key11; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key11 UNIQUE (nama);


--
-- Name: users users_nama_key110; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key110 UNIQUE (nama);


--
-- Name: users users_nama_key111; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key111 UNIQUE (nama);


--
-- Name: users users_nama_key112; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key112 UNIQUE (nama);


--
-- Name: users users_nama_key113; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key113 UNIQUE (nama);


--
-- Name: users users_nama_key114; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key114 UNIQUE (nama);


--
-- Name: users users_nama_key115; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key115 UNIQUE (nama);


--
-- Name: users users_nama_key116; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key116 UNIQUE (nama);


--
-- Name: users users_nama_key117; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key117 UNIQUE (nama);


--
-- Name: users users_nama_key118; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key118 UNIQUE (nama);


--
-- Name: users users_nama_key119; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key119 UNIQUE (nama);


--
-- Name: users users_nama_key12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key12 UNIQUE (nama);


--
-- Name: users users_nama_key120; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key120 UNIQUE (nama);


--
-- Name: users users_nama_key121; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key121 UNIQUE (nama);


--
-- Name: users users_nama_key122; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key122 UNIQUE (nama);


--
-- Name: users users_nama_key123; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key123 UNIQUE (nama);


--
-- Name: users users_nama_key124; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key124 UNIQUE (nama);


--
-- Name: users users_nama_key125; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key125 UNIQUE (nama);


--
-- Name: users users_nama_key126; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key126 UNIQUE (nama);


--
-- Name: users users_nama_key127; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key127 UNIQUE (nama);


--
-- Name: users users_nama_key128; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key128 UNIQUE (nama);


--
-- Name: users users_nama_key129; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key129 UNIQUE (nama);


--
-- Name: users users_nama_key13; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key13 UNIQUE (nama);


--
-- Name: users users_nama_key130; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key130 UNIQUE (nama);


--
-- Name: users users_nama_key131; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key131 UNIQUE (nama);


--
-- Name: users users_nama_key132; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key132 UNIQUE (nama);


--
-- Name: users users_nama_key133; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key133 UNIQUE (nama);


--
-- Name: users users_nama_key134; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key134 UNIQUE (nama);


--
-- Name: users users_nama_key135; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key135 UNIQUE (nama);


--
-- Name: users users_nama_key136; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key136 UNIQUE (nama);


--
-- Name: users users_nama_key137; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key137 UNIQUE (nama);


--
-- Name: users users_nama_key138; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key138 UNIQUE (nama);


--
-- Name: users users_nama_key139; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key139 UNIQUE (nama);


--
-- Name: users users_nama_key14; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key14 UNIQUE (nama);


--
-- Name: users users_nama_key140; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key140 UNIQUE (nama);


--
-- Name: users users_nama_key141; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key141 UNIQUE (nama);


--
-- Name: users users_nama_key142; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key142 UNIQUE (nama);


--
-- Name: users users_nama_key143; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key143 UNIQUE (nama);


--
-- Name: users users_nama_key144; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key144 UNIQUE (nama);


--
-- Name: users users_nama_key145; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key145 UNIQUE (nama);


--
-- Name: users users_nama_key146; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key146 UNIQUE (nama);


--
-- Name: users users_nama_key147; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key147 UNIQUE (nama);


--
-- Name: users users_nama_key148; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key148 UNIQUE (nama);


--
-- Name: users users_nama_key149; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key149 UNIQUE (nama);


--
-- Name: users users_nama_key15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key15 UNIQUE (nama);


--
-- Name: users users_nama_key150; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key150 UNIQUE (nama);


--
-- Name: users users_nama_key151; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key151 UNIQUE (nama);


--
-- Name: users users_nama_key152; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key152 UNIQUE (nama);


--
-- Name: users users_nama_key153; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key153 UNIQUE (nama);


--
-- Name: users users_nama_key154; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key154 UNIQUE (nama);


--
-- Name: users users_nama_key155; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key155 UNIQUE (nama);


--
-- Name: users users_nama_key156; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key156 UNIQUE (nama);


--
-- Name: users users_nama_key157; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key157 UNIQUE (nama);


--
-- Name: users users_nama_key158; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key158 UNIQUE (nama);


--
-- Name: users users_nama_key159; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key159 UNIQUE (nama);


--
-- Name: users users_nama_key16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key16 UNIQUE (nama);


--
-- Name: users users_nama_key160; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key160 UNIQUE (nama);


--
-- Name: users users_nama_key161; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key161 UNIQUE (nama);


--
-- Name: users users_nama_key162; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key162 UNIQUE (nama);


--
-- Name: users users_nama_key163; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key163 UNIQUE (nama);


--
-- Name: users users_nama_key164; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key164 UNIQUE (nama);


--
-- Name: users users_nama_key165; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key165 UNIQUE (nama);


--
-- Name: users users_nama_key166; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key166 UNIQUE (nama);


--
-- Name: users users_nama_key167; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key167 UNIQUE (nama);


--
-- Name: users users_nama_key168; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key168 UNIQUE (nama);


--
-- Name: users users_nama_key169; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key169 UNIQUE (nama);


--
-- Name: users users_nama_key17; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key17 UNIQUE (nama);


--
-- Name: users users_nama_key170; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key170 UNIQUE (nama);


--
-- Name: users users_nama_key171; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key171 UNIQUE (nama);


--
-- Name: users users_nama_key172; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key172 UNIQUE (nama);


--
-- Name: users users_nama_key173; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key173 UNIQUE (nama);


--
-- Name: users users_nama_key174; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key174 UNIQUE (nama);


--
-- Name: users users_nama_key175; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key175 UNIQUE (nama);


--
-- Name: users users_nama_key176; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key176 UNIQUE (nama);


--
-- Name: users users_nama_key177; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key177 UNIQUE (nama);


--
-- Name: users users_nama_key178; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key178 UNIQUE (nama);


--
-- Name: users users_nama_key179; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key179 UNIQUE (nama);


--
-- Name: users users_nama_key18; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key18 UNIQUE (nama);


--
-- Name: users users_nama_key180; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key180 UNIQUE (nama);


--
-- Name: users users_nama_key181; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key181 UNIQUE (nama);


--
-- Name: users users_nama_key182; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key182 UNIQUE (nama);


--
-- Name: users users_nama_key183; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key183 UNIQUE (nama);


--
-- Name: users users_nama_key184; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key184 UNIQUE (nama);


--
-- Name: users users_nama_key185; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key185 UNIQUE (nama);


--
-- Name: users users_nama_key186; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key186 UNIQUE (nama);


--
-- Name: users users_nama_key187; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key187 UNIQUE (nama);


--
-- Name: users users_nama_key188; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key188 UNIQUE (nama);


--
-- Name: users users_nama_key189; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key189 UNIQUE (nama);


--
-- Name: users users_nama_key19; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key19 UNIQUE (nama);


--
-- Name: users users_nama_key190; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key190 UNIQUE (nama);


--
-- Name: users users_nama_key191; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key191 UNIQUE (nama);


--
-- Name: users users_nama_key192; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key192 UNIQUE (nama);


--
-- Name: users users_nama_key193; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key193 UNIQUE (nama);


--
-- Name: users users_nama_key194; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key194 UNIQUE (nama);


--
-- Name: users users_nama_key195; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key195 UNIQUE (nama);


--
-- Name: users users_nama_key196; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key196 UNIQUE (nama);


--
-- Name: users users_nama_key197; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key197 UNIQUE (nama);


--
-- Name: users users_nama_key198; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key198 UNIQUE (nama);


--
-- Name: users users_nama_key199; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key199 UNIQUE (nama);


--
-- Name: users users_nama_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key2 UNIQUE (nama);


--
-- Name: users users_nama_key20; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key20 UNIQUE (nama);


--
-- Name: users users_nama_key200; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key200 UNIQUE (nama);


--
-- Name: users users_nama_key201; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key201 UNIQUE (nama);


--
-- Name: users users_nama_key202; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key202 UNIQUE (nama);


--
-- Name: users users_nama_key203; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key203 UNIQUE (nama);


--
-- Name: users users_nama_key204; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key204 UNIQUE (nama);


--
-- Name: users users_nama_key205; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key205 UNIQUE (nama);


--
-- Name: users users_nama_key206; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key206 UNIQUE (nama);


--
-- Name: users users_nama_key207; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key207 UNIQUE (nama);


--
-- Name: users users_nama_key208; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key208 UNIQUE (nama);


--
-- Name: users users_nama_key209; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key209 UNIQUE (nama);


--
-- Name: users users_nama_key21; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key21 UNIQUE (nama);


--
-- Name: users users_nama_key210; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key210 UNIQUE (nama);


--
-- Name: users users_nama_key211; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key211 UNIQUE (nama);


--
-- Name: users users_nama_key212; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key212 UNIQUE (nama);


--
-- Name: users users_nama_key213; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key213 UNIQUE (nama);


--
-- Name: users users_nama_key214; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key214 UNIQUE (nama);


--
-- Name: users users_nama_key215; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key215 UNIQUE (nama);


--
-- Name: users users_nama_key216; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key216 UNIQUE (nama);


--
-- Name: users users_nama_key217; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key217 UNIQUE (nama);


--
-- Name: users users_nama_key218; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key218 UNIQUE (nama);


--
-- Name: users users_nama_key219; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key219 UNIQUE (nama);


--
-- Name: users users_nama_key22; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key22 UNIQUE (nama);


--
-- Name: users users_nama_key220; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key220 UNIQUE (nama);


--
-- Name: users users_nama_key221; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key221 UNIQUE (nama);


--
-- Name: users users_nama_key222; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key222 UNIQUE (nama);


--
-- Name: users users_nama_key223; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key223 UNIQUE (nama);


--
-- Name: users users_nama_key224; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key224 UNIQUE (nama);


--
-- Name: users users_nama_key225; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key225 UNIQUE (nama);


--
-- Name: users users_nama_key226; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key226 UNIQUE (nama);


--
-- Name: users users_nama_key227; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key227 UNIQUE (nama);


--
-- Name: users users_nama_key228; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key228 UNIQUE (nama);


--
-- Name: users users_nama_key229; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key229 UNIQUE (nama);


--
-- Name: users users_nama_key23; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key23 UNIQUE (nama);


--
-- Name: users users_nama_key230; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key230 UNIQUE (nama);


--
-- Name: users users_nama_key231; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key231 UNIQUE (nama);


--
-- Name: users users_nama_key232; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key232 UNIQUE (nama);


--
-- Name: users users_nama_key233; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key233 UNIQUE (nama);


--
-- Name: users users_nama_key234; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key234 UNIQUE (nama);


--
-- Name: users users_nama_key235; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key235 UNIQUE (nama);


--
-- Name: users users_nama_key236; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key236 UNIQUE (nama);


--
-- Name: users users_nama_key237; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key237 UNIQUE (nama);


--
-- Name: users users_nama_key238; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key238 UNIQUE (nama);


--
-- Name: users users_nama_key239; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key239 UNIQUE (nama);


--
-- Name: users users_nama_key24; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key24 UNIQUE (nama);


--
-- Name: users users_nama_key240; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key240 UNIQUE (nama);


--
-- Name: users users_nama_key241; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key241 UNIQUE (nama);


--
-- Name: users users_nama_key242; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key242 UNIQUE (nama);


--
-- Name: users users_nama_key243; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key243 UNIQUE (nama);


--
-- Name: users users_nama_key244; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key244 UNIQUE (nama);


--
-- Name: users users_nama_key245; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key245 UNIQUE (nama);


--
-- Name: users users_nama_key246; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key246 UNIQUE (nama);


--
-- Name: users users_nama_key247; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key247 UNIQUE (nama);


--
-- Name: users users_nama_key248; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key248 UNIQUE (nama);


--
-- Name: users users_nama_key249; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key249 UNIQUE (nama);


--
-- Name: users users_nama_key25; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key25 UNIQUE (nama);


--
-- Name: users users_nama_key250; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key250 UNIQUE (nama);


--
-- Name: users users_nama_key251; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key251 UNIQUE (nama);


--
-- Name: users users_nama_key252; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key252 UNIQUE (nama);


--
-- Name: users users_nama_key253; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key253 UNIQUE (nama);


--
-- Name: users users_nama_key254; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key254 UNIQUE (nama);


--
-- Name: users users_nama_key255; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key255 UNIQUE (nama);


--
-- Name: users users_nama_key256; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key256 UNIQUE (nama);


--
-- Name: users users_nama_key257; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key257 UNIQUE (nama);


--
-- Name: users users_nama_key258; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key258 UNIQUE (nama);


--
-- Name: users users_nama_key259; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key259 UNIQUE (nama);


--
-- Name: users users_nama_key26; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key26 UNIQUE (nama);


--
-- Name: users users_nama_key260; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key260 UNIQUE (nama);


--
-- Name: users users_nama_key261; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key261 UNIQUE (nama);


--
-- Name: users users_nama_key262; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key262 UNIQUE (nama);


--
-- Name: users users_nama_key263; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key263 UNIQUE (nama);


--
-- Name: users users_nama_key264; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key264 UNIQUE (nama);


--
-- Name: users users_nama_key265; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key265 UNIQUE (nama);


--
-- Name: users users_nama_key266; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key266 UNIQUE (nama);


--
-- Name: users users_nama_key267; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key267 UNIQUE (nama);


--
-- Name: users users_nama_key268; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key268 UNIQUE (nama);


--
-- Name: users users_nama_key269; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key269 UNIQUE (nama);


--
-- Name: users users_nama_key27; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key27 UNIQUE (nama);


--
-- Name: users users_nama_key270; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key270 UNIQUE (nama);


--
-- Name: users users_nama_key271; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key271 UNIQUE (nama);


--
-- Name: users users_nama_key272; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key272 UNIQUE (nama);


--
-- Name: users users_nama_key273; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key273 UNIQUE (nama);


--
-- Name: users users_nama_key274; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key274 UNIQUE (nama);


--
-- Name: users users_nama_key275; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key275 UNIQUE (nama);


--
-- Name: users users_nama_key276; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key276 UNIQUE (nama);


--
-- Name: users users_nama_key277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key277 UNIQUE (nama);


--
-- Name: users users_nama_key278; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key278 UNIQUE (nama);


--
-- Name: users users_nama_key279; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key279 UNIQUE (nama);


--
-- Name: users users_nama_key28; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key28 UNIQUE (nama);


--
-- Name: users users_nama_key280; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key280 UNIQUE (nama);


--
-- Name: users users_nama_key281; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key281 UNIQUE (nama);


--
-- Name: users users_nama_key282; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key282 UNIQUE (nama);


--
-- Name: users users_nama_key283; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key283 UNIQUE (nama);


--
-- Name: users users_nama_key284; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key284 UNIQUE (nama);


--
-- Name: users users_nama_key285; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key285 UNIQUE (nama);


--
-- Name: users users_nama_key286; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key286 UNIQUE (nama);


--
-- Name: users users_nama_key287; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key287 UNIQUE (nama);


--
-- Name: users users_nama_key288; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key288 UNIQUE (nama);


--
-- Name: users users_nama_key289; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key289 UNIQUE (nama);


--
-- Name: users users_nama_key29; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key29 UNIQUE (nama);


--
-- Name: users users_nama_key290; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key290 UNIQUE (nama);


--
-- Name: users users_nama_key291; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key291 UNIQUE (nama);


--
-- Name: users users_nama_key292; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key292 UNIQUE (nama);


--
-- Name: users users_nama_key293; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key293 UNIQUE (nama);


--
-- Name: users users_nama_key294; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key294 UNIQUE (nama);


--
-- Name: users users_nama_key295; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key295 UNIQUE (nama);


--
-- Name: users users_nama_key296; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key296 UNIQUE (nama);


--
-- Name: users users_nama_key297; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key297 UNIQUE (nama);


--
-- Name: users users_nama_key298; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key298 UNIQUE (nama);


--
-- Name: users users_nama_key299; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key299 UNIQUE (nama);


--
-- Name: users users_nama_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key3 UNIQUE (nama);


--
-- Name: users users_nama_key30; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key30 UNIQUE (nama);


--
-- Name: users users_nama_key300; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key300 UNIQUE (nama);


--
-- Name: users users_nama_key301; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key301 UNIQUE (nama);


--
-- Name: users users_nama_key302; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key302 UNIQUE (nama);


--
-- Name: users users_nama_key303; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key303 UNIQUE (nama);


--
-- Name: users users_nama_key304; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key304 UNIQUE (nama);


--
-- Name: users users_nama_key305; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key305 UNIQUE (nama);


--
-- Name: users users_nama_key306; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key306 UNIQUE (nama);


--
-- Name: users users_nama_key307; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key307 UNIQUE (nama);


--
-- Name: users users_nama_key308; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key308 UNIQUE (nama);


--
-- Name: users users_nama_key309; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key309 UNIQUE (nama);


--
-- Name: users users_nama_key31; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key31 UNIQUE (nama);


--
-- Name: users users_nama_key310; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key310 UNIQUE (nama);


--
-- Name: users users_nama_key311; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key311 UNIQUE (nama);


--
-- Name: users users_nama_key312; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key312 UNIQUE (nama);


--
-- Name: users users_nama_key313; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key313 UNIQUE (nama);


--
-- Name: users users_nama_key314; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key314 UNIQUE (nama);


--
-- Name: users users_nama_key315; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key315 UNIQUE (nama);


--
-- Name: users users_nama_key316; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key316 UNIQUE (nama);


--
-- Name: users users_nama_key317; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key317 UNIQUE (nama);


--
-- Name: users users_nama_key318; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key318 UNIQUE (nama);


--
-- Name: users users_nama_key319; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key319 UNIQUE (nama);


--
-- Name: users users_nama_key32; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key32 UNIQUE (nama);


--
-- Name: users users_nama_key320; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key320 UNIQUE (nama);


--
-- Name: users users_nama_key321; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key321 UNIQUE (nama);


--
-- Name: users users_nama_key322; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key322 UNIQUE (nama);


--
-- Name: users users_nama_key33; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key33 UNIQUE (nama);


--
-- Name: users users_nama_key34; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key34 UNIQUE (nama);


--
-- Name: users users_nama_key35; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key35 UNIQUE (nama);


--
-- Name: users users_nama_key36; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key36 UNIQUE (nama);


--
-- Name: users users_nama_key37; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key37 UNIQUE (nama);


--
-- Name: users users_nama_key38; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key38 UNIQUE (nama);


--
-- Name: users users_nama_key39; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key39 UNIQUE (nama);


--
-- Name: users users_nama_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key4 UNIQUE (nama);


--
-- Name: users users_nama_key40; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key40 UNIQUE (nama);


--
-- Name: users users_nama_key41; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key41 UNIQUE (nama);


--
-- Name: users users_nama_key42; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key42 UNIQUE (nama);


--
-- Name: users users_nama_key43; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key43 UNIQUE (nama);


--
-- Name: users users_nama_key44; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key44 UNIQUE (nama);


--
-- Name: users users_nama_key45; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key45 UNIQUE (nama);


--
-- Name: users users_nama_key46; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key46 UNIQUE (nama);


--
-- Name: users users_nama_key47; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key47 UNIQUE (nama);


--
-- Name: users users_nama_key48; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key48 UNIQUE (nama);


--
-- Name: users users_nama_key49; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key49 UNIQUE (nama);


--
-- Name: users users_nama_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key5 UNIQUE (nama);


--
-- Name: users users_nama_key50; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key50 UNIQUE (nama);


--
-- Name: users users_nama_key51; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key51 UNIQUE (nama);


--
-- Name: users users_nama_key52; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key52 UNIQUE (nama);


--
-- Name: users users_nama_key53; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key53 UNIQUE (nama);


--
-- Name: users users_nama_key54; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key54 UNIQUE (nama);


--
-- Name: users users_nama_key55; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key55 UNIQUE (nama);


--
-- Name: users users_nama_key56; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key56 UNIQUE (nama);


--
-- Name: users users_nama_key57; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key57 UNIQUE (nama);


--
-- Name: users users_nama_key58; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key58 UNIQUE (nama);


--
-- Name: users users_nama_key59; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key59 UNIQUE (nama);


--
-- Name: users users_nama_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key6 UNIQUE (nama);


--
-- Name: users users_nama_key60; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key60 UNIQUE (nama);


--
-- Name: users users_nama_key61; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key61 UNIQUE (nama);


--
-- Name: users users_nama_key62; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key62 UNIQUE (nama);


--
-- Name: users users_nama_key63; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key63 UNIQUE (nama);


--
-- Name: users users_nama_key64; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key64 UNIQUE (nama);


--
-- Name: users users_nama_key65; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key65 UNIQUE (nama);


--
-- Name: users users_nama_key66; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key66 UNIQUE (nama);


--
-- Name: users users_nama_key67; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key67 UNIQUE (nama);


--
-- Name: users users_nama_key68; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key68 UNIQUE (nama);


--
-- Name: users users_nama_key69; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key69 UNIQUE (nama);


--
-- Name: users users_nama_key7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key7 UNIQUE (nama);


--
-- Name: users users_nama_key70; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key70 UNIQUE (nama);


--
-- Name: users users_nama_key71; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key71 UNIQUE (nama);


--
-- Name: users users_nama_key72; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key72 UNIQUE (nama);


--
-- Name: users users_nama_key73; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key73 UNIQUE (nama);


--
-- Name: users users_nama_key74; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key74 UNIQUE (nama);


--
-- Name: users users_nama_key75; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key75 UNIQUE (nama);


--
-- Name: users users_nama_key76; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key76 UNIQUE (nama);


--
-- Name: users users_nama_key77; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key77 UNIQUE (nama);


--
-- Name: users users_nama_key78; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key78 UNIQUE (nama);


--
-- Name: users users_nama_key79; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key79 UNIQUE (nama);


--
-- Name: users users_nama_key8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key8 UNIQUE (nama);


--
-- Name: users users_nama_key80; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key80 UNIQUE (nama);


--
-- Name: users users_nama_key81; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key81 UNIQUE (nama);


--
-- Name: users users_nama_key82; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key82 UNIQUE (nama);


--
-- Name: users users_nama_key83; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key83 UNIQUE (nama);


--
-- Name: users users_nama_key84; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key84 UNIQUE (nama);


--
-- Name: users users_nama_key85; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key85 UNIQUE (nama);


--
-- Name: users users_nama_key86; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key86 UNIQUE (nama);


--
-- Name: users users_nama_key87; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key87 UNIQUE (nama);


--
-- Name: users users_nama_key88; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key88 UNIQUE (nama);


--
-- Name: users users_nama_key89; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key89 UNIQUE (nama);


--
-- Name: users users_nama_key9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key9 UNIQUE (nama);


--
-- Name: users users_nama_key90; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key90 UNIQUE (nama);


--
-- Name: users users_nama_key91; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key91 UNIQUE (nama);


--
-- Name: users users_nama_key92; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key92 UNIQUE (nama);


--
-- Name: users users_nama_key93; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key93 UNIQUE (nama);


--
-- Name: users users_nama_key94; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key94 UNIQUE (nama);


--
-- Name: users users_nama_key95; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key95 UNIQUE (nama);


--
-- Name: users users_nama_key96; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key96 UNIQUE (nama);


--
-- Name: users users_nama_key97; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key97 UNIQUE (nama);


--
-- Name: users users_nama_key98; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key98 UNIQUE (nama);


--
-- Name: users users_nama_key99; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nama_key99 UNIQUE (nama);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: users users_username_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key1 UNIQUE (username);


--
-- Name: users users_username_key10; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key10 UNIQUE (username);


--
-- Name: users users_username_key100; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key100 UNIQUE (username);


--
-- Name: users users_username_key101; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key101 UNIQUE (username);


--
-- Name: users users_username_key102; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key102 UNIQUE (username);


--
-- Name: users users_username_key103; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key103 UNIQUE (username);


--
-- Name: users users_username_key104; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key104 UNIQUE (username);


--
-- Name: users users_username_key105; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key105 UNIQUE (username);


--
-- Name: users users_username_key106; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key106 UNIQUE (username);


--
-- Name: users users_username_key107; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key107 UNIQUE (username);


--
-- Name: users users_username_key108; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key108 UNIQUE (username);


--
-- Name: users users_username_key109; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key109 UNIQUE (username);


--
-- Name: users users_username_key11; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key11 UNIQUE (username);


--
-- Name: users users_username_key110; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key110 UNIQUE (username);


--
-- Name: users users_username_key111; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key111 UNIQUE (username);


--
-- Name: users users_username_key112; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key112 UNIQUE (username);


--
-- Name: users users_username_key113; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key113 UNIQUE (username);


--
-- Name: users users_username_key114; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key114 UNIQUE (username);


--
-- Name: users users_username_key115; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key115 UNIQUE (username);


--
-- Name: users users_username_key116; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key116 UNIQUE (username);


--
-- Name: users users_username_key117; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key117 UNIQUE (username);


--
-- Name: users users_username_key118; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key118 UNIQUE (username);


--
-- Name: users users_username_key119; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key119 UNIQUE (username);


--
-- Name: users users_username_key12; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key12 UNIQUE (username);


--
-- Name: users users_username_key120; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key120 UNIQUE (username);


--
-- Name: users users_username_key121; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key121 UNIQUE (username);


--
-- Name: users users_username_key122; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key122 UNIQUE (username);


--
-- Name: users users_username_key123; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key123 UNIQUE (username);


--
-- Name: users users_username_key124; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key124 UNIQUE (username);


--
-- Name: users users_username_key125; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key125 UNIQUE (username);


--
-- Name: users users_username_key126; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key126 UNIQUE (username);


--
-- Name: users users_username_key127; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key127 UNIQUE (username);


--
-- Name: users users_username_key128; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key128 UNIQUE (username);


--
-- Name: users users_username_key129; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key129 UNIQUE (username);


--
-- Name: users users_username_key13; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key13 UNIQUE (username);


--
-- Name: users users_username_key130; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key130 UNIQUE (username);


--
-- Name: users users_username_key131; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key131 UNIQUE (username);


--
-- Name: users users_username_key132; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key132 UNIQUE (username);


--
-- Name: users users_username_key133; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key133 UNIQUE (username);


--
-- Name: users users_username_key134; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key134 UNIQUE (username);


--
-- Name: users users_username_key135; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key135 UNIQUE (username);


--
-- Name: users users_username_key136; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key136 UNIQUE (username);


--
-- Name: users users_username_key137; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key137 UNIQUE (username);


--
-- Name: users users_username_key138; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key138 UNIQUE (username);


--
-- Name: users users_username_key139; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key139 UNIQUE (username);


--
-- Name: users users_username_key14; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key14 UNIQUE (username);


--
-- Name: users users_username_key140; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key140 UNIQUE (username);


--
-- Name: users users_username_key141; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key141 UNIQUE (username);


--
-- Name: users users_username_key142; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key142 UNIQUE (username);


--
-- Name: users users_username_key143; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key143 UNIQUE (username);


--
-- Name: users users_username_key144; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key144 UNIQUE (username);


--
-- Name: users users_username_key145; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key145 UNIQUE (username);


--
-- Name: users users_username_key146; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key146 UNIQUE (username);


--
-- Name: users users_username_key147; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key147 UNIQUE (username);


--
-- Name: users users_username_key148; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key148 UNIQUE (username);


--
-- Name: users users_username_key149; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key149 UNIQUE (username);


--
-- Name: users users_username_key15; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key15 UNIQUE (username);


--
-- Name: users users_username_key150; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key150 UNIQUE (username);


--
-- Name: users users_username_key151; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key151 UNIQUE (username);


--
-- Name: users users_username_key152; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key152 UNIQUE (username);


--
-- Name: users users_username_key153; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key153 UNIQUE (username);


--
-- Name: users users_username_key154; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key154 UNIQUE (username);


--
-- Name: users users_username_key155; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key155 UNIQUE (username);


--
-- Name: users users_username_key156; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key156 UNIQUE (username);


--
-- Name: users users_username_key157; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key157 UNIQUE (username);


--
-- Name: users users_username_key158; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key158 UNIQUE (username);


--
-- Name: users users_username_key159; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key159 UNIQUE (username);


--
-- Name: users users_username_key16; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key16 UNIQUE (username);


--
-- Name: users users_username_key160; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key160 UNIQUE (username);


--
-- Name: users users_username_key161; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key161 UNIQUE (username);


--
-- Name: users users_username_key162; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key162 UNIQUE (username);


--
-- Name: users users_username_key163; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key163 UNIQUE (username);


--
-- Name: users users_username_key164; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key164 UNIQUE (username);


--
-- Name: users users_username_key165; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key165 UNIQUE (username);


--
-- Name: users users_username_key166; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key166 UNIQUE (username);


--
-- Name: users users_username_key167; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key167 UNIQUE (username);


--
-- Name: users users_username_key168; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key168 UNIQUE (username);


--
-- Name: users users_username_key169; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key169 UNIQUE (username);


--
-- Name: users users_username_key17; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key17 UNIQUE (username);


--
-- Name: users users_username_key170; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key170 UNIQUE (username);


--
-- Name: users users_username_key171; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key171 UNIQUE (username);


--
-- Name: users users_username_key172; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key172 UNIQUE (username);


--
-- Name: users users_username_key173; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key173 UNIQUE (username);


--
-- Name: users users_username_key174; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key174 UNIQUE (username);


--
-- Name: users users_username_key175; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key175 UNIQUE (username);


--
-- Name: users users_username_key176; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key176 UNIQUE (username);


--
-- Name: users users_username_key177; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key177 UNIQUE (username);


--
-- Name: users users_username_key178; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key178 UNIQUE (username);


--
-- Name: users users_username_key179; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key179 UNIQUE (username);


--
-- Name: users users_username_key18; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key18 UNIQUE (username);


--
-- Name: users users_username_key180; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key180 UNIQUE (username);


--
-- Name: users users_username_key181; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key181 UNIQUE (username);


--
-- Name: users users_username_key182; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key182 UNIQUE (username);


--
-- Name: users users_username_key183; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key183 UNIQUE (username);


--
-- Name: users users_username_key184; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key184 UNIQUE (username);


--
-- Name: users users_username_key185; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key185 UNIQUE (username);


--
-- Name: users users_username_key186; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key186 UNIQUE (username);


--
-- Name: users users_username_key187; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key187 UNIQUE (username);


--
-- Name: users users_username_key188; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key188 UNIQUE (username);


--
-- Name: users users_username_key189; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key189 UNIQUE (username);


--
-- Name: users users_username_key19; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key19 UNIQUE (username);


--
-- Name: users users_username_key190; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key190 UNIQUE (username);


--
-- Name: users users_username_key191; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key191 UNIQUE (username);


--
-- Name: users users_username_key192; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key192 UNIQUE (username);


--
-- Name: users users_username_key193; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key193 UNIQUE (username);


--
-- Name: users users_username_key194; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key194 UNIQUE (username);


--
-- Name: users users_username_key195; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key195 UNIQUE (username);


--
-- Name: users users_username_key196; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key196 UNIQUE (username);


--
-- Name: users users_username_key197; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key197 UNIQUE (username);


--
-- Name: users users_username_key198; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key198 UNIQUE (username);


--
-- Name: users users_username_key199; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key199 UNIQUE (username);


--
-- Name: users users_username_key2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key2 UNIQUE (username);


--
-- Name: users users_username_key20; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key20 UNIQUE (username);


--
-- Name: users users_username_key200; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key200 UNIQUE (username);


--
-- Name: users users_username_key201; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key201 UNIQUE (username);


--
-- Name: users users_username_key202; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key202 UNIQUE (username);


--
-- Name: users users_username_key203; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key203 UNIQUE (username);


--
-- Name: users users_username_key204; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key204 UNIQUE (username);


--
-- Name: users users_username_key205; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key205 UNIQUE (username);


--
-- Name: users users_username_key206; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key206 UNIQUE (username);


--
-- Name: users users_username_key207; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key207 UNIQUE (username);


--
-- Name: users users_username_key208; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key208 UNIQUE (username);


--
-- Name: users users_username_key209; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key209 UNIQUE (username);


--
-- Name: users users_username_key21; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key21 UNIQUE (username);


--
-- Name: users users_username_key210; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key210 UNIQUE (username);


--
-- Name: users users_username_key211; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key211 UNIQUE (username);


--
-- Name: users users_username_key212; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key212 UNIQUE (username);


--
-- Name: users users_username_key213; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key213 UNIQUE (username);


--
-- Name: users users_username_key214; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key214 UNIQUE (username);


--
-- Name: users users_username_key215; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key215 UNIQUE (username);


--
-- Name: users users_username_key216; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key216 UNIQUE (username);


--
-- Name: users users_username_key217; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key217 UNIQUE (username);


--
-- Name: users users_username_key218; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key218 UNIQUE (username);


--
-- Name: users users_username_key219; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key219 UNIQUE (username);


--
-- Name: users users_username_key22; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key22 UNIQUE (username);


--
-- Name: users users_username_key220; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key220 UNIQUE (username);


--
-- Name: users users_username_key221; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key221 UNIQUE (username);


--
-- Name: users users_username_key222; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key222 UNIQUE (username);


--
-- Name: users users_username_key223; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key223 UNIQUE (username);


--
-- Name: users users_username_key224; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key224 UNIQUE (username);


--
-- Name: users users_username_key225; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key225 UNIQUE (username);


--
-- Name: users users_username_key226; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key226 UNIQUE (username);


--
-- Name: users users_username_key227; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key227 UNIQUE (username);


--
-- Name: users users_username_key228; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key228 UNIQUE (username);


--
-- Name: users users_username_key229; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key229 UNIQUE (username);


--
-- Name: users users_username_key23; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key23 UNIQUE (username);


--
-- Name: users users_username_key230; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key230 UNIQUE (username);


--
-- Name: users users_username_key231; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key231 UNIQUE (username);


--
-- Name: users users_username_key232; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key232 UNIQUE (username);


--
-- Name: users users_username_key233; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key233 UNIQUE (username);


--
-- Name: users users_username_key234; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key234 UNIQUE (username);


--
-- Name: users users_username_key235; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key235 UNIQUE (username);


--
-- Name: users users_username_key236; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key236 UNIQUE (username);


--
-- Name: users users_username_key237; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key237 UNIQUE (username);


--
-- Name: users users_username_key238; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key238 UNIQUE (username);


--
-- Name: users users_username_key239; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key239 UNIQUE (username);


--
-- Name: users users_username_key24; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key24 UNIQUE (username);


--
-- Name: users users_username_key240; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key240 UNIQUE (username);


--
-- Name: users users_username_key241; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key241 UNIQUE (username);


--
-- Name: users users_username_key242; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key242 UNIQUE (username);


--
-- Name: users users_username_key243; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key243 UNIQUE (username);


--
-- Name: users users_username_key244; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key244 UNIQUE (username);


--
-- Name: users users_username_key245; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key245 UNIQUE (username);


--
-- Name: users users_username_key246; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key246 UNIQUE (username);


--
-- Name: users users_username_key247; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key247 UNIQUE (username);


--
-- Name: users users_username_key248; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key248 UNIQUE (username);


--
-- Name: users users_username_key249; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key249 UNIQUE (username);


--
-- Name: users users_username_key25; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key25 UNIQUE (username);


--
-- Name: users users_username_key250; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key250 UNIQUE (username);


--
-- Name: users users_username_key251; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key251 UNIQUE (username);


--
-- Name: users users_username_key252; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key252 UNIQUE (username);


--
-- Name: users users_username_key253; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key253 UNIQUE (username);


--
-- Name: users users_username_key254; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key254 UNIQUE (username);


--
-- Name: users users_username_key255; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key255 UNIQUE (username);


--
-- Name: users users_username_key256; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key256 UNIQUE (username);


--
-- Name: users users_username_key257; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key257 UNIQUE (username);


--
-- Name: users users_username_key258; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key258 UNIQUE (username);


--
-- Name: users users_username_key259; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key259 UNIQUE (username);


--
-- Name: users users_username_key26; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key26 UNIQUE (username);


--
-- Name: users users_username_key260; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key260 UNIQUE (username);


--
-- Name: users users_username_key261; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key261 UNIQUE (username);


--
-- Name: users users_username_key262; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key262 UNIQUE (username);


--
-- Name: users users_username_key263; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key263 UNIQUE (username);


--
-- Name: users users_username_key264; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key264 UNIQUE (username);


--
-- Name: users users_username_key265; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key265 UNIQUE (username);


--
-- Name: users users_username_key266; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key266 UNIQUE (username);


--
-- Name: users users_username_key267; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key267 UNIQUE (username);


--
-- Name: users users_username_key268; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key268 UNIQUE (username);


--
-- Name: users users_username_key269; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key269 UNIQUE (username);


--
-- Name: users users_username_key27; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key27 UNIQUE (username);


--
-- Name: users users_username_key270; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key270 UNIQUE (username);


--
-- Name: users users_username_key271; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key271 UNIQUE (username);


--
-- Name: users users_username_key272; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key272 UNIQUE (username);


--
-- Name: users users_username_key273; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key273 UNIQUE (username);


--
-- Name: users users_username_key274; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key274 UNIQUE (username);


--
-- Name: users users_username_key275; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key275 UNIQUE (username);


--
-- Name: users users_username_key276; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key276 UNIQUE (username);


--
-- Name: users users_username_key277; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key277 UNIQUE (username);


--
-- Name: users users_username_key278; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key278 UNIQUE (username);


--
-- Name: users users_username_key279; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key279 UNIQUE (username);


--
-- Name: users users_username_key28; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key28 UNIQUE (username);


--
-- Name: users users_username_key280; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key280 UNIQUE (username);


--
-- Name: users users_username_key281; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key281 UNIQUE (username);


--
-- Name: users users_username_key282; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key282 UNIQUE (username);


--
-- Name: users users_username_key283; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key283 UNIQUE (username);


--
-- Name: users users_username_key284; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key284 UNIQUE (username);


--
-- Name: users users_username_key285; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key285 UNIQUE (username);


--
-- Name: users users_username_key286; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key286 UNIQUE (username);


--
-- Name: users users_username_key287; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key287 UNIQUE (username);


--
-- Name: users users_username_key288; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key288 UNIQUE (username);


--
-- Name: users users_username_key289; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key289 UNIQUE (username);


--
-- Name: users users_username_key29; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key29 UNIQUE (username);


--
-- Name: users users_username_key290; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key290 UNIQUE (username);


--
-- Name: users users_username_key291; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key291 UNIQUE (username);


--
-- Name: users users_username_key292; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key292 UNIQUE (username);


--
-- Name: users users_username_key293; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key293 UNIQUE (username);


--
-- Name: users users_username_key294; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key294 UNIQUE (username);


--
-- Name: users users_username_key295; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key295 UNIQUE (username);


--
-- Name: users users_username_key296; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key296 UNIQUE (username);


--
-- Name: users users_username_key297; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key297 UNIQUE (username);


--
-- Name: users users_username_key298; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key298 UNIQUE (username);


--
-- Name: users users_username_key299; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key299 UNIQUE (username);


--
-- Name: users users_username_key3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key3 UNIQUE (username);


--
-- Name: users users_username_key30; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key30 UNIQUE (username);


--
-- Name: users users_username_key300; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key300 UNIQUE (username);


--
-- Name: users users_username_key301; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key301 UNIQUE (username);


--
-- Name: users users_username_key302; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key302 UNIQUE (username);


--
-- Name: users users_username_key303; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key303 UNIQUE (username);


--
-- Name: users users_username_key304; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key304 UNIQUE (username);


--
-- Name: users users_username_key305; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key305 UNIQUE (username);


--
-- Name: users users_username_key306; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key306 UNIQUE (username);


--
-- Name: users users_username_key307; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key307 UNIQUE (username);


--
-- Name: users users_username_key308; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key308 UNIQUE (username);


--
-- Name: users users_username_key309; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key309 UNIQUE (username);


--
-- Name: users users_username_key31; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key31 UNIQUE (username);


--
-- Name: users users_username_key310; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key310 UNIQUE (username);


--
-- Name: users users_username_key311; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key311 UNIQUE (username);


--
-- Name: users users_username_key312; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key312 UNIQUE (username);


--
-- Name: users users_username_key313; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key313 UNIQUE (username);


--
-- Name: users users_username_key314; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key314 UNIQUE (username);


--
-- Name: users users_username_key315; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key315 UNIQUE (username);


--
-- Name: users users_username_key316; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key316 UNIQUE (username);


--
-- Name: users users_username_key317; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key317 UNIQUE (username);


--
-- Name: users users_username_key318; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key318 UNIQUE (username);


--
-- Name: users users_username_key319; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key319 UNIQUE (username);


--
-- Name: users users_username_key32; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key32 UNIQUE (username);


--
-- Name: users users_username_key320; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key320 UNIQUE (username);


--
-- Name: users users_username_key321; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key321 UNIQUE (username);


--
-- Name: users users_username_key33; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key33 UNIQUE (username);


--
-- Name: users users_username_key34; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key34 UNIQUE (username);


--
-- Name: users users_username_key35; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key35 UNIQUE (username);


--
-- Name: users users_username_key36; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key36 UNIQUE (username);


--
-- Name: users users_username_key37; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key37 UNIQUE (username);


--
-- Name: users users_username_key38; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key38 UNIQUE (username);


--
-- Name: users users_username_key39; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key39 UNIQUE (username);


--
-- Name: users users_username_key4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key4 UNIQUE (username);


--
-- Name: users users_username_key40; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key40 UNIQUE (username);


--
-- Name: users users_username_key41; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key41 UNIQUE (username);


--
-- Name: users users_username_key42; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key42 UNIQUE (username);


--
-- Name: users users_username_key43; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key43 UNIQUE (username);


--
-- Name: users users_username_key44; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key44 UNIQUE (username);


--
-- Name: users users_username_key45; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key45 UNIQUE (username);


--
-- Name: users users_username_key46; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key46 UNIQUE (username);


--
-- Name: users users_username_key47; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key47 UNIQUE (username);


--
-- Name: users users_username_key48; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key48 UNIQUE (username);


--
-- Name: users users_username_key49; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key49 UNIQUE (username);


--
-- Name: users users_username_key5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key5 UNIQUE (username);


--
-- Name: users users_username_key50; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key50 UNIQUE (username);


--
-- Name: users users_username_key51; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key51 UNIQUE (username);


--
-- Name: users users_username_key52; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key52 UNIQUE (username);


--
-- Name: users users_username_key53; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key53 UNIQUE (username);


--
-- Name: users users_username_key54; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key54 UNIQUE (username);


--
-- Name: users users_username_key55; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key55 UNIQUE (username);


--
-- Name: users users_username_key56; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key56 UNIQUE (username);


--
-- Name: users users_username_key57; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key57 UNIQUE (username);


--
-- Name: users users_username_key58; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key58 UNIQUE (username);


--
-- Name: users users_username_key59; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key59 UNIQUE (username);


--
-- Name: users users_username_key6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key6 UNIQUE (username);


--
-- Name: users users_username_key60; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key60 UNIQUE (username);


--
-- Name: users users_username_key61; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key61 UNIQUE (username);


--
-- Name: users users_username_key62; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key62 UNIQUE (username);


--
-- Name: users users_username_key63; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key63 UNIQUE (username);


--
-- Name: users users_username_key64; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key64 UNIQUE (username);


--
-- Name: users users_username_key65; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key65 UNIQUE (username);


--
-- Name: users users_username_key66; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key66 UNIQUE (username);


--
-- Name: users users_username_key67; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key67 UNIQUE (username);


--
-- Name: users users_username_key68; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key68 UNIQUE (username);


--
-- Name: users users_username_key69; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key69 UNIQUE (username);


--
-- Name: users users_username_key7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key7 UNIQUE (username);


--
-- Name: users users_username_key70; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key70 UNIQUE (username);


--
-- Name: users users_username_key71; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key71 UNIQUE (username);


--
-- Name: users users_username_key72; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key72 UNIQUE (username);


--
-- Name: users users_username_key73; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key73 UNIQUE (username);


--
-- Name: users users_username_key74; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key74 UNIQUE (username);


--
-- Name: users users_username_key75; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key75 UNIQUE (username);


--
-- Name: users users_username_key76; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key76 UNIQUE (username);


--
-- Name: users users_username_key77; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key77 UNIQUE (username);


--
-- Name: users users_username_key78; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key78 UNIQUE (username);


--
-- Name: users users_username_key79; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key79 UNIQUE (username);


--
-- Name: users users_username_key8; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key8 UNIQUE (username);


--
-- Name: users users_username_key80; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key80 UNIQUE (username);


--
-- Name: users users_username_key81; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key81 UNIQUE (username);


--
-- Name: users users_username_key82; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key82 UNIQUE (username);


--
-- Name: users users_username_key83; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key83 UNIQUE (username);


--
-- Name: users users_username_key84; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key84 UNIQUE (username);


--
-- Name: users users_username_key85; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key85 UNIQUE (username);


--
-- Name: users users_username_key86; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key86 UNIQUE (username);


--
-- Name: users users_username_key87; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key87 UNIQUE (username);


--
-- Name: users users_username_key88; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key88 UNIQUE (username);


--
-- Name: users users_username_key89; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key89 UNIQUE (username);


--
-- Name: users users_username_key9; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key9 UNIQUE (username);


--
-- Name: users users_username_key90; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key90 UNIQUE (username);


--
-- Name: users users_username_key91; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key91 UNIQUE (username);


--
-- Name: users users_username_key92; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key92 UNIQUE (username);


--
-- Name: users users_username_key93; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key93 UNIQUE (username);


--
-- Name: users users_username_key94; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key94 UNIQUE (username);


--
-- Name: users users_username_key95; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key95 UNIQUE (username);


--
-- Name: users users_username_key96; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key96 UNIQUE (username);


--
-- Name: users users_username_key97; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key97 UNIQUE (username);


--
-- Name: users users_username_key98; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key98 UNIQUE (username);


--
-- Name: users users_username_key99; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key99 UNIQUE (username);


--
-- Name: aktivitas_gerbang_kendaraans aktivitas_gerbang_kendaraans_data_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aktivitas_gerbang_kendaraans
    ADD CONSTRAINT aktivitas_gerbang_kendaraans_data_member_id_fkey FOREIGN KEY (data_member_id) REFERENCES public.data_members(id) ON UPDATE CASCADE;


--
-- Name: aktivitas_gerbang_kendaraans aktivitas_gerbang_kendaraans_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aktivitas_gerbang_kendaraans
    ADD CONSTRAINT aktivitas_gerbang_kendaraans_kendaraan_id_fkey FOREIGN KEY (kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE;


--
-- Name: aktivitas_gerbang_kendaraans aktivitas_gerbang_kendaraans_petugas_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aktivitas_gerbang_kendaraans
    ADD CONSTRAINT aktivitas_gerbang_kendaraans_petugas_id_fkey FOREIGN KEY (petugas_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: data_members data_members_perusahaan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_members
    ADD CONSTRAINT data_members_perusahaan_id_fkey FOREIGN KEY (perusahaan_id) REFERENCES public.perusahaans(id) ON UPDATE CASCADE;


--
-- Name: data_members data_members_produk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_members
    ADD CONSTRAINT data_members_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk_members(id) ON UPDATE CASCADE;


--
-- Name: data_members data_members_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_members
    ADD CONSTRAINT data_members_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: data_nomor_polisis data_nomor_polisis_data_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_data_member_id_fkey FOREIGN KEY (data_member_id) REFERENCES public.data_members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: data_nomor_polisis data_nomor_polisis_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_nomor_polisis
    ADD CONSTRAINT data_nomor_polisis_kendaraan_id_fkey FOREIGN KEY (kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE;


--
-- Name: data_vouchers data_vouchers_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_vouchers
    ADD CONSTRAINT data_vouchers_kendaraan_id_fkey FOREIGN KEY (kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE;


--
-- Name: data_vouchers data_vouchers_produk_voucher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data_vouchers
    ADD CONSTRAINT data_vouchers_produk_voucher_id_fkey FOREIGN KEY (produk_voucher_id) REFERENCES public.produk_vouchers(id) ON UPDATE CASCADE;


--
-- Name: kendaraans kendaraans_tipe_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kendaraans
    ADD CONSTRAINT kendaraans_tipe_kendaraan_id_fkey FOREIGN KEY (tipe_kendaraan_id) REFERENCES public.tipe_kendaraans(id) ON UPDATE CASCADE;


--
-- Name: kendaraans kendaraans_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kendaraans
    ADD CONSTRAINT kendaraans_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: laporan_riwayat_transaksi_members laporan_riwayat_transaksi_members_gerbang_masuk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_riwayat_transaksi_members
    ADD CONSTRAINT laporan_riwayat_transaksi_members_gerbang_masuk_id_fkey FOREIGN KEY (gerbang_masuk_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: laporan_riwayat_transaksi_members laporan_riwayat_transaksi_members_jenis_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_riwayat_transaksi_members
    ADD CONSTRAINT laporan_riwayat_transaksi_members_jenis_kendaraan_id_fkey FOREIGN KEY (jenis_kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE;


--
-- Name: laporan_riwayat_transaksi_members laporan_riwayat_transaksi_members_pintu_keluar_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_riwayat_transaksi_members
    ADD CONSTRAINT laporan_riwayat_transaksi_members_pintu_keluar_id_fkey FOREIGN KEY (pintu_keluar_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: laporan_transaksi_batals laporan_transaksi_batals_pintu_masuk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_transaksi_batals
    ADD CONSTRAINT laporan_transaksi_batals_pintu_masuk_id_fkey FOREIGN KEY (pintu_masuk_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: laporan_transaksi_batals laporan_transaksi_batals_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.laporan_transaksi_batals
    ADD CONSTRAINT laporan_transaksi_batals_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: level_penggunas level_penggunas_perusahaan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_penggunas
    ADD CONSTRAINT level_penggunas_perusahaan_id_fkey FOREIGN KEY (perusahaan_id) REFERENCES public.perusahaans(id) ON UPDATE CASCADE;


--
-- Name: permasalahan_atau_perbaikans permasalahan_atau_perbaikans_pos_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.permasalahan_atau_perbaikans
    ADD CONSTRAINT permasalahan_atau_perbaikans_pos_id_fkey FOREIGN KEY (pos_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: perusahaans perusahaans_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perusahaans
    ADD CONSTRAINT perusahaans_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: pos pos_nama_interface_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos
    ADD CONSTRAINT pos_nama_interface_id_fkey FOREIGN KEY (nama_interface_id) REFERENCES public.nama_interfaces(id) ON UPDATE CASCADE;


--
-- Name: pos pos_nama_printer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos
    ADD CONSTRAINT pos_nama_printer_id_fkey FOREIGN KEY (nama_printer_id) REFERENCES public.nama_printers(id) ON UPDATE CASCADE;


--
-- Name: pos pos_tipe_manless_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos
    ADD CONSTRAINT pos_tipe_manless_id_fkey FOREIGN KEY (tipe_manless_id) REFERENCES public.tipe_manlesses(id) ON UPDATE CASCADE;


--
-- Name: pos pos_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pos
    ADD CONSTRAINT pos_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: produk_members produk_members_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk_members
    ADD CONSTRAINT produk_members_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: produk_vouchers produk_vouchers_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk_vouchers
    ADD CONSTRAINT produk_vouchers_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: riwayat_transaksi_ganti_nopols riwayat_transaksi_ganti_nopols_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_ganti_nopols
    ADD CONSTRAINT riwayat_transaksi_ganti_nopols_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: riwayat_transaksi_kartu_members riwayat_transaksi_kartu_members_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_kartu_members
    ADD CONSTRAINT riwayat_transaksi_kartu_members_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: riwayat_transaksi_members riwayat_transaksi_members_produk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_members
    ADD CONSTRAINT riwayat_transaksi_members_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk_members(id) ON UPDATE CASCADE;


--
-- Name: riwayat_transaksi_members riwayat_transaksi_members_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.riwayat_transaksi_members
    ADD CONSTRAINT riwayat_transaksi_members_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: shifts shifts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shifts
    ADD CONSTRAINT shifts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: tarif_dendas tarif_dendas_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarif_dendas
    ADD CONSTRAINT tarif_dendas_kendaraan_id_fkey FOREIGN KEY (kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tarif_parkirs tarif_parkirs_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tarif_parkirs
    ADD CONSTRAINT tarif_parkirs_kendaraan_id_fkey FOREIGN KEY (kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_id_data_voucher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_id_data_voucher_fkey FOREIGN KEY (id_data_voucher) REFERENCES public.data_vouchers(id) ON UPDATE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_jenis_pembayaran_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_jenis_pembayaran_id_fkey FOREIGN KEY (jenis_pembayaran_id) REFERENCES public.payments(id) ON UPDATE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_kendaraan_id_fkey FOREIGN KEY (kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_petugas_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_petugas_id_fkey FOREIGN KEY (petugas_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_pintu_keluar_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_pintu_keluar_id_fkey FOREIGN KEY (pintu_keluar_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_pintu_masuk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_pintu_masuk_id_fkey FOREIGN KEY (pintu_masuk_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_shift_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_shift_id_fkey FOREIGN KEY (shift_id) REFERENCES public.shifts(id) ON UPDATE CASCADE;


--
-- Name: transaksi_manuals transaksi_manuals_tipe_denda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_manuals
    ADD CONSTRAINT transaksi_manuals_tipe_denda_id_fkey FOREIGN KEY (tipe_denda_id) REFERENCES public.tipe_dendas(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_id_data_voucher_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_id_data_voucher_fkey FOREIGN KEY (id_data_voucher) REFERENCES public.data_vouchers(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_jenis_pembayaran_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_jenis_pembayaran_id_fkey FOREIGN KEY (jenis_pembayaran_id) REFERENCES public.payments(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_kendaraan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_kendaraan_id_fkey FOREIGN KEY (kendaraan_id) REFERENCES public.kendaraans(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_petugas_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_petugas_id_fkey FOREIGN KEY (petugas_id) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_pintu_keluar_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_pintu_keluar_id_fkey FOREIGN KEY (pintu_keluar_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_pintu_masuk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_pintu_masuk_id_fkey FOREIGN KEY (pintu_masuk_id) REFERENCES public.pos(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_shift_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_shift_id_fkey FOREIGN KEY (shift_id) REFERENCES public.shifts(id) ON UPDATE CASCADE;


--
-- Name: transaksi_tunais transaksi_tunais_tipe_denda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_tunais
    ADD CONSTRAINT transaksi_tunais_tipe_denda_id_fkey FOREIGN KEY (tipe_denda_id) REFERENCES public.tipe_dendas(id) ON UPDATE CASCADE;


--
-- Name: users users_added_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_added_by_fkey FOREIGN KEY (added_by) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: users users_level_pengguna_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_level_pengguna_id_fkey FOREIGN KEY (level_pengguna_id) REFERENCES public.level_penggunas(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: users users_perusahaan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_perusahaan_id_fkey FOREIGN KEY (perusahaan_id) REFERENCES public.perusahaans(id) ON UPDATE CASCADE;


--
-- PostgreSQL database dump complete
--

