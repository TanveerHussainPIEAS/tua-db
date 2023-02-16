
CREATE TABLE [dbo].[Product]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,
	[TypeId]					INT				Not NULL,
	[Name]					NVARCHAR(300)	NOT NULL,
	[Code]					NVARCHAR(300)	NOT NULL,	
	[Details]				NVARCHAR(MAX)	NOT NULL,	
	[Deleted]				BIT				CONSTRAINT [DF_Product_IsDeleted] DEFAULT (0) NOT NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_Product_Created] DEFAULT (GETUTCDATE()) NOT NULL,	
	[ModifiedDate]			DATETIMEOFFSET 	CONSTRAINT [DF_Product_Modified] DEFAULT (GETUTCDATE()) NOT NULL,
	[DeletedDate]			DATETIMEOFFSET	NULL,
    [DeletedBy]				INT   NULL,
    [ModifiedBy]			INT   NULL,
	[CreatedBy]				INT   NULL,
	CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Product_ProductType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[ProductType] ([Id]),
	--CONSTRAINT [FK_Activity_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([ID]),
	--CONSTRAINT [FK_Activity_Country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([ID]),
	--CONSTRAINT [FK_Activity_DeletedBy_User] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[Users] ([Id]),
 --   CONSTRAINT [FK_Activity_CreatedBy_User] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[Users] ([Id]),
 --   CONSTRAINT [FK_Activity_ModifiedBy_User] FOREIGN KEY ([ModifiedBy]) REFERENCES [dbo].[Users] ([Id]),
	--CONSTRAINT [FK_Activity_ActivityType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[ActivityType] ([Id]),
)
