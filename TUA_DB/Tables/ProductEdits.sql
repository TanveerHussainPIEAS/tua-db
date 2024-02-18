

CREATE TABLE [dbo].[ProductEdits]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,	
	[Name]					NVARCHAR(300)	NOT NULL,
	[Detail]				NVARCHAR(900)	NULL,
	[ImageUrl]				NVARCHAR(900)	NULL,	
	[Deleted]				BIT				CONSTRAINT [DF_ProductEdits_IsDeleted] DEFAULT (0) NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_ProductEdits_Created] DEFAULT (GETUTCDATE()) NULL,	
	[ModifiedDate]			DATETIMEOFFSET 	CONSTRAINT [DF_ProductEdits_Modified] DEFAULT (GETUTCDATE()) NULL,
	[DeletedDate]			DATETIMEOFFSET	NULL,
    [DeletedBy]				INT   NULL,
    [ModifiedBy]			INT   NULL,
	[CreatedBy]				INT   NULL,
	CONSTRAINT [PK_ProductEdits] PRIMARY KEY CLUSTERED ([ID] ASC),
)

