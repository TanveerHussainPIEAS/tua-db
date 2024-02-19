
CREATE TABLE [dbo].[CartProducts]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,
	[ProductId]				INT				Not NULL,
	[UserId]				INT				NULL,		
	[Deleted]				BIT				CONSTRAINT [DF_CartProducts_IsDeleted] DEFAULT (0) NOT NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_CartProducts_Created] DEFAULT (GETUTCDATE()) NOT NULL,
	CONSTRAINT [PK_CartProducts] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_CartProducts_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]),
	CONSTRAINT [FK_CartProducts_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]),	
)
