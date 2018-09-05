USE [master]
GO

CREATE DATABASE [Library]
GO

USE [Library]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Books](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[Author] [nchar](20) NULL,
	[Translation] [nchar](20) NULL,
	[Publication_date] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Kniha neklidu','Fernando Pessoa' , 'Pavla Lidmilová' , 1999)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Prosím Struènì','Václav Havel' , '' , 2006)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Ve spárech Aljašky','Jan Kopka' , '' , 2007)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Svìt vèerejška','Stefan Zweig' , 'Eva Èervinková' , 1999)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Obyèejný muž','Paul Rusesabagina Tom Zoellner' , 'Jan Sládek' , 2007)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Kantos Hiperionu','Dan Simonns' , 'Jan Pavlík David Záleský Tomáš Zábranský' , 2010)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Tenký led','Jana Vybíralová Jan Hlávka' , '' , 2014)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( '2001: Vesmírná odysea / Rajské fontány','Arthur Charles Clarke' , 'Vladimír Svoboda' , 1982)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Temný les','Liou Cch-sin' , 'Aleš Drobek' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Spadla klec','Sara Shepard' , 'Michaela Krýslová' , 2015)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Taková normální rodinka','Fan Vavøincová' , '' , 1991)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Koruna z trávy','Colleen McCullough' , 'Vladimír Svoboda' , 1995)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Zlobivá holka','Mario Vargas Llosa' , 'Vladimír Medek' , 2007)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Zulejka otevírá oèi','Guzel Jachuna' , 'Jakub Šedivý' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Øvi potichu, brácho','Ivona Bøezinová' , '' , 2016)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Retrospektiva','Josef Snìtivý' , '' , 2013)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Sonety','William Shakespeare' , 'Martin Hilský' , 2018)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Újedì ','Jana Orlová' , '' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Vzduchch','Štìpán Rusín' , '' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Milk and Honey','Rupi Kaur' , '' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Kytice','Karel Jaromír Erben' , '' , 2011)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Pirát a lékárník','Robert Louis Stevenson' , 'Petr Putna' , 2013)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Balady','Ludmila Podjavorinská' , '' , 1998)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Lešanské jeslièky','František Hrubín' , '' , 2018)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Tøi balady o bludné lásce','Lubomír Jaroš ' , '' , 2012)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Romeo a Julie','William Shakespeare' , 'Martin Hilský' , 2015)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Hamlet','William Shakespeare' , 'Martin Hilský' , 2014)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Král Lear','William Shakespeare' , 'Martin Hilský' , 2016)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Lakomec','Moliere' , 'Vladimír Mikeš' , 2003)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Jak se vám líbí','William Shakespeare' , 'Martin Hilský' , 2005)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Veèer tøíkrálový','William Shakespeare' , 'Josef Václav Sládek' , 2011)
