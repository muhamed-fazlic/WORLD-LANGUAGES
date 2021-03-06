USE [master]
GO
/****** Object:  Database [DB]    Script Date: 8. 5. 2021. 10:59:58 ******/
CREATE DATABASE [DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB] SET RECOVERY FULL 
GO
ALTER DATABASE [DB] SET  MULTI_USER 
GO
ALTER DATABASE [DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB', N'ON'
GO
ALTER DATABASE [DB] SET QUERY_STORE = OFF
GO
USE [DB]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 8. 5. 2021. 10:59:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (1, N'Acholi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (2, N'Afrikaans')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (3, N'Akan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (4, N'Albanian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (5, N'Amharic')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (6, N'Arabic')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (7, N'Ashante')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (8, N'Asl')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (9, N'Assyrian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (10, N'Azerbaijani')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (11, N'Azeri')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (12, N'Bajuni')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (13, N'Basque')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (14, N'Behdini')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (15, N'Belorussian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (16, N'Bengali')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (17, N'Berber')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (18, N'Bosnian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (19, N'Bravanese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (20, N'Bulgarian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (21, N'Burmese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (22, N'Cakchiquel')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (23, N'Cambodian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (24, N'Cantonese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (25, N'Catalan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (26, N'Chaldean')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (27, N'Chamorro')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (28, N'Chao-chow')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (29, N'Chavacano')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (30, N'Chin')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (31, N'Chuukese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (32, N'Cree')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (33, N'Croatian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (34, N'Czech')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (35, N'Dakota')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (36, N'Danish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (37, N'Dari')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (38, N'Dinka')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (39, N'Diula')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (40, N'Dutch')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (41, N'Edo')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (42, N'English')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (43, N'Estonian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (44, N'Ewe')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (45, N'Fante')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (46, N'Farsi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (47, N'Fijian Hindi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (48, N'Finnish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (49, N'Flemish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (50, N'French')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (51, N'French Canadian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (52, N'Fukienese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (53, N'Fula')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (54, N'Fulani')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (55, N'Fuzhou')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (56, N'Ga')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (57, N'Gaddang')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (58, N'Gaelic')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (59, N'Gaelic-irish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (60, N'Gaelic-scottish
')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (61, N'Georgian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (62, N'German')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (63, N'Gorani')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (64, N'Greek')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (65, N'Gujarati')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (66, N'Haitian Creole')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (67, N'Hakka')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (68, N'Hakka-chinese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (69, N'Hausa')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (70, N'Hebrew')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (71, N'Hindi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (72, N'Hmong')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (73, N'Hungarian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (74, N'Ibanag')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (75, N'Ibo')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (76, N'Icelandic')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (77, N'Igbo')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (78, N'Ilocano')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (79, N'Indonesian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (80, N'Inuktitut')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (81, N'Italian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (82, N'Jakartanese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (83, N'Japanese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (84, N'Javanese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (85, N'Kanjobal')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (86, N'Karen')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (87, N'Karenni')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (88, N'Kashmiri')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (89, N'Kazakh')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (90, N'Kikuyu')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (91, N'Kinyarwanda')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (92, N'Kirundi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (93, N'Korean')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (94, N'Kosovan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (95, N'Kotokoli')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (96, N'Krio')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (97, N'Kurdish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (98, N'Kurmanji')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (99, N'Kyrgyz')
GO
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (100, N'Lakota')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (101, N'Laotian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (102, N'Latvian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (103, N'Lingala')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (104, N'Lithuanian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (105, N'Luganda')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (106, N'Luo')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (107, N'Maay')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (108, N'Macedonian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (109, N'Malay')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (110, N'Malayalam')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (111, N'Maltese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (112, N'Mandarin')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (113, N'Mandingo')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (114, N'Mandinka')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (115, N'Marathi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (116, N'Marshallese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (117, N'Mien')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (118, N'Mina')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (119, N'Mirpuri')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (120, N'Mixteco')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (121, N'Moldavan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (122, N'Mongolian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (123, N'Montenegrin')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (124, N'Navajo')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (125, N'Neapolitan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (126, N'Nepali')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (127, N'Nigerian Pidgin')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (128, N'Norwegian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (129, N'Oromo')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (130, N'Pahari')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (131, N'Papago')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (132, N'Papiamento')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (133, N'Pashto')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (134, N'Patois')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (135, N'Pidgin English')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (136, N'Polish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (137, N'Portug.creole')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (138, N'Portuguese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (139, N'Pothwari')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (140, N'Pulaar')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (141, N'Punjabi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (142, N'Putian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (143, N'Quichua')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (144, N'Romanian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (145, N'Russian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (146, N'Samoan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (147, N'Serbian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (148, N'Shanghainese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (149, N'Shona')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (150, N'Sichuan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (151, N'Sicilian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (152, N'Sinhalese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (153, N'Slovak')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (154, N'Somali')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (155, N'Sorani')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (156, N'Spanish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (157, N'Sudanese Arabic')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (158, N'Sundanese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (159, N'Susu')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (160, N'Swahili')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (161, N'Swedish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (162, N'Sylhetti')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (163, N'Tagalog')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (164, N'Taiwanese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (165, N'Tajik')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (166, N'Tamil')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (167, N'Telugu')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (168, N'Thai')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (169, N'Tibetan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (170, N'Tigrinya')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (171, N'Toishanese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (172, N'Tongan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (173, N'Toucouleur')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (174, N'Trique')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (175, N'Tshiluba')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (176, N'Turkish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (177, N'Twi')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (178, N'Ukrainian')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (179, N'Urdu')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (180, N'Uyghur')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (181, N'Uzbek')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (182, N'Vietnamese')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (183, N'Visayan')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (184, N'Welsh')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (185, N'Wolof')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (186, N'Yiddish')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (187, N'Yoruba')
INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (188, N'Yupik')
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
USE [master]
GO
ALTER DATABASE [DB] SET  READ_WRITE 
GO
