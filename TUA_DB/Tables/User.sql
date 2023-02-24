﻿CREATE TABLE [dbo].[User]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,
	[TypeId]				INT				Not NULL,
	[PermissionId]			INT				Not NULL,
	[Name]					NVARCHAR(300)	NOT NULL,
	[Email]					NVARCHAR(300)	NOT NULL,
	[UserName]				NVARCHAR(300)	NOT NULL,
	[City]					NVARCHAR(300)	NOT NULL,	
	[ZipCode]				NVARCHAR(300)	NOT NULL,
	[State]					NVARCHAR(300)	NOT NULL,
	[Country]				NVARCHAR(300)	NOT NULL,
	[Address]				NVARCHAR(MAX)	NOT NULL,
	[Password]				NVARCHAR(MAX)	NOT NULL,
	[PhoneNumber]			NVARCHAR(300)	NULL,
	[MobileNumber]			NVARCHAR(300)	NOT NULL,
	[Deleted]				BIT				CONSTRAINT [DF_User_IsDeleted] DEFAULT (0) NOT NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_User_Created] DEFAULT (GETUTCDATE()) NOT NULL,	
	[ModifiedDate]			DATETIMEOFFSET 	CONSTRAINT [DF_User_Modified] DEFAULT (GETUTCDATE()) NOT NULL,
	[DeletedDate]			DATETIMEOFFSET	NULL,
    [DeletedBy]				INT   NULL,
    [ModifiedBy]			INT   NULL,
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_User_UserType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[UserType] ([Id]),
	CONSTRAINT [FK_User_Permission] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[UserPermission] ([Id]),
	--CONSTRAINT [FK_Activity_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([ID]),
	--CONSTRAINT [FK_Activity_Country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([ID]),
	--CONSTRAINT [FK_Activity_DeletedBy_User] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[Users] ([Id]),
 --   CONSTRAINT [FK_Activity_CreatedBy_User] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([Id]),
 --   CONSTRAINT [FK_Activity_ModifiedBy_User] FOREIGN KEY ([ModifiedBy]) REFERENCES [dbo].[Users] ([Id]),
	--CONSTRAINT [FK_Activity_ActivityType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[ActivityType] ([Id]),
)
