CREATE TABLE [dbo].[UserType]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,	
	[Type]					NVARCHAR(300)	NOT NULL,
	[Deleted]				BIT				CONSTRAINT [DF_UserType_IsDeleted] DEFAULT (0) NOT NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_UserType_Created] DEFAULT (GETUTCDATE()) NOT NULL,	
	[ModifiedDate]			DATETIMEOFFSET 	CONSTRAINT [DF_UserType_Modified] DEFAULT (GETUTCDATE()) NOT NULL,
	[DeletedDate]			DATETIMEOFFSET	NULL,
    [DeletedBy]				INT   NULL,
    [ModifiedBy]			INT   NULL,
	CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED ([ID] ASC),
	--CONSTRAINT [FK_Activity_ActivityStatus] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[ActivityStatus] ([ID]),
	--CONSTRAINT [FK_Activity_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([ID]),
	--CONSTRAINT [FK_Activity_Country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([ID]),
	--CONSTRAINT [FK_Activity_DeletedBy_User] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[Users] ([Id]),
 --   CONSTRAINT [FK_Activity_CreatedBy_User] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([Id]),
 --   CONSTRAINT [FK_Activity_ModifiedBy_User] FOREIGN KEY ([ModifiedBy]) REFERENCES [dbo].[Users] ([Id]),
	--CONSTRAINT [FK_Activity_ActivityType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[ActivityType] ([Id]),
)
