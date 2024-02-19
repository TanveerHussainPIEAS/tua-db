
CREATE TABLE [dbo].[WishListProducts]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,
	[ProductId]				INT				Not NULL,
	[UserId]			INT					NULL,		
	[Deleted]				BIT				CONSTRAINT [DF_WishListProducts_IsDeleted] DEFAULT (0) NOT NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_WishListProducts_Created] DEFAULT (GETUTCDATE()) NOT NULL,
	CONSTRAINT [PK_WishListProducts] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_WishListProducts_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]),
	CONSTRAINT [FK_WishListProducts_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]),	
)
