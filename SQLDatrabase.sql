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

INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Kniha neklidu','Fernando Pessoa' , 'Pavla Lidmilov�' , 1999)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Pros�m Stru�n�','V�clav Havel' , '' , 2006)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Ve sp�rech Alja�ky','Jan Kopka' , '' , 2007)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Sv�t v�erej�ka','Stefan Zweig' , 'Eva �ervinkov�' , 1999)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Oby�ejn� mu�','Paul Rusesabagina Tom Zoellner' , 'Jan Sl�dek' , 2007)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Kantos Hiperionu','Dan Simonns' , 'Jan Pavl�k David Z�lesk� Tom� Z�bransk�' , 2010)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Tenk� led','Jana Vyb�ralov� Jan Hl�vka' , '' , 2014)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( '2001: Vesm�rn� odysea / Rajsk� font�ny','Arthur Charles Clarke' , 'Vladim�r Svoboda' , 1982)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Temn� les','Liou Cch-sin' , 'Ale� Drobek' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Spadla klec','Sara Shepard' , 'Michaela Kr�slov�' , 2015)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Takov� norm�ln� rodinka','Fan Vav�incov�' , '' , 1991)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Koruna z tr�vy','Colleen McCullough' , 'Vladim�r Svoboda' , 1995)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Zlobiv� holka','Mario Vargas Llosa' , 'Vladim�r Medek' , 2007)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Zulejka otev�r� o�i','Guzel Jachuna' , 'Jakub �ediv�' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( '�vi potichu, br�cho','Ivona B�ezinov�' , '' , 2016)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Retrospektiva','Josef Sn�tiv�' , '' , 2013)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Sonety','William Shakespeare' , 'Martin Hilsk�' , 2018)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( '�jed� ','Jana Orlov�' , '' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Vzduchch','�t�p�n Rus�n' , '' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Milk and Honey','Rupi Kaur' , '' , 2017)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Kytice','Karel Jarom�r Erben' , '' , 2011)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Pir�t a l�k�rn�k','Robert Louis Stevenson' , 'Petr Putna' , 2013)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Balady','Ludmila Podjavorinsk�' , '' , 1998)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Le�ansk� jesli�ky','Franti�ek Hrub�n' , '' , 2018)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'T�i balady o bludn� l�sce','Lubom�r Jaro� ' , '' , 2012)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Romeo a Julie','William Shakespeare' , 'Martin Hilsk�' , 2015)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Hamlet','William Shakespeare' , 'Martin Hilsk�' , 2014)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Kr�l Lear','William Shakespeare' , 'Martin Hilsk�' , 2016)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Lakomec','Moliere' , 'Vladim�r Mike�' , 2003)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Jak se v�m l�b�','William Shakespeare' , 'Martin Hilsk�' , 2005)
INSERT INTO [Library].[dbo].[Books] ([Name], [Author], [Translation], [Publication_date]) VALUES( 'Ve�er t��kr�lov�','William Shakespeare' , 'Josef V�clav Sl�dek' , 2011)
