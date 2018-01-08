/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     04/01/2018 23:38:48                          */
/*==============================================================*/


drop table if exists BANK;

drop table if exists CART;

drop table if exists CUSTOM;

drop table if exists CUSTOMER;

drop table if exists KONFIRMASI;

drop table if exists PO;

drop table if exists PO_TERIMA;

drop table if exists PRODUK;

drop table if exists TMP_PO_TERIMA;

drop table if exists USER;

/*==============================================================*/
/* Table: BANK                                                  */
/*==============================================================*/
create table BANK
(
   ID_BANK              int not null,
   NAMA_BANK            varchar(30),
   NO_REK               varchar(30),
   NASABAH              varchar(50),
   primary key (ID_BANK)
);

/*==============================================================*/
/* Table: CART                                                  */
/*==============================================================*/
create table CART
(
   ID_CART              varchar(20) not null,
   TANGGAL              datetime,
   KODE                 varchar(11),
   NAMA                 varchar(11),
   SIZE                 varchar(11),
   COLOR                varchar(10),
   HARGA                varchar(10),
   QTY                  varchar(10),
   JUMLAH               varchar(10),
   SESSION              varchar(20),
   primary key (ID_CART)
);

/*==============================================================*/
/* Table: CUSTOM                                                */
/*==============================================================*/
create table CUSTOM
(
   KODE                 int not null,
   TANGGAL              date,
   KD_CUS               varchar(30),
   NAMA                 varchar(30),
   SIZE                 varchar(20),
   COLOR                varchar(20),
   MODEL                varchar(100),
   GAMBAR               varchar(40),
   HARGA                varchar(10),
   STATUS               varchar(20),
   primary key (KODE)
);

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER
(
   KD_CUS               varchar(20) not null,
   NAMA                 varchar(30),
   ALAMAT               varchar(50),
   NO_TELP              varchar(15),
   USERNAME             varchar(15),
   PASSWORD             varchar(50),
   GAMBAR               varchar(100),
   primary key (KD_CUS)
);

/*==============================================================*/
/* Table: KONFIRMASI                                            */
/*==============================================================*/
create table KONFIRMASI
(
   ID_KON               int not null,
   NOPO                 varchar(20),
   KD_CUS               varchar(20),
   BAYAR_VIA            varchar(20),
   TANGGAL              datetime,
   JUMLAH               int,
   BUKTI_TRANSFER       varchar(50),
   STATUS               text,
   primary key (ID_KON)
);

/*==============================================================*/
/* Table: PO                                                    */
/*==============================================================*/
create table PO
(
   NOPO                 varchar(20) not null,
   STYLE                varchar(10),
   COLOR                varchar(20),
   SIZE                 varchar(4),
   TANGGALKIRIM         date,
   TANGGALEXPORT        date,
   STATUS               text,
   primary key (NOPO)
);

/*==============================================================*/
/* Table: PO_TERIMA                                             */
/*==============================================================*/
create table PO_TERIMA
(
   ID                   int not null,
   NOPO                 varchar(20),
   KD_CUS               varchar(20),
   KODE                 int,
   TANGGAL              datetime,
   STYLE                varchar(20),
   COLOR                varchar(10),
   SIZE                 varchar(4),
   QTY                  int,
   TOTAL                int,
   primary key (ID)
);

/*==============================================================*/
/* Table: PRODUK                                                */
/*==============================================================*/
create table PRODUK
(
   KODE                 int not null,
   NAMA                 varchar(30),
   JENIS                varchar(10),
   SIZE                 varchar(20),
   COLOR                varchar(20),
   HARGA                int,
   KETERANGAN           varchar(100),
   STOK                 int,
   GAMBAR               varchar(40),
   primary key (KODE)
);

/*==============================================================*/
/* Table: TMP_PO_TERIMA                                         */
/*==============================================================*/
create table TMP_PO_TERIMA
(
   ID                   int not null,
   NOPO                 varchar(10),
   KD_CUS               varchar(10),
   KODE                 int,
   TANGGAL              date,
   STYLE                varchar(20),
   COLOR                varchar(10),
   SIZE                 varchar(4),
   QTY                  int,
   TOTAL                int,
   primary key (ID)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   USER_ID              varchar(10) not null,
   USERNAME             varchar(30),
   PASSWORD             varchar(50),
   FULLNAME             varchar(30),
   GAMBAR               varchar(40),
   primary key (USER_ID)
);

