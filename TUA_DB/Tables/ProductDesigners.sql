

CREATE TABLE [dbo].[ProductDesigners]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,	
	[Name]					NVARCHAR(300)	NOT NULL,
	[Detail]				NVARCHAR(900)	NULL,
	[Deleted]				BIT				CONSTRAINT [DF_ProductDesigners_IsDeleted] DEFAULT (0) NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_ProductDesigners_Created] DEFAULT (GETUTCDATE()) NULL,	
	[ModifiedDate]			DATETIMEOFFSET 	CONSTRAINT [DF_ProductDesigners_Modified] DEFAULT (GETUTCDATE()) NULL,
	[DeletedDate]			DATETIMEOFFSET	NULL,
    [DeletedBy]				INT   NULL,
    [ModifiedBy]			INT   NULL,
	[CreatedBy]				INT   NULL,
	CONSTRAINT [PK_ProductDesigners] PRIMARY KEY CLUSTERED ([ID] ASC),
)

