CREATE TABLE [dbo].[Countries] (
    [Id]                    INT             IDENTITY (1, 1) NOT NULL,
    [Name]                  NVARCHAR (50)   NOT NULL,
    [CountryCode]           NVARCHAR (50)   NULL,
    [Lat]                   VARCHAR (500)   NULL,
    [Lang]                  VARCHAR (500)   NULL,
    [Deleted]               BIT             CONSTRAINT [DF_Deleted] DEFAULT ((0))   NOT NULL,
    CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Id] ASC),
)