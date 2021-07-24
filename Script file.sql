
CREATE TABLE dbo.ProductMaster
	(
	ProductId          BIGINT IDENTITY NOT NULL,
	ProductCode        VARCHAR(50) NULL,
	ProductName        VARCHAR (200),
	ProductDescription NVARCHAR (Max) ,
	ProductPrice       decimal(11,2),
	IsActive           BIT CONSTRAINT DF_ProductMaster_IsActive DEFAULT ((1)), 
	CreatedDate        DATETIME CONSTRAINT DF_ProductMaster_CreatedDate DEFAULT ((getdate())), 
	CreatedBy          INT,
	ModifiedDate       DATETIME NULL,
	ModifiedBy         INT NULL,
	CONSTRAINT PK_ProductMaster_ProductId PRIMARY KEY (ProductId)
	)
GO


