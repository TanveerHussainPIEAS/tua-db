﻿
CREATE TABLE [dbo].[UserPermission]
(
	[Id]					INT				IDENTITY(1,1) NOT NULL,
	[UserId]				INT				Not NULL,	
	[CanAddProduct]			BIT				CONSTRAINT [DF_UserPermission_CanAddProduct] DEFAULT (0) NOT NULL,
	[CanEditProduct]		BIT				CONSTRAINT [DF_UserPermission_CanEditProduct] DEFAULT (0) NOT NULL,
	[CanViewProduct]		BIT				CONSTRAINT [DF_UserPermission_CanViewProduct] DEFAULT (0) NOT NULL,
	[CanDeleteProduct]		BIT				CONSTRAINT [DF_UserPermission_CanDeleteProduct] DEFAULT (0) NOT NULL,
	[CanAddOrder]			BIT				CONSTRAINT [DF_UserPermission_CanAddOrder] DEFAULT (0) NOT NULL,
	[CanEditOrder]			BIT				CONSTRAINT [DF_UserPermission_CanEditOrder] DEFAULT (0) NOT NULL,
	[CanViewOrder]			BIT				CONSTRAINT [DF_UserPermission_CanViewOrder] DEFAULT (0) NOT NULL,
	[CanDeleteOrder]		BIT				CONSTRAINT [DF_UserPermission_CanDeleteOrder] DEFAULT (0) NOT NULL,
	[CanAddUser]			BIT				CONSTRAINT [DF_UserPermission_CanAddUser] DEFAULT (0) NOT NULL,
	[CanEditUser]			BIT				CONSTRAINT [DF_UserPermission_CanEditUser] DEFAULT (0) NOT NULL,
	[CanViewUser]			BIT				CONSTRAINT [DF_UserPermission_CanViewUser] DEFAULT (0) NOT NULL,
	[CanDeleteUser]			BIT				CONSTRAINT [DF_UserPermission_CanDeleteUser] DEFAULT (0) NOT NULL,
	[Deleted]				BIT				CONSTRAINT [DF_UserPermission_IsDeleted] DEFAULT (0) NOT NULL,
	[CreatedDate]			DATETIMEOFFSET	CONSTRAINT [DF_UserPermission_Created] DEFAULT (GETUTCDATE()) NOT NULL,	
	[ModifiedDate]			DATETIMEOFFSET 	CONSTRAINT [DF_UserPermission_Modified] DEFAULT (GETUTCDATE()) NOT NULL,
	[DeletedDate]			DATETIMEOFFSET	NULL,
    [DeletedBy]				INT   NULL,
    [CreatedBy]				INT   NULL,
	[ModifiedBy]			INT   NULL,
	CONSTRAINT [PK_UserPermission] PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Activity_DeletedBy_User] FOREIGN KEY ([DeletedBy]) REFERENCES [dbo].[User] ([Id]),
    CONSTRAINT [FK_Activity_CreatedBy_User] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User] ([Id]),
	CONSTRAINT [FK_Activity_ModifiedBy_User] FOREIGN KEY ([ModifiedBy]) REFERENCES [dbo].[User] ([Id]),
)

