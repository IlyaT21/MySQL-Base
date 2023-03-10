USE [Vojna_baza]
GO
/****** Object:  StoredProcedure [dbo].[Vrati_vozila]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP PROCEDURE [dbo].[Vrati_vozila]
GO
/****** Object:  StoredProcedure [dbo].[Vrati_vojnike]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP PROCEDURE [dbo].[Vrati_vojnike]
GO
ALTER TABLE [dbo].[Zaduzen_za] DROP CONSTRAINT [FK__Zaduzen_z__Sifra__6EF57B66]
GO
ALTER TABLE [dbo].[Zaduzen_za] DROP CONSTRAINT [FK__Zaduzen_z__Sifra__6E01572D]
GO
ALTER TABLE [dbo].[Vozilo] DROP CONSTRAINT [FK__Vozilo__Sifra_KC__4AB81AF0]
GO
ALTER TABLE [dbo].[Vojnik] DROP CONSTRAINT [FK__Vojnik__Sifra_po__66603565]
GO
ALTER TABLE [dbo].[Vojnik] DROP CONSTRAINT [FK__Vojnik__Sifra_od__6754599E]
GO
ALTER TABLE [dbo].[Vojnik] DROP CONSTRAINT [FK__Vojnik__Sifra_na__68487DD7]
GO
ALTER TABLE [dbo].[Vojnik] DROP CONSTRAINT [FK__Vojnik__Sifra_KC__656C112C]
GO
ALTER TABLE [dbo].[Uzima_municiju] DROP CONSTRAINT [FK__Uzima_mun__Sifra__05D8E0BE]
GO
ALTER TABLE [dbo].[Uzima_municiju] DROP CONSTRAINT [FK__Uzima_mun__Sifra__04E4BC85]
GO
ALTER TABLE [dbo].[Tenk] DROP CONSTRAINT [FK__Tenk__Sifra_vozi__5AEE82B9]
GO
ALTER TABLE [dbo].[Tenk] DROP CONSTRAINT [FK__Tenk__Sifra_hang__59FA5E80]
GO
ALTER TABLE [dbo].[Pregled] DROP CONSTRAINT [FK__Pregled__Sifra_v__71D1E811]
GO
ALTER TABLE [dbo].[Pregled] DROP CONSTRAINT [FK__Pregled__Sifra_l__72C60C4A]
GO
ALTER TABLE [dbo].[Popravka] DROP CONSTRAINT [FK__Popravka__Sifra___76969D2E]
GO
ALTER TABLE [dbo].[Popravka] DROP CONSTRAINT [FK__Popravka__Sifra___75A278F5]
GO
ALTER TABLE [dbo].[Pismo] DROP CONSTRAINT [FK__Pismo__Sifra_voj__01142BA1]
GO
ALTER TABLE [dbo].[Pismo] DROP CONSTRAINT [FK__Pismo__Sifra_pos__02084FDA]
GO
ALTER TABLE [dbo].[Nalog_za_nabavku] DROP CONSTRAINT [FK__Nalog_za___Spisa__797309D9]
GO
ALTER TABLE [dbo].[Nalog_za_nabavku] DROP CONSTRAINT [FK__Nalog_za___Sifra__7A672E12]
GO
ALTER TABLE [dbo].[Izvestaj] DROP CONSTRAINT [FK__Izvestaj__Sifra___6B24EA82]
GO
ALTER TABLE [dbo].[Isporuka_delova] DROP CONSTRAINT [FK__Isporuka___Sifra__7E37BEF6]
GO
ALTER TABLE [dbo].[Isporuka_delova] DROP CONSTRAINT [FK__Isporuka___Sifra__7D439ABD]
GO
ALTER TABLE [dbo].[Inspekcija] DROP CONSTRAINT [FK__Inspekcij__Sifra__534D60F1]
GO
ALTER TABLE [dbo].[Dzip] DROP CONSTRAINT [FK__Dzip__Sifra_vozi__5EBF139D]
GO
ALTER TABLE [dbo].[Dzip] DROP CONSTRAINT [FK__Dzip__Sifra_gara__5DCAEF64]
GO
ALTER TABLE [dbo].[Brod] DROP CONSTRAINT [FK__Brod__Sifra_vozi__628FA481]
GO
ALTER TABLE [dbo].[Brod] DROP CONSTRAINT [FK__Brod__Sifra_luke__619B8048]
GO
ALTER TABLE [dbo].[Avion] DROP CONSTRAINT [FK__Avion__Sifra_voz__571DF1D5]
GO
ALTER TABLE [dbo].[Avion] DROP CONSTRAINT [FK__Avion__Sifra_pis__5629CD9C]
GO
/****** Object:  View [dbo].[Podaci_o_vozilu]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP VIEW [dbo].[Podaci_o_vozilu]
GO
/****** Object:  View [dbo].[Podaci_o_vojniku]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP VIEW [dbo].[Podaci_o_vojniku]
GO
/****** Object:  UserDefinedFunction [dbo].[Pretraga_odreda]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP FUNCTION [dbo].[Pretraga_odreda]
GO
/****** Object:  Table [dbo].[Zaduzen_za]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Zaduzen_za]
GO
/****** Object:  Table [dbo].[Vozilo]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Vozilo]
GO
/****** Object:  Table [dbo].[Vojnik]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Vojnik]
GO
/****** Object:  Table [dbo].[Vojni_odred]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Vojni_odred]
GO
/****** Object:  Table [dbo].[Uzima_municiju]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Uzima_municiju]
GO
/****** Object:  Table [dbo].[Tenk]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Tenk]
GO
/****** Object:  Table [dbo].[Pregled]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Pregled]
GO
/****** Object:  Table [dbo].[Posta]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Posta]
GO
/****** Object:  Table [dbo].[Posao]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Posao]
GO
/****** Object:  Table [dbo].[Popravka]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Popravka]
GO
/****** Object:  Table [dbo].[Pista]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Pista]
GO
/****** Object:  Table [dbo].[Pismo]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Pismo]
GO
/****** Object:  Table [dbo].[Nalog_za_nabavku]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Nalog_za_nabavku]
GO
/****** Object:  Table [dbo].[Nadzornik]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Nadzornik]
GO
/****** Object:  Table [dbo].[Mehanicar]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Mehanicar]
GO
/****** Object:  Table [dbo].[Magacin]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Magacin]
GO
/****** Object:  Table [dbo].[Luka]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Luka]
GO
/****** Object:  Table [dbo].[Lekar]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Lekar]
GO
/****** Object:  Table [dbo].[Komandni_centar]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Komandni_centar]
GO
/****** Object:  Table [dbo].[Izvestaj]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Izvestaj]
GO
/****** Object:  Table [dbo].[Isporuka_delova]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Isporuka_delova]
GO
/****** Object:  Table [dbo].[Inspekcija]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Inspekcija]
GO
/****** Object:  Table [dbo].[Hangar]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Hangar]
GO
/****** Object:  Table [dbo].[Garaza]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Garaza]
GO
/****** Object:  Table [dbo].[Dzip]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Dzip]
GO
/****** Object:  Table [dbo].[Dobavljac]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Dobavljac]
GO
/****** Object:  Table [dbo].[Brod]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Brod]
GO
/****** Object:  Table [dbo].[Avion]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP TABLE [dbo].[Avion]
GO
USE [master]
GO
/****** Object:  Database [Vojna_baza]    Script Date: 10/2/2019 9:26:20 PM ******/
DROP DATABASE [Vojna_baza]
GO
/****** Object:  Database [Vojna_baza]    Script Date: 10/2/2019 9:26:20 PM ******/
CREATE DATABASE [Vojna_baza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Vojna_baza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.ILIJA\MSSQL\DATA\Vojna_baza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Vojna_baza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.ILIJA\MSSQL\DATA\Vojna_baza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Vojna_baza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Vojna_baza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Vojna_baza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Vojna_baza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Vojna_baza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Vojna_baza] SET ARITHABORT OFF 
GO
ALTER DATABASE [Vojna_baza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Vojna_baza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Vojna_baza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Vojna_baza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Vojna_baza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Vojna_baza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Vojna_baza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Vojna_baza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Vojna_baza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Vojna_baza] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Vojna_baza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Vojna_baza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Vojna_baza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Vojna_baza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Vojna_baza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Vojna_baza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Vojna_baza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Vojna_baza] SET RECOVERY FULL 
GO
ALTER DATABASE [Vojna_baza] SET  MULTI_USER 
GO
ALTER DATABASE [Vojna_baza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Vojna_baza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Vojna_baza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Vojna_baza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Vojna_baza] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Vojna_baza]
GO
/****** Object:  Table [dbo].[Avion]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avion](
	[Sifra_vozila] [int] NOT NULL,
	[Sifra_piste] [int] NOT NULL,
	[Raspon_krila] [float] NOT NULL,
	[Vrsta_aviona] [nvarchar](20) NULL,
	[Domet] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vozila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brod]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brod](
	[Sifra_vozila] [int] NOT NULL,
	[Sifra_luke] [int] NOT NULL,
	[Duzina] [float] NOT NULL,
	[Naoruzan] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vozila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dobavljac]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dobavljac](
	[Sifra_dobavljaca] [int] NOT NULL,
	[Lokacija] [nvarchar](30) NULL,
	[Naziv] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_dobavljaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dzip]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dzip](
	[Sifra_vozila] [int] NOT NULL,
	[Sifra_garaze] [int] NOT NULL,
	[Precnik_tockova] [float] NULL,
	[Broj_sedista] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vozila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Garaza]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Garaza](
	[Sifra_garaze] [int] NOT NULL,
	[Naziv] [nvarchar](20) NOT NULL,
	[Kapacitet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_garaze] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hangar]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangar](
	[Sifra_hangara] [int] NOT NULL,
	[Naziv] [nvarchar](20) NOT NULL,
	[Kapacitet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_hangara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inspekcija]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inspekcija](
	[Sifra_inspekcije] [int] NOT NULL,
	[Sifra_posla] [int] NOT NULL,
	[Clanovi_tima] [nvarchar](300) NOT NULL,
	[Datum_inspekcije] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_inspekcije] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Isporuka_delova]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Isporuka_delova](
	[Sifra_dobavljaca] [int] NOT NULL,
	[Sifra_mehanicara] [int] NOT NULL,
	[Datum_isporuke] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_dobavljaca] ASC,
	[Sifra_mehanicara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izvestaj]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izvestaj](
	[Sifra_inspekcije] [int] NOT NULL,
	[Sifra_izvestaja] [int] NOT NULL,
	[Detalji_izvestaja] [nvarchar](300) NULL,
	[Datum_formiranja] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_inspekcije] ASC,
	[Sifra_izvestaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Komandni_centar]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Komandni_centar](
	[Sifra_KC] [int] NOT NULL,
	[Spisak_osoblja] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_KC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lekar]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lekar](
	[Sifra_lekara] [int] NOT NULL,
	[Zavrsena_skola] [nvarchar](30) NOT NULL,
	[Strucna_sprema] [nvarchar](30) NULL,
	[Broj_operacija] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_lekara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luka]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luka](
	[Sifra_luke] [int] NOT NULL,
	[Naziv] [nvarchar](20) NOT NULL,
	[Kapacitet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_luke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Magacin]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magacin](
	[Sifra_magacina] [int] NOT NULL,
	[Tezina_municije] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_magacina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mehanicar]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mehanicar](
	[Sifra_mehanicara] [int] NOT NULL,
	[Kvalifikacija] [nvarchar](20) NOT NULL,
	[Radni_staz] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_mehanicara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nadzornik]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nadzornik](
	[Sifra_nadzornika] [int] NOT NULL,
	[Ime] [nvarchar](60) NOT NULL,
	[Vreme_na_duznosti] [nvarchar](100) NULL,
	[Zavrsen_fakultet] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_nadzornika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nalog_za_nabavku]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nalog_za_nabavku](
	[Sifra_mehanicara] [int] NOT NULL,
	[Sifra_dobavljaca] [int] NOT NULL,
	[Rok_za_isporuku] [date] NOT NULL,
	[Spisak_stvari] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_mehanicara] ASC,
	[Sifra_dobavljaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pismo]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pismo](
	[Sifra_vojnika] [int] NOT NULL,
	[Sifra_poste] [int] NOT NULL,
	[Datum_slanja] [date] NOT NULL,
	[Sadrzaj] [nvarchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vojnika] ASC,
	[Sifra_poste] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pista]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pista](
	[Sifra_piste] [int] NOT NULL,
	[Naziv] [nvarchar](20) NOT NULL,
	[Kapacitet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_piste] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Popravka]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Popravka](
	[Sifra_vozila] [int] NOT NULL,
	[Sifra_mehanicara] [int] NOT NULL,
	[Datum_popravke] [date] NOT NULL,
	[Detalji_popravke] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vozila] ASC,
	[Sifra_mehanicara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posao]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posao](
	[Sifra_posla] [int] IDENTITY(301,1) NOT NULL,
	[Naziv] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_posla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posta]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posta](
	[Sifra_poste] [int] NOT NULL,
	[Naziv_postara] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_poste] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pregled]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pregled](
	[Sifra_vojnika] [int] NOT NULL,
	[Sifra_lekara] [int] NOT NULL,
	[Datum_pregleda] [date] NOT NULL,
	[Rezultati] [nvarchar](300) NULL,
	[Terapija] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vojnika] ASC,
	[Sifra_lekara] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tenk]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenk](
	[Sifra_vozila] [int] NOT NULL,
	[Sifra_hangara] [int] NOT NULL,
	[Duzina] [float] NOT NULL,
	[Vrsta_municije] [nvarchar](50) NULL,
	[Duzina_topa] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vozila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uzima_municiju]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uzima_municiju](
	[Sifra_magacina] [int] NOT NULL,
	[Sifra_vojnika] [int] NOT NULL,
	[Kolicina_municije] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_magacina] ASC,
	[Sifra_vojnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vojni_odred]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vojni_odred](
	[Sifra_odreda] [int] NOT NULL,
	[Naziv] [nvarchar](30) NOT NULL,
	[Specijalnost] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_odreda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vojnik]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vojnik](
	[Sifra_vojnika] [int] IDENTITY(4501,1) NOT NULL,
	[Sifra_KC] [int] NOT NULL,
	[Sifra_posla] [int] NOT NULL,
	[Sifra_odreda] [int] NOT NULL,
	[Sifra_nadzornika] [int] NOT NULL,
	[Ime] [nvarchar](30) NOT NULL,
	[Prezime] [nvarchar](30) NULL,
	[Cin] [nvarchar](20) NOT NULL,
	[Datum_rodjenja] [date] NOT NULL,
	[Pol] [nvarchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vojnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vozilo]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vozilo](
	[Sifra_vozila] [int] IDENTITY(4701,1) NOT NULL,
	[Sifra_KC] [int] NULL,
	[Naziv] [nvarchar](30) NOT NULL,
	[Datum_proizvodnje] [date] NULL,
	[Zemlja_porekla] [nvarchar](20) NULL,
	[Zapremina_motora] [float] NULL,
	[Boja] [nvarchar](15) NULL,
	[Vrsta_goriva] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vozila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zaduzen_za]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zaduzen_za](
	[Sifra_vojnika] [int] NOT NULL,
	[Sifra_vozila] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sifra_vojnika] ASC,
	[Sifra_vozila] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Pretraga_odreda]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Pretraga_odreda](@jedinica char(3))
RETURNS TABLE
AS
RETURN
(SELECT Vojnik.ime +' '+ Vojnik.Prezime AS 'Vojnik', Vojnik.Cin, Nadzornik.Ime AS'Nadzornik',
Vozilo.Naziv AS 'Vozilo', Vojni_odred.Naziv AS 'Jedinica'
FROM Vojnik JOIN Nadzornik ON Vojnik.Sifra_nadzornika = Nadzornik.Sifra_nadzornika 
JOIN Zaduzen_za ON Vojnik.Sifra_vojnika = Zaduzen_za.Sifra_vojnika
JOIN Vozilo ON Zaduzen_za.Sifra_vozila = Vozilo.Sifra_vozila
JOIN Vojni_odred ON Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
WHERE Vojni_odred.Naziv LIKE (SUBSTRING(@jedinica,1,3) +'%')
);
GO
/****** Object:  View [dbo].[Podaci_o_vojniku]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Podaci_o_vojniku]
AS
SELECT Vojnik.Ime +' '+ Vojnik.Prezime AS 'Ime i prezime', 
Vojnik.Cin, Vojni_odred.Naziv AS 'Ime vojne jedinice',
Posao.naziv AS 'Posao', Vozilo.Naziv AS 'Dodeljeno vozilo'
From Vojnik JOIN Vojni_odred ON Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
JOIN Posao ON Vojnik.Sifra_posla = Posao.Sifra_posla
JOIN Zaduzen_za ON Vojnik.Sifra_vojnika = Zaduzen_za.Sifra_vojnika
JOIN Vozilo ON Zaduzen_za.Sifra_vozila = Vozilo.Sifra_vozila
	 

	  
	
GO
/****** Object:  View [dbo].[Podaci_o_vozilu]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Podaci_o_vozilu]
AS
SELECT Vozilo.Naziv, Vozilo.Datum_proizvodnje, Vozilo.Zemlja_porekla, 
Vojnik.Ime +' '+ Vojnik.Prezime AS 'Zaduzeni vojnik', Komandni_centar.Sifra_KC AS 'Sifra KC'
FROM Vozilo JOIN Zaduzen_za ON Vozilo.Sifra_vozila = Zaduzen_za.Sifra_vozila 
JOIN Vojnik ON Vojnik.Sifra_vojnika = Zaduzen_za.Sifra_vojnika
JOIN Komandni_centar on Vozilo.Sifra_KC = Komandni_centar.Sifra_KC
GO
INSERT [dbo].[Avion] ([Sifra_vozila], [Sifra_piste], [Raspon_krila], [Vrsta_aviona], [Domet]) VALUES (4714, 5612, 5.67, N'Borbeni', N'1645')
INSERT [dbo].[Avion] ([Sifra_vozila], [Sifra_piste], [Raspon_krila], [Vrsta_aviona], [Domet]) VALUES (4715, 5612, 5.67, N'Borbeni', N'1645')
INSERT [dbo].[Brod] ([Sifra_vozila], [Sifra_luke], [Duzina], [Naoruzan]) VALUES (4710, 5645, 13, 1)
INSERT [dbo].[Brod] ([Sifra_vozila], [Sifra_luke], [Duzina], [Naoruzan]) VALUES (4711, 5645, 13, 1)
INSERT [dbo].[Brod] ([Sifra_vozila], [Sifra_luke], [Duzina], [Naoruzan]) VALUES (4712, 5645, 13, 1)
INSERT [dbo].[Brod] ([Sifra_vozila], [Sifra_luke], [Duzina], [Naoruzan]) VALUES (4713, 5645, 13, 0)
INSERT [dbo].[Dobavljac] ([Sifra_dobavljaca], [Lokacija], [Naziv]) VALUES (9732, N'Smederevo', N'Zastava')
INSERT [dbo].[Dobavljac] ([Sifra_dobavljaca], [Lokacija], [Naziv]) VALUES (9784, N'Valjevo', N'Domovina')
INSERT [dbo].[Dzip] ([Sifra_vozila], [Sifra_garaze], [Precnik_tockova], [Broj_sedista]) VALUES (4701, 5623, 80, 4)
INSERT [dbo].[Dzip] ([Sifra_vozila], [Sifra_garaze], [Precnik_tockova], [Broj_sedista]) VALUES (4702, 5623, 80, 4)
INSERT [dbo].[Dzip] ([Sifra_vozila], [Sifra_garaze], [Precnik_tockova], [Broj_sedista]) VALUES (4703, 5623, 80, 4)
INSERT [dbo].[Dzip] ([Sifra_vozila], [Sifra_garaze], [Precnik_tockova], [Broj_sedista]) VALUES (4704, 5624, 86, 8)
INSERT [dbo].[Dzip] ([Sifra_vozila], [Sifra_garaze], [Precnik_tockova], [Broj_sedista]) VALUES (4705, 5624, 86, 8)
INSERT [dbo].[Dzip] ([Sifra_vozila], [Sifra_garaze], [Precnik_tockova], [Broj_sedista]) VALUES (4706, 5625, 90, 5)
INSERT [dbo].[Garaza] ([Sifra_garaze], [Naziv], [Kapacitet]) VALUES (5623, N'Alfa', 50)
INSERT [dbo].[Garaza] ([Sifra_garaze], [Naziv], [Kapacitet]) VALUES (5624, N'Beta', 35)
INSERT [dbo].[Garaza] ([Sifra_garaze], [Naziv], [Kapacitet]) VALUES (5625, N'Gama', 40)
INSERT [dbo].[Hangar] ([Sifra_hangara], [Naziv], [Kapacitet]) VALUES (5634, N'Rados', 75)
INSERT [dbo].[Inspekcija] ([Sifra_inspekcije], [Sifra_posla], [Clanovi_tima], [Datum_inspekcije]) VALUES (4282, 304, N'Marko Bokalj, Milisav Sreckovic, Nenad Maric', CAST(N'2019-03-12' AS Date))
INSERT [dbo].[Inspekcija] ([Sifra_inspekcije], [Sifra_posla], [Clanovi_tima], [Datum_inspekcije]) VALUES (4283, 301, N'Marko Bokalj, Nedan Jagoric, Nenad Maric', CAST(N'2019-04-02' AS Date))
INSERT [dbo].[Inspekcija] ([Sifra_inspekcije], [Sifra_posla], [Clanovi_tima], [Datum_inspekcije]) VALUES (4284, 305, N'Svetislav Mrkonjic, Milisav Sreckovic, Branko Katic', CAST(N'2019-04-12' AS Date))
INSERT [dbo].[Isporuka_delova] ([Sifra_dobavljaca], [Sifra_mehanicara], [Datum_isporuke]) VALUES (9732, 4221, CAST(N'2018-10-13' AS Date))
INSERT [dbo].[Izvestaj] ([Sifra_inspekcije], [Sifra_izvestaja], [Detalji_izvestaja], [Datum_formiranja]) VALUES (4282, 14282, N'Strazari ispunjavaju svoju duznost adekvatno i predlazemo unapredjenje.', CAST(N'2019-03-19' AS Date))
INSERT [dbo].[Izvestaj] ([Sifra_inspekcije], [Sifra_izvestaja], [Detalji_izvestaja], [Datum_formiranja]) VALUES (4283, 14283, N'Cistac slabo radi svoj posao, treba mu povecati motivaciju', CAST(N'2019-03-19' AS Date))
INSERT [dbo].[Izvestaj] ([Sifra_inspekcije], [Sifra_izvestaja], [Detalji_izvestaja], [Datum_formiranja]) VALUES (4284, 14284, N'Prenosaci imaju dosta slobodnog vremea, njihov broj se moze msanjiti.', CAST(N'2019-03-19' AS Date))
INSERT [dbo].[Komandni_centar] ([Sifra_KC], [Spisak_osoblja]) VALUES (1389, N'Radovan Stepic, Milan Stojkovic, Ljubisa Nedic, Stefa Simic')
INSERT [dbo].[Lekar] ([Sifra_lekara], [Zavrsena_skola], [Strucna_sprema], [Broj_operacija]) VALUES (4211, N'Medicinski fakultet', N'Osmi stepen', 47)
INSERT [dbo].[Luka] ([Sifra_luke], [Naziv], [Kapacitet]) VALUES (5645, N'Korint', 23)
INSERT [dbo].[Magacin] ([Sifra_magacina], [Tezina_municije]) VALUES (8339, 7.43)
INSERT [dbo].[Mehanicar] ([Sifra_mehanicara], [Kvalifikacija], [Radni_staz]) VALUES (4221, N'Strucna skola', N'3 godine i 4 meseca')
INSERT [dbo].[Nadzornik] ([Sifra_nadzornika], [Ime], [Vreme_na_duznosti], [Zavrsen_fakultet]) VALUES (4231, N'Janko Radulic', N'Od pocetka 2016-te.', N'Fakultet bezbednosti')
INSERT [dbo].[Nalog_za_nabavku] ([Sifra_mehanicara], [Sifra_dobavljaca], [Rok_za_isporuku], [Spisak_stvari]) VALUES (4221, 9732, CAST(N'2018-10-20' AS Date), N'Tocak za Sai-jen dzip')
INSERT [dbo].[Nalog_za_nabavku] ([Sifra_mehanicara], [Sifra_dobavljaca], [Rok_za_isporuku], [Spisak_stvari]) VALUES (4221, 9784, CAST(N'2020-01-01' AS Date), N'Cev za T-14 Armata tenk')
INSERT [dbo].[Pismo] ([Sifra_vojnika], [Sifra_poste], [Datum_slanja], [Sadrzaj]) VALUES (4518, 7392, CAST(N'2017-09-23' AS Date), N'-ZASTICENO-')
INSERT [dbo].[Pista] ([Sifra_piste], [Naziv], [Kapacitet]) VALUES (5612, N'Slatina', 12)
INSERT [dbo].[Popravka] ([Sifra_vozila], [Sifra_mehanicara], [Datum_popravke], [Detalji_popravke]) VALUES (4706, 4221, CAST(N'2018-10-15' AS Date), N'Dzipu koneske marke je otpao tocak. Stavljen je novi i preporucena opreznost.')
SET IDENTITY_INSERT [dbo].[Posao] ON 

INSERT [dbo].[Posao] ([Sifra_posla], [Naziv]) VALUES (301, N'Cistac')
INSERT [dbo].[Posao] ([Sifra_posla], [Naziv]) VALUES (302, N'Redar')
INSERT [dbo].[Posao] ([Sifra_posla], [Naziv]) VALUES (303, N'Djubretar')
INSERT [dbo].[Posao] ([Sifra_posla], [Naziv]) VALUES (304, N'Strazar')
INSERT [dbo].[Posao] ([Sifra_posla], [Naziv]) VALUES (305, N'Prenosac')
INSERT [dbo].[Posao] ([Sifra_posla], [Naziv]) VALUES (306, N'Vozilo')
SET IDENTITY_INSERT [dbo].[Posao] OFF
INSERT [dbo].[Posta] ([Sifra_poste], [Naziv_postara]) VALUES (7392, N'Jovan Radic')
INSERT [dbo].[Pregled] ([Sifra_vojnika], [Sifra_lekara], [Datum_pregleda], [Rezultati], [Terapija]) VALUES (4524, 4211, CAST(N'2018-11-23' AS Date), N'Pacijentu je ustanovljen stomacni virus, primio je injekciju i savetovan odmor.', N'Probiotic i aktivni ugalj.')
INSERT [dbo].[Pregled] ([Sifra_vojnika], [Sifra_lekara], [Datum_pregleda], [Rezultati], [Terapija]) VALUES (4532, 4211, CAST(N'2019-05-01' AS Date), N'Pacijent je uganuo zglob i oslobodjen je posla nedelju dana', N'Biofrezee kremu i ihtiol-kamfor.')
INSERT [dbo].[Tenk] ([Sifra_vozila], [Sifra_hangara], [Duzina], [Vrsta_municije], [Duzina_topa]) VALUES (4707, 5634, 8.7, N'2A82-1M 125 mm', 3.6)
INSERT [dbo].[Tenk] ([Sifra_vozila], [Sifra_hangara], [Duzina], [Vrsta_municije], [Duzina_topa]) VALUES (4708, 5634, 8.7, N'2A82-1M 125 mm', 3.6)
INSERT [dbo].[Tenk] ([Sifra_vozila], [Sifra_hangara], [Duzina], [Vrsta_municije], [Duzina_topa]) VALUES (4709, 5634, 8.7, N'2A82-1M 125 mm', 3.6)
INSERT [dbo].[Uzima_municiju] ([Sifra_magacina], [Sifra_vojnika], [Kolicina_municije]) VALUES (8339, 4528, N'7')
INSERT [dbo].[Vojni_odred] ([Sifra_odreda], [Naziv], [Specijalnost]) VALUES (731, N'JSO', N'Izvrsavanje specijanih operacija')
INSERT [dbo].[Vojni_odred] ([Sifra_odreda], [Naziv], [Specijalnost]) VALUES (732, N'SAJ', N'Anti-terorizam')
INSERT [dbo].[Vojni_odred] ([Sifra_odreda], [Naziv], [Specijalnost]) VALUES (733, N'63. padobranska brigada', N'Padobranske akcije')
SET IDENTITY_INSERT [dbo].[Vojnik] ON 

INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4501, 1389, 301, 731, 4231, N'Marko', N'Miric', N'Razvodnik', CAST(N'1992-11-11' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4502, 1389, 302, 733, 4231, N'Aleksa', N'Agatic', N'Mladji vodnik', CAST(N'1994-01-15' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4503, 1389, 303, 732, 4231, N'Aleksandar', N'Krstic', N'Razvodnik', CAST(N'1995-06-10' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4504, 1389, 304, 733, 4231, N'Stanoje', N'Glavas', N'Desetar', CAST(N'1989-01-31' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4505, 1389, 304, 733, 4231, N'Marjan', N'Jaric', N'Desetar', CAST(N'1998-10-01' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4506, 1389, 304, 733, 4231, N'Ljubomir', N'Blagic', N'Desetar', CAST(N'1997-12-04' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4507, 1389, 304, 733, 4231, N'Djordje', N'Petrovic', N'Vodnik', CAST(N'1984-07-03' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4508, 1389, 305, 732, 4231, N'Srdjan', N'Mikic', N'Razvodnik', CAST(N'1998-12-01' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4509, 1389, 305, 731, 4231, N'Marko', N'Ljubic', N'Razvodnik', CAST(N'1998-02-09' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4510, 1389, 305, 732, 4231, N'Svetozar', N'Tosic', N'Desetar', CAST(N'1998-04-21' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4511, 1389, 305, 731, 4231, N'Ljubinko', N'Madzgalj', N'Razvodnik', CAST(N'1998-09-08' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4512, 1389, 306, 733, 4231, N'Blagoje', N'Blagic', N'Razvodnik', CAST(N'1997-09-11' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4513, 1389, 306, 731, 4231, N'Marko', N'Maric', N'Desetar', CAST(N'1998-07-19' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4514, 1389, 306, 732, 4231, N'Stevan', N'Stevic', N'Razvodnik', CAST(N'1993-08-21' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4515, 1389, 306, 733, 4231, N'Radovan', N'Radic', N'Razvodnik', CAST(N'1995-06-01' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4516, 1389, 306, 731, 4231, N'Uros', N'Radmilovic', N'Desetar', CAST(N'1994-12-12' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4517, 1389, 306, 732, 4231, N'Vladislav', N'Pesic', N'Desetar', CAST(N'1993-11-13' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4518, 1389, 306, 733, 4231, N'Petar', N'Kutlaca', N'Desetar', CAST(N'1998-03-23' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4519, 1389, 306, 731, 4231, N'Svetozar', N'Krivokapa', N'Razvodnik', CAST(N'1989-05-25' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4520, 1389, 306, 732, 4231, N'Novak', N'Novakovic', N'Vodnik', CAST(N'1979-05-18' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4521, 1389, 306, 733, 4231, N'Milorad', N'Lakic', N'Razvodnik', CAST(N'1996-02-03' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4522, 1389, 306, 731, 4231, N'Milan', N'Milacic', N'Desetar', CAST(N'1998-03-08' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4523, 1389, 306, 732, 4231, N'Strahinja', N'Ruzic', N'Desetar', CAST(N'1999-06-09' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4524, 1389, 306, 733, 4231, N'Pavle', N'Adamovic', N'Razvodnik', CAST(N'1994-08-11' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4525, 1389, 306, 731, 4231, N'Uros', N'Adamovic', N'Desetar', CAST(N'1995-09-10' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4526, 1389, 306, 732, 4231, N'Negovan', N'Sulja', N'Razvodnik', CAST(N'1992-10-30' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4527, 1389, 306, 733, 4231, N'Rasim', N'Jovanovic', N'Razvodnik', CAST(N'1993-11-28' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4528, 1389, 306, 731, 4231, N'Lazar', N'Lazic', N'Desetar', CAST(N'1991-12-21' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4529, 1389, 306, 732, 4231, N'Igor', N'Jokic', N'Desetar', CAST(N'1990-01-22' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4530, 1389, 306, 733, 4231, N'Nikola', N'Nikic', N'Desetar', CAST(N'1998-08-15' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4531, 1389, 306, 731, 4231, N'Ostoja', N'Gazerski', N'Razvodnik', CAST(N'1995-05-20' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4532, 1389, 306, 732, 4231, N'Miodrag', N'Pavlovic', N'Desetar', CAST(N'1987-09-01' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4533, 1389, 306, 733, 4231, N'Borivoj', N'Jezdic', N'Desetar', CAST(N'1985-02-03' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4534, 1389, 306, 731, 4231, N'Bora', N'Pavlovic', N'Razvodnik', CAST(N'1986-03-18' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4535, 1389, 306, 732, 4231, N'Branislav', N'Dusic', N'Razvodnik', CAST(N'1980-09-03' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4536, 1389, 306, 733, 4231, N'Dusan', N'Svetic', N'Desetar', CAST(N'1978-06-14' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4537, 1389, 306, 732, 4231, N'Dusko', N'Jokic', N'Razvodnik', CAST(N'1993-11-15' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4538, 1389, 306, 733, 4231, N'Vukan', N'Jovanovic', N'Desetar', CAST(N'1994-04-16' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4539, 1389, 306, 731, 4231, N'Ugljesa', N'Stepic', N'Razvodnik', CAST(N'1999-08-19' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4540, 1389, 306, 732, 4231, N'Djordje', N'Markovic', N'Desetar', CAST(N'1997-01-20' AS Date), N'Muski')
INSERT [dbo].[Vojnik] ([Sifra_vojnika], [Sifra_KC], [Sifra_posla], [Sifra_odreda], [Sifra_nadzornika], [Ime], [Prezime], [Cin], [Datum_rodjenja], [Pol]) VALUES (4541, 1389, 306, 733, 4231, N'Dragoljub', N'Mihajlovic', N'Razvodnik', CAST(N'1995-10-27' AS Date), N'Muski')
SET IDENTITY_INSERT [dbo].[Vojnik] OFF
SET IDENTITY_INSERT [dbo].[Vozilo] ON 

INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4701, 1389, N'Rmpalija', CAST(N'2010-03-15' AS Date), N'Srbija', 3.4, N'Zelena', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4702, 1389, N'Rmpalija', CAST(N'2010-03-15' AS Date), N'Srbija', 3.4, N'Zelena', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4703, 1389, N'Rmpalija', CAST(N'2010-03-15' AS Date), N'Srbija', 3.4, N'Zelena', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4704, 1389, N'Zver', CAST(N'2007-03-15' AS Date), N'Rusija', 5.4, N'Siva', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4705, 1389, N'Zver', CAST(N'2007-03-15' AS Date), N'Rusija', 5.4, N'Siva', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4706, 1389, N'Sai-Jen', CAST(N'2003-07-09' AS Date), N'Kina', 4.2, N'Braon', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4707, 1389, N'T-14 Armata', CAST(N'2015-10-12' AS Date), N'Rusija', 12.5, N'Crna', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4708, 1389, N'T-14 Armata', CAST(N'2015-10-12' AS Date), N'Rusija', 12.5, N'Crna', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4709, 1389, N'T-14 Armata', CAST(N'2015-10-12' AS Date), N'Rusija', 12.5, N'Crna', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4710, 1389, N'Galeb', CAST(N'2016-04-11' AS Date), N'Srbija', 10.5, N'Siva', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4711, 1389, N'Galeb', CAST(N'2016-04-15' AS Date), N'Srbija', 10.5, N'Siva', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4712, 1389, N'Galeb', CAST(N'2016-04-15' AS Date), N'Srbija', 10.5, N'Siva', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4713, 1389, N'Galeb', CAST(N'2016-04-17' AS Date), N'Srbija', 10.5, N'Siva', N'Dizel')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4714, 1389, N'Sivi Soko', CAST(N'2018-11-29' AS Date), N'Srbija', 16.7, N'Siva', N'Kerozin')
INSERT [dbo].[Vozilo] ([Sifra_vozila], [Sifra_KC], [Naziv], [Datum_proizvodnje], [Zemlja_porekla], [Zapremina_motora], [Boja], [Vrsta_goriva]) VALUES (4715, 1389, N'Sivi Soko', CAST(N'2018-11-03' AS Date), N'Srbija', 16.7, N'Siva', N'Kerozin')
SET IDENTITY_INSERT [dbo].[Vozilo] OFF
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4512, 4701)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4513, 4702)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4514, 4703)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4515, 4704)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4516, 4705)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4517, 4706)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4517, 4707)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4518, 4707)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4519, 4707)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4520, 4708)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4521, 4708)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4522, 4708)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4523, 4709)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4524, 4709)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4525, 4709)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4526, 4710)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4527, 4710)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4528, 4711)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4529, 4711)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4530, 4712)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4531, 4712)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4532, 4713)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4533, 4713)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4534, 4714)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4535, 4714)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4536, 4715)
INSERT [dbo].[Zaduzen_za] ([Sifra_vojnika], [Sifra_vozila]) VALUES (4537, 4715)
ALTER TABLE [dbo].[Avion]  WITH CHECK ADD FOREIGN KEY([Sifra_piste])
REFERENCES [dbo].[Pista] ([Sifra_piste])
GO
ALTER TABLE [dbo].[Avion]  WITH CHECK ADD FOREIGN KEY([Sifra_vozila])
REFERENCES [dbo].[Vozilo] ([Sifra_vozila])
GO
ALTER TABLE [dbo].[Brod]  WITH CHECK ADD FOREIGN KEY([Sifra_luke])
REFERENCES [dbo].[Luka] ([Sifra_luke])
GO
ALTER TABLE [dbo].[Brod]  WITH CHECK ADD FOREIGN KEY([Sifra_vozila])
REFERENCES [dbo].[Vozilo] ([Sifra_vozila])
GO
ALTER TABLE [dbo].[Dzip]  WITH CHECK ADD FOREIGN KEY([Sifra_garaze])
REFERENCES [dbo].[Garaza] ([Sifra_garaze])
GO
ALTER TABLE [dbo].[Dzip]  WITH CHECK ADD FOREIGN KEY([Sifra_vozila])
REFERENCES [dbo].[Vozilo] ([Sifra_vozila])
GO
ALTER TABLE [dbo].[Inspekcija]  WITH CHECK ADD FOREIGN KEY([Sifra_posla])
REFERENCES [dbo].[Posao] ([Sifra_posla])
GO
ALTER TABLE [dbo].[Isporuka_delova]  WITH CHECK ADD FOREIGN KEY([Sifra_dobavljaca])
REFERENCES [dbo].[Dobavljac] ([Sifra_dobavljaca])
GO
ALTER TABLE [dbo].[Isporuka_delova]  WITH CHECK ADD FOREIGN KEY([Sifra_mehanicara])
REFERENCES [dbo].[Mehanicar] ([Sifra_mehanicara])
GO
ALTER TABLE [dbo].[Izvestaj]  WITH CHECK ADD FOREIGN KEY([Sifra_inspekcije])
REFERENCES [dbo].[Inspekcija] ([Sifra_inspekcije])
GO
ALTER TABLE [dbo].[Nalog_za_nabavku]  WITH CHECK ADD FOREIGN KEY([Sifra_dobavljaca])
REFERENCES [dbo].[Dobavljac] ([Sifra_dobavljaca])
GO
ALTER TABLE [dbo].[Nalog_za_nabavku]  WITH CHECK ADD FOREIGN KEY([Sifra_mehanicara])
REFERENCES [dbo].[Mehanicar] ([Sifra_mehanicara])
GO
ALTER TABLE [dbo].[Pismo]  WITH CHECK ADD FOREIGN KEY([Sifra_poste])
REFERENCES [dbo].[Posta] ([Sifra_poste])
GO
ALTER TABLE [dbo].[Pismo]  WITH CHECK ADD FOREIGN KEY([Sifra_vojnika])
REFERENCES [dbo].[Vojnik] ([Sifra_vojnika])
GO
ALTER TABLE [dbo].[Popravka]  WITH CHECK ADD FOREIGN KEY([Sifra_vozila])
REFERENCES [dbo].[Vozilo] ([Sifra_vozila])
GO
ALTER TABLE [dbo].[Popravka]  WITH CHECK ADD FOREIGN KEY([Sifra_mehanicara])
REFERENCES [dbo].[Mehanicar] ([Sifra_mehanicara])
GO
ALTER TABLE [dbo].[Pregled]  WITH CHECK ADD FOREIGN KEY([Sifra_lekara])
REFERENCES [dbo].[Lekar] ([Sifra_lekara])
GO
ALTER TABLE [dbo].[Pregled]  WITH CHECK ADD FOREIGN KEY([Sifra_vojnika])
REFERENCES [dbo].[Vojnik] ([Sifra_vojnika])
GO
ALTER TABLE [dbo].[Tenk]  WITH CHECK ADD FOREIGN KEY([Sifra_hangara])
REFERENCES [dbo].[Hangar] ([Sifra_hangara])
GO
ALTER TABLE [dbo].[Tenk]  WITH CHECK ADD FOREIGN KEY([Sifra_vozila])
REFERENCES [dbo].[Vozilo] ([Sifra_vozila])
GO
ALTER TABLE [dbo].[Uzima_municiju]  WITH CHECK ADD FOREIGN KEY([Sifra_magacina])
REFERENCES [dbo].[Magacin] ([Sifra_magacina])
GO
ALTER TABLE [dbo].[Uzima_municiju]  WITH CHECK ADD FOREIGN KEY([Sifra_vojnika])
REFERENCES [dbo].[Vojnik] ([Sifra_vojnika])
GO
ALTER TABLE [dbo].[Vojnik]  WITH CHECK ADD FOREIGN KEY([Sifra_KC])
REFERENCES [dbo].[Komandni_centar] ([Sifra_KC])
GO
ALTER TABLE [dbo].[Vojnik]  WITH CHECK ADD FOREIGN KEY([Sifra_nadzornika])
REFERENCES [dbo].[Nadzornik] ([Sifra_nadzornika])
GO
ALTER TABLE [dbo].[Vojnik]  WITH CHECK ADD FOREIGN KEY([Sifra_odreda])
REFERENCES [dbo].[Vojni_odred] ([Sifra_odreda])
GO
ALTER TABLE [dbo].[Vojnik]  WITH CHECK ADD FOREIGN KEY([Sifra_posla])
REFERENCES [dbo].[Posao] ([Sifra_posla])
GO
ALTER TABLE [dbo].[Vozilo]  WITH CHECK ADD FOREIGN KEY([Sifra_KC])
REFERENCES [dbo].[Komandni_centar] ([Sifra_KC])
GO
ALTER TABLE [dbo].[Zaduzen_za]  WITH CHECK ADD FOREIGN KEY([Sifra_vojnika])
REFERENCES [dbo].[Vojnik] ([Sifra_vojnika])
GO
ALTER TABLE [dbo].[Zaduzen_za]  WITH CHECK ADD FOREIGN KEY([Sifra_vozila])
REFERENCES [dbo].[Vozilo] ([Sifra_vozila])
GO
/****** Object:  StoredProcedure [dbo].[Vrati_vojnike]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Vrati_vojnike]
@Naziv VARCHAR (20),
@Datum DATE = NULL
AS
BEGIN
IF @Datum IS NULL
	SELECT Vojnik.Ime +' '+ Vojnik.Prezime AS 'Ime i prezime', 
	Vojnik.Cin, Vojni_odred.Naziv AS 'Ime vojne jedinice',
	Posao.Naziv AS 'Duznost',
	Komandni_centar.Sifra_KC AS 'Sifra KC',
	Vojnik.Datum_rodjenja AS 'Datum rodjenja'
	FROM Vojnik JOIN Vojni_odred on Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
	JOIN Posao ON Vojnik.Sifra_posla = Posao.Sifra_posla
	JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Posao.Naziv LIKE (SUBSTRING(@Naziv, 1, 5)+'%')
	ORDER BY Vojnik.Datum_rodjenja
ELSE
	SELECT Vojnik.Ime +' '+ Vojnik.Prezime AS 'Ime i prezime', 
	Vojnik.Cin, Vojni_odred.Naziv AS 'Ime vojne jedinice',
	Vojnik.Datum_rodjenja AS 'Datum prijave',
	Posao.Naziv AS 'Duznost',
	Komandni_centar.Sifra_KC AS 'Sifra KC',
	Vojnik.Datum_rodjenja AS 'Datum rodjenja'
	FROM Vojnik JOIN Vojni_odred on Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
	JOIN Posao ON Vojnik.Sifra_posla = Posao.Sifra_posla
		JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Posao.Naziv LIKE (SUBSTRING(@Naziv, 1, 5)+'%') AND Vojnik.Datum_rodjenja > @Datum
	ORDER BY Vojnik.Datum_rodjenja
END
GO
/****** Object:  StoredProcedure [dbo].[Vrati_vozila]    Script Date: 10/2/2019 9:26:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Vrati_vozila]
@Zapremina FLOAT,
@Datum DATE = NULL
AS
BEGIN
IF @Datum IS NULL
	SELECT Vozilo.Naziv, Vozilo.Zemlja_porekla AS 'Zemlja porekla', Vojnik.Ime + +' '+ Vojnik.Prezime AS 'Vojnik',
	Komandni_centar.Sifra_KC AS 'Sifra KC', Vozilo.Zapremina_motora AS 'Zapremina motora'
	FROM Vozilo JOIN Zaduzen_za on Vozilo.Sifra_vozila = Zaduzen_za.Sifra_vozila
	JOIN Vojnik ON Zaduzen_za.Sifra_vojnika = Vojnik.Sifra_vojnika
	JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Vozilo.Zapremina_motora > @Zapremina
	ORDER BY Vozilo.Zapremina_motora
ELSE
	SELECT Vozilo.Naziv, Vozilo.Datum_proizvodnje AS 'Datum proizvodnje',
	Vozilo.Zemlja_porekla AS 'Zemlja porekla', Vojnik.Ime + +' '+ Vojnik.Prezime AS 'Vojnik',
	Komandni_centar.Sifra_KC AS 'Sifra KC', Vozilo.Zapremina_motora AS 'Zapremina motora'
	FROM Vozilo JOIN Zaduzen_za on Vozilo.Sifra_vozila = Zaduzen_za.Sifra_vozila
	JOIN Vojnik ON Zaduzen_za.Sifra_vojnika = Vojnik.Sifra_vojnika
	JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Vozilo.Zapremina_motora > @Zapremina AND Vozilo.Datum_proizvodnje > @Datum
	ORDER BY Vozilo.Datum_proizvodnje
END
GO
USE [master]
GO
ALTER DATABASE [Vojna_baza] SET  READ_WRITE 
GO
