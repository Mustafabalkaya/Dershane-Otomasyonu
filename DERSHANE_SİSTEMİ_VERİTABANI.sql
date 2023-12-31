USE [mustafa]
GO
/****** Object:  StoredProcedure [dbo].[Alan]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Alan] (
@alan varchar(50)
)as
select OgrAd,OgrSoyad from Ogrenci where OgrAlanid like @alan+'%'
GO
/****** Object:  StoredProcedure [dbo].[deneme]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deneme]
AS
INSERT INTO Borclarr(Ogrid, OgrAd, OgrSoyad)
SELECT Ogrid,OgrAd,OgrSoyad
FROM Ogrenci
GO
/****** Object:  StoredProcedure [dbo].[liste]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[liste]
AS
SELECT * FROM ogrenci

EXEC liste
GO
/****** Object:  StoredProcedure [dbo].[mustafa]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mustafa]
AS
INSERT INTO Borclarr(Ogrid, OgrAd, OgrSoyad)
SELECT Ogrid,OgrAd,OgrSoyad
FROM Ogrenci


GO
/****** Object:  StoredProcedure [dbo].[musti]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[musti] (
@alan varchar(50)
)
as
select OgrAd,OgrSoyad from Ogrenci where OgrAlanid like @alan+'%'
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Yoneticiid] [int] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](20) NULL,
	[YoneticiSifre] [varchar](20) NULL,
	[AdminRol] [varchar](20) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Yoneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alanlar]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alanlar](
	[Alanid] [int] IDENTITY(1,1) NOT NULL,
	[AlanAd] [varchar](20) NULL,
 CONSTRAINT [PK_Alanlar] PRIMARY KEY CLUSTERED 
(
	[Alanid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Borclarr]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Borclarr](
	[Ogrid] [int] NOT NULL,
	[OgrAd] [varchar](20) NULL,
	[OgrSoyad] [varchar](20) NULL,
	[OgrKalanBorc] [varchar](20) NULL CONSTRAINT [DF_Borclarr_OgrKalanBorc]  DEFAULT ((10000)),
 CONSTRAINT [PK_Borclarr] PRIMARY KEY CLUSTERED 
(
	[Ogrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Giderler]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giderler](
	[Odemeid] [int] IDENTITY(1,1) NOT NULL,
	[Elektrik] [int] NULL,
	[Su] [int] NULL,
	[Dogalgaz] [int] NULL,
	[internet] [int] NULL,
	[Gida] [int] NULL,
	[Personel] [int] NULL,
	[Diger] [int] NULL,
 CONSTRAINT [PK_Giderler] PRIMARY KEY CLUSTERED 
(
	[Odemeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kasa]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kasa](
	[Odemeid] [int] NOT NULL,
	[OdemekMiktar] [varchar](20) NULL,
	[OdemeAy] [varchar](20) NULL,
	[ogrodemeid] [int] NULL,
 CONSTRAINT [PK_Kasa] PRIMARY KEY CLUSTERED 
(
	[Odemeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[Ogrid] [int] IDENTITY(1,1) NOT NULL,
	[OgrAd] [varchar](20) NULL,
	[OgrSoyad] [varchar](20) NULL,
	[OgrTc] [varchar](20) NULL,
	[OgrTelefon] [varchar](20) NULL,
	[OgrDogum] [varchar](20) NULL,
	[OgrMail] [varchar](20) NULL,
	[OgrVeliAdSoyad] [varchar](20) NULL,
	[OgrVeliTelefon] [varchar](20) NULL,
	[OgrVeliAdres] [varchar](20) NULL,
	[OgrAlanid] [int] NULL,
	[OgrSinifid] [int] NULL,
	[ogrkontenjan] [int] NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[Ogrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personel](
	[Personelid] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAdSoyad] [varchar](20) NULL,
	[PersonelDepartman] [varchar](20) NULL,
 CONSTRAINT [PK_Personel] PRIMARY KEY CLUSTERED 
(
	[Personelid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RehberOgretmen]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RehberOgretmen](
	[rehberlikid] [int] NOT NULL,
	[rehberlikad] [varchar](50) NULL,
	[ogrrehberlikid] [int] NULL,
 CONSTRAINT [PK_RehberOgretmen] PRIMARY KEY CLUSTERED 
(
	[rehberlikid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Siniflar]    Script Date: 1.8.2022 04:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Siniflar](
	[Sinifid] [int] IDENTITY(1,1) NOT NULL,
	[SinifNo] [varchar](20) NULL,
	[SinifKapasite] [varchar](20) NULL,
	[SinifDurum] [int] NULL,
 CONSTRAINT [PK_Siniflar] PRIMARY KEY CLUSTERED 
(
	[Sinifid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Borclarr]  WITH CHECK ADD  CONSTRAINT [FK_Borclarr_Ogrenci1] FOREIGN KEY([Ogrid])
REFERENCES [dbo].[Ogrenci] ([Ogrid])
GO
ALTER TABLE [dbo].[Borclarr] CHECK CONSTRAINT [FK_Borclarr_Ogrenci1]
GO
ALTER TABLE [dbo].[Giderler]  WITH CHECK ADD  CONSTRAINT [FK_Giderler_Personel] FOREIGN KEY([Personel])
REFERENCES [dbo].[Personel] ([Personelid])
GO
ALTER TABLE [dbo].[Giderler] CHECK CONSTRAINT [FK_Giderler_Personel]
GO
ALTER TABLE [dbo].[Kasa]  WITH CHECK ADD  CONSTRAINT [FK_Kasa_Ogrenci] FOREIGN KEY([ogrodemeid])
REFERENCES [dbo].[Ogrenci] ([Ogrid])
GO
ALTER TABLE [dbo].[Kasa] CHECK CONSTRAINT [FK_Kasa_Ogrenci]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Alanlar] FOREIGN KEY([OgrAlanid])
REFERENCES [dbo].[Alanlar] ([Alanid])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Alanlar]
GO
ALTER TABLE [dbo].[Ogrenci]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenci_Siniflar] FOREIGN KEY([OgrSinifid])
REFERENCES [dbo].[Siniflar] ([Sinifid])
GO
ALTER TABLE [dbo].[Ogrenci] CHECK CONSTRAINT [FK_Ogrenci_Siniflar]
GO
ALTER TABLE [dbo].[RehberOgretmen]  WITH CHECK ADD  CONSTRAINT [FK_RehberOgretmen_Ogrenci] FOREIGN KEY([ogrrehberlikid])
REFERENCES [dbo].[Ogrenci] ([Ogrid])
GO
ALTER TABLE [dbo].[RehberOgretmen] CHECK CONSTRAINT [FK_RehberOgretmen_Ogrenci]
GO
