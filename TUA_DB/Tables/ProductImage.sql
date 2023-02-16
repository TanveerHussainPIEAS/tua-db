

CREATE TABLE [dbo].[ProductImage]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,
	[ProductId]					INT				Not NULL,
	[Name]					NVARCHAR(300)	 NULL,
	[Url]					NVARCHAR(300)	 NULL,	
	[Details]				NVARCHAR(MAX)	 NULL,	
	[Deleted]				BIT				CONSTRAINT [DF_ProductImage_IsDeleted] DEFAULT (0) NOT NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_ProductImage_Created] DEFAULT (GETUTCDATE()) NOT NULL,	
	[ModifiedDate]			DATETIMEOFFSET 	CONSTRAINT [DF_ProductImage_Modified] DEFAULT (GETUTCDATE()) NOT NULL,
	[DeletedDate]			DATETIMEOFFSET	NULL,
    [DeletedBy]				INT   NULL,
    [ModifiedBy]			INT   NULL,
	[CreatedBy]				INT   NULL,
	CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_ProductImage_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
)
