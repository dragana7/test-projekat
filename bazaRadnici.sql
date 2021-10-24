USE [master]
GO
/****** Object:  Database [RadniciBaza]    Script Date: 10/25/2021 12:01:51 AM ******/
CREATE DATABASE [RadniciBaza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RadniciBaza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RadniciBaza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RadniciBaza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RadniciBaza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RadniciBaza] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RadniciBaza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RadniciBaza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RadniciBaza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RadniciBaza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RadniciBaza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RadniciBaza] SET ARITHABORT OFF 
GO
ALTER DATABASE [RadniciBaza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RadniciBaza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RadniciBaza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RadniciBaza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RadniciBaza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RadniciBaza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RadniciBaza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RadniciBaza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RadniciBaza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RadniciBaza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RadniciBaza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RadniciBaza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RadniciBaza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RadniciBaza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RadniciBaza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RadniciBaza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RadniciBaza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RadniciBaza] SET RECOVERY FULL 
GO
ALTER DATABASE [RadniciBaza] SET  MULTI_USER 
GO
ALTER DATABASE [RadniciBaza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RadniciBaza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RadniciBaza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RadniciBaza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RadniciBaza] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RadniciBaza] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RadniciBaza', N'ON'
GO
ALTER DATABASE [RadniciBaza] SET QUERY_STORE = OFF
GO
USE [RadniciBaza]
GO
/****** Object:  Table [dbo].[Radnik]    Script Date: 10/25/2021 12:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radnik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NULL,
	[Prezime] [nvarchar](50) NULL,
	[Adresa] [nvarchar](50) NULL,
	[NetoIznos] [decimal](18, 2) NULL,
	[Porez] [decimal](18, 2) NULL,
	[PioNaTeretZaposlenog] [decimal](18, 2) NULL,
	[ZdravstvoNaTeretZaposlenog] [decimal](18, 2) NULL,
	[NezaposlenostNaTeretZaposlenog] [decimal](18, 2) NULL,
	[PioNaTeretPoslodavca] [decimal](18, 2) NULL,
	[ZdravstvoNaTeretPoslodavca] [decimal](18, 2) NULL,
	[BrutoIznos] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Radnik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Radnik] ON 

INSERT [dbo].[Radnik] ([Id], [Ime], [Prezime], [Adresa], [NetoIznos], [Porez], [PioNaTeretZaposlenog], [ZdravstvoNaTeretZaposlenog], [NezaposlenostNaTeretZaposlenog], [PioNaTeretPoslodavca], [ZdravstvoNaTeretPoslodavca], [BrutoIznos]) VALUES (1, N'Ana', N'Anic', N'Adresa 123', CAST(85000.00 AS Decimal(18, 2)), CAST(6670.00 AS Decimal(18, 2)), CAST(9338.00 AS Decimal(18, 2)), CAST(3435.05 AS Decimal(18, 2)), CAST(500.25 AS Decimal(18, 2)), CAST(7670.50 AS Decimal(18, 2)), CAST(3435.05 AS Decimal(18, 2)), CAST(116048.85 AS Decimal(18, 2)))
INSERT [dbo].[Radnik] ([Id], [Ime], [Prezime], [Adresa], [NetoIznos], [Porez], [PioNaTeretZaposlenog], [ZdravstvoNaTeretZaposlenog], [NezaposlenostNaTeretZaposlenog], [PioNaTeretPoslodavca], [ZdravstvoNaTeretPoslodavca], [BrutoIznos]) VALUES (3, N'Marko', N'Markovic', N'Adresa 123', CAST(87000.00 AS Decimal(18, 2)), CAST(6870.00 AS Decimal(18, 2)), CAST(9618.00 AS Decimal(18, 2)), CAST(3538.05 AS Decimal(18, 2)), CAST(515.25 AS Decimal(18, 2)), CAST(7900.50 AS Decimal(18, 2)), CAST(3538.05 AS Decimal(18, 2)), CAST(118979.85 AS Decimal(18, 2)))
INSERT [dbo].[Radnik] ([Id], [Ime], [Prezime], [Adresa], [NetoIznos], [Porez], [PioNaTeretZaposlenog], [ZdravstvoNaTeretZaposlenog], [NezaposlenostNaTeretZaposlenog], [PioNaTeretPoslodavca], [ZdravstvoNaTeretPoslodavca], [BrutoIznos]) VALUES (5, N'Janko', N'Jankovic', N'Adresa 34', CAST(90000.00 AS Decimal(18, 2)), CAST(7170.00 AS Decimal(18, 2)), CAST(10038.00 AS Decimal(18, 2)), CAST(3692.55 AS Decimal(18, 2)), CAST(537.75 AS Decimal(18, 2)), CAST(8245.50 AS Decimal(18, 2)), CAST(3692.55 AS Decimal(18, 2)), CAST(123376.35 AS Decimal(18, 2)))
INSERT [dbo].[Radnik] ([Id], [Ime], [Prezime], [Adresa], [NetoIznos], [Porez], [PioNaTeretZaposlenog], [ZdravstvoNaTeretZaposlenog], [NezaposlenostNaTeretZaposlenog], [PioNaTeretPoslodavca], [ZdravstvoNaTeretPoslodavca], [BrutoIznos]) VALUES (6, N'Petar', N'Peric', N'Adresa 3', CAST(90000.00 AS Decimal(18, 2)), CAST(7170.00 AS Decimal(18, 2)), CAST(10038.00 AS Decimal(18, 2)), CAST(3692.55 AS Decimal(18, 2)), CAST(537.75 AS Decimal(18, 2)), CAST(8245.50 AS Decimal(18, 2)), CAST(3692.55 AS Decimal(18, 2)), CAST(123376.35 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Radnik] OFF
GO
/****** Object:  StoredProcedure [dbo].[uspDodavanjeRadnika]    Script Date: 10/25/2021 12:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[uspDodavanjeRadnika]
@Ime nvarchar(50),
@Prezime  nvarchar(50),
@Adresa  nvarchar(50),
@NetoIznos decimal (18,2)

AS
BEGIN
Insert into Radnik(Ime, Prezime, Adresa, NetoIznos)
values(@Ime, @Prezime, @Adresa, @NetoIznos)


UPDATE [Radnik]
set
	Porez= (NetoIznos-18300) * 0.1
	
UPDATE [Radnik]
set
	PioNaTeretZaposlenog= (NetoIznos-18300) *0.14
	
UPDATE [Radnik]
set
	ZdravstvoNaTeretZaposlenog= (NetoIznos-18300) *0.0515
	
UPDATE [Radnik]
set
	NezaposlenostNaTeretZaposlenog= (NetoIznos-18300) *0.0075
	
UPDATE [Radnik]
set
	PioNaTeretPoslodavca= (NetoIznos-18300) *0.115
	
UPDATE [Radnik]
set
	ZdravstvoNaTeretPoslodavca= (NetoIznos-18300) *0.0515
	
UPDATE [Radnik]
set
	BrutoIznos= NetoIznos + Porez+ PioNaTeretZaposlenog+ZdravstvoNaTeretZaposlenog+NezaposlenostNaTeretZaposlenog+PioNaTeretPoslodavca+ZdravstvoNaTeretPoslodavca
	

END
GO
/****** Object:  StoredProcedure [dbo].[uspIzbrisatiRadnika]    Script Date: 10/25/2021 12:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspIzbrisatiRadnika]
@Id Int
AS
begin
DELETE Radnik where Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[uspIzmeni]    Script Date: 10/25/2021 12:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[uspIzmeni]
@Id int,
@Ime nvarchar(50),
@Prezime  nvarchar(50),
@Adresa  nvarchar(50),
@NetoIznos decimal (18,2)

AS
BEGIN
UPDATE [Radnik]
set
	Ime=@Ime,
	Prezime=@Prezime,
	Adresa=@Adresa,
	NetoIznos=@NetoIznos
	Where [Id]=@Id;
UPDATE [Radnik]
set
	Porez= (NetoIznos-18300) * 0.1
	Where [Id]=@Id;
UPDATE [Radnik]
set
	PioNaTeretZaposlenog= (NetoIznos-18300) *0.14
	Where [Id]=@Id;
UPDATE [Radnik]
set
	ZdravstvoNaTeretZaposlenog= (NetoIznos-18300) *0.0515
	Where [Id]=@Id;
UPDATE [Radnik]
set
	NezaposlenostNaTeretZaposlenog= (NetoIznos-18300) *0.0075
	Where [Id]=@Id;
UPDATE [Radnik]
set
	PioNaTeretPoslodavca= (NetoIznos-18300) *0.115
	Where [Id]=@Id;
UPDATE [Radnik]
set
	ZdravstvoNaTeretPoslodavca= (NetoIznos-18300) *0.0515
	Where [Id]=@Id;
UPDATE [Radnik]
set
	BrutoIznos= NetoIznos + Porez+ PioNaTeretZaposlenog+ZdravstvoNaTeretZaposlenog+NezaposlenostNaTeretZaposlenog+PioNaTeretPoslodavca+ZdravstvoNaTeretPoslodavca
	Where [Id]=@Id;

END
GO
/****** Object:  StoredProcedure [dbo].[uspPrikaziRadnika]    Script Date: 10/25/2021 12:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspPrikaziRadnika]
@Id Int
AS
begin
select * from Radnik where Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[uspPrikaziSve]    Script Date: 10/25/2021 12:01:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspPrikaziSve]
AS
begin
select * from Radnik
end
GO
USE [master]
GO
ALTER DATABASE [RadniciBaza] SET  READ_WRITE 
GO
