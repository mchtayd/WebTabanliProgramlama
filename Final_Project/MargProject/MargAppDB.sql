USE [master]
GO
/****** Object:  Database [MargAppDB]    Script Date: 5.01.2023 09:11:20 ******/
CREATE DATABASE [MargAppDB]

GO
ALTER DATABASE [MargAppDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MargAppDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MargAppDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MargAppDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MargAppDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MargAppDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MargAppDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MargAppDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MargAppDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MargAppDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MargAppDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MargAppDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MargAppDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MargAppDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MargAppDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MargAppDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MargAppDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MargAppDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MargAppDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MargAppDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MargAppDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MargAppDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MargAppDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MargAppDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MargAppDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MargAppDB] SET  MULTI_USER 
GO
ALTER DATABASE [MargAppDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MargAppDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MargAppDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MargAppDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MargAppDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MargAppDB', N'ON'
GO
ALTER DATABASE [MargAppDB] SET QUERY_STORE = OFF
GO
USE [MargAppDB]
GO
/****** Object:  User [ETO]    Script Date: 5.01.2023 09:11:20 ******/

/****** Object:  Table [dbo].[DOKUMANLAR]    Script Date: 5.01.2023 09:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOKUMANLAR](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DokumanNo] [varchar](50) NULL,
	[DokumanTanimi] [varchar](550) NULL,
	[YayinlamaTarihi] [datetime] NULL,
 CONSTRAINT [PK_DOKUMANLAR] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGINLER]    Script Date: 5.01.2023 09:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGINLER](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sicil] [varchar](20) NULL,
	[Sifre] [varchar](50) NULL,
 CONSTRAINT [PK_LOGINLER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONELLER]    Script Date: 5.01.2023 09:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONELLER](
	[Sicil] [varchar](20) NOT NULL,
	[AdSoyad] [varchar](150) NULL,
	[Tc] [char](11) NULL,
	[DogumTarihi] [date] NULL,
	[DogumYeri] [varchar](75) NULL,
	[Telefon] [varchar](25) NULL,
	[IkametAdresi] [varchar](500) NULL,
	[Mezuniyet] [varchar](50) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_PERSONELLER] PRIMARY KEY CLUSTERED 
(
	[Sicil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOGINLER] ON 

INSERT [dbo].[LOGINLER] ([Id], [Sicil], [Sifre]) VALUES (1, N'1', N'12345')
INSERT [dbo].[LOGINLER] ([Id], [Sicil], [Sifre]) VALUES (2, N'2', N'12345')
INSERT [dbo].[LOGINLER] ([Id], [Sicil], [Sifre]) VALUES (3, N'5', N'12345')
SET IDENTITY_INSERT [dbo].[LOGINLER] OFF
GO
INSERT [dbo].[PERSONELLER] ([Sicil], [AdSoyad], [Tc], [DogumTarihi], [DogumYeri], [Telefon], [IkametAdresi], [Mezuniyet], [IsDeleted]) VALUES (N'1', N'Mücahit Aydemir', N'32438453687', CAST(N'1997-01-01' AS Date), N'Malatya', N'05354876547', N'Van Van', N'Üniversite', 0)
INSERT [dbo].[PERSONELLER] ([Sicil], [AdSoyad], [Tc], [DogumTarihi], [DogumYeri], [Telefon], [IkametAdresi], [Mezuniyet], [IsDeleted]) VALUES (N'2', N'Mehmet Şen', N'23578791234', CAST(N'1995-11-10' AS Date), N'Aydın', N'05324687612', N'Bursa', N'Üniversite', 0)
INSERT [dbo].[PERSONELLER] ([Sicil], [AdSoyad], [Tc], [DogumTarihi], [DogumYeri], [Telefon], [IkametAdresi], [Mezuniyet], [IsDeleted]) VALUES (N'4', N'Gizem Şahin', N'86213275612', CAST(N'1998-04-21' AS Date), N'Eskişehir', N'05543213752', N'Eskişehir', N'Üniversite', 0)
INSERT [dbo].[PERSONELLER] ([Sicil], [AdSoyad], [Tc], [DogumTarihi], [DogumYeri], [Telefon], [IkametAdresi], [Mezuniyet], [IsDeleted]) VALUES (N'5', N'Kemal Mert', N'13454675544', CAST(N'2022-12-01' AS Date), N'ANKARA', N'05325468741', N'ISTANBUL', N'Ilkokul', 0)
GO
ALTER TABLE [dbo].[PERSONELLER] ADD  CONSTRAINT [DF_PERSONELLER_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  StoredProcedure [dbo].[DOKUMANLAR_Create]    Script Date: 5.01.2023 09:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DOKUMANLAR_Create] 
	@dokumanNo varchar(50), 
	@dokumanTanimi varchar(550), 
	@yayinlamaTarihi datetime

As
Begin   
 

    Insert Into [MargAppDB].[dbo].[DOKUMANLAR]
		(DokumanNo, DokumanTanimi, YayinlamaTarihi)
	Values
		(@dokumanNo, @dokumanTanimi, @yayinlamaTarihi) 
    
End
GO
/****** Object:  StoredProcedure [dbo].[DOKUMANLAR_Delete]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DOKUMANLAR_Delete] 
	@Id int 
AS
BEGIN
    
    Begin Try
	    DELETE FROM [MargAppDB].[dbo].[DOKUMANLAR]
	    WHERE Id = @Id 

		select CAST(1 as bit) as Result
	End Try
	Begin Catch
		Return ERROR_NUMBER()
	End Catch
END
GO
/****** Object:  StoredProcedure [dbo].[DOKUMANLAR_GetAll]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DOKUMANLAR_GetAll]
	
AS
BEGIN
    
	SELECT Id, DokumanNo, DokumanTanimi, YayinlamaTarihi
	FROM [MargAppDB].[dbo].[DOKUMANLAR]
END
GO
/****** Object:  StoredProcedure [dbo].[DOKUMANLAR_GetSingle]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DOKUMANLAR_GetSingle] 
	@Id int 
AS
BEGIN
    
	SELECT Id, DokumanNo, DokumanTanimi, YayinlamaTarihi
	FROM [MargAppDB].[dbo].[DOKUMANLAR]
	WHERE
		Id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[DOKUMANLAR_Update]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DOKUMANLAR_Update] 
	@id int, 
	@dokumanNo varchar(50), 
	@dokumanTanimi varchar(550), 
	@yayinlamaTarihi datetime 
AS
BEGIN    
	Begin Try
		Update [MargAppDB].[dbo].[DOKUMANLAR]
		Set
			DokumanNo = @dokumanNo, 
			DokumanTanimi = @dokumanTanimi, 
			YayinlamaTarihi = @yayinlamaTarihi 
		Where
			Id = @id
	End Try
		Begin Catch
			Return ERROR_NUMBER()
	End Catch
END
GO
/****** Object:  StoredProcedure [dbo].[LOGINLER_Create]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[LOGINLER_Create] 
	@sicil varchar(20), 
	@sifre varchar(50)

As
Begin   
    
    Insert Into [MargAppDB].[dbo].[LOGINLER]
		(Sicil, Sifre)
	Values
		(@sicil, @sifre) 
    
End
GO
/****** Object:  StoredProcedure [dbo].[LOGINLER_Delete]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[LOGINLER_Delete] 
	@id int 
AS
BEGIN
    
    Begin Try
	    DELETE FROM [MargAppDB].[dbo].[LOGINLER]
	    WHERE Id = @id 

		select CAST(1 as bit) as Result
	End Try
	Begin Catch
		Return ERROR_NUMBER()
	End Catch
END
GO
/****** Object:  StoredProcedure [dbo].[LOGINLER_Delete_BySicil]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LOGINLER_Delete_BySicil](@sicil varchar(20))
as
Begin
	Begin Try
		delete from LOGINLER where Sicil=@sicil
	select CAST(1 as bit) as Result
	End Try
	Begin Catch
			Return ERROR_NUMBER()
	End Catch
End
GO
/****** Object:  StoredProcedure [dbo].[LOGINLER_GetAll]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[LOGINLER_GetAll]
	
AS
BEGIN
    
	SELECT Id, Sicil
	FROM [MargAppDB].[dbo].[LOGINLER]
END
GO
/****** Object:  StoredProcedure [dbo].[LOGINLER_GetSingle]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[LOGINLER_GetSingle] 
	@sicil varchar(20),@sifre varchar(50)
AS
BEGIN
    
	SELECT Id, Sicil
	FROM [MargAppDB].[dbo].[LOGINLER]
	WHERE
		Sicil=@sicil and Sifre=@sifre
END
GO
/****** Object:  StoredProcedure [dbo].[LOGINLER_Update]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[LOGINLER_Update] 
	@id int, 
	@sicil varchar(20), 
	@sifre varchar(50) 
AS
BEGIN    
	Begin Try	                
		Update [MargAppDB].[dbo].[LOGINLER]
		Set
			Sicil = @sicil, 
			Sifre = @sifre 
		Where
			Id = @id
	End Try
		Begin Catch
		Return ERROR_NUMBER()
	End Catch
END
GO
/****** Object:  StoredProcedure [dbo].[PERSONELLER_Create]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[PERSONELLER_Create] 
	@sicil varchar(20),
	@adSoyad varchar(150), 
	@tc char(11), 
	@dogumTarihi date, 
	@dogumYeri varchar(75), 
	@telefon varchar(25), 
	@ikametAdresi varchar(500), 
	@mezuniyet varchar(50)
As
Begin       

    Insert Into [MargAppDB].[dbo].[PERSONELLER]
		(Sicil, AdSoyad, Tc, DogumTarihi, DogumYeri, Telefon, IkametAdresi, Mezuniyet)
	Values
		(@sicil, @adSoyad, @tc, @dogumTarihi, @dogumYeri, @telefon, @ikametAdresi, @mezuniyet) 
       	
	exec LOGINLER_Create @sicil,'12345'
End
GO
/****** Object:  StoredProcedure [dbo].[PERSONELLER_Delete]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[PERSONELLER_Delete] 
	@sicil varchar(20) 
AS
BEGIN
    
    Begin Try
	    Update PERSONELLER set IsDeleted=1
	    WHERE Sicil = @sicil 
		exec LOGINLER_Delete_BySicil @sicil
		
		select CAST(1 as bit) as Result
	End Try
	Begin Catch
		Return ERROR_NUMBER()
	End Catch
END
GO
/****** Object:  StoredProcedure [dbo].[PERSONELLER_GetAll]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[PERSONELLER_GetAll]
	
AS
BEGIN
    
	SELECT Sicil, AdSoyad, Tc, DogumTarihi, DogumYeri, Telefon, IkametAdresi, Mezuniyet
	FROM [MargAppDB].[dbo].[PERSONELLER]
	Where IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[PERSONELLER_GetSingle]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[PERSONELLER_GetSingle] 
	@sicil varchar(20) 
AS
BEGIN
    
	SELECT Sicil, AdSoyad, Tc, DogumTarihi, DogumYeri, Telefon, IkametAdresi, Mezuniyet
	FROM [MargAppDB].[dbo].[PERSONELLER]
	WHERE
		Sicil=@sicil and IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[PERSONELLER_Update]    Script Date: 5.01.2023 09:11:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[PERSONELLER_Update] 
	@sicil varchar(20), 
	@adSoyad varchar(150), 
	@tc char(11), 
	@dogumTarihi date, 
	@dogumYeri varchar(75), 
	@telefon varchar(25), 
	@ikametAdresi varchar(500), 
	@mezuniyet varchar(50) 
AS
BEGIN   
     Begin Try
		Update [MargAppDB].[dbo].[PERSONELLER]
		Set
			AdSoyad = @adSoyad, 
			Tc = @tc, 
			DogumTarihi = @dogumTarihi, 
			DogumYeri = @dogumYeri, 
			Telefon = @telefon, 
			IkametAdresi = @ikametAdresi, 
			Mezuniyet = @mezuniyet 
		Where
			Sicil = @sicil
	End Try
	Begin Catch
		Return ERROR_NUMBER()
	End Catch
END
GO
USE [master]
GO
ALTER DATABASE [MargAppDB] SET  READ_WRITE 
GO
