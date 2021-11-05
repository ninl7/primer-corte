CREATE TABLE [dbo].[Producto]
(
	[id_producto] INT NOT NULL PRIMARY KEY, 
    [nombre_producto] NVARCHAR(MAX) NOT NULL, 
    [fecha_llegada] DATE NOT NULL, 
    [fecha_vencimiento] DATE NOT NULL, 
    [barcode] NVARCHAR(MAX) NOT NULL, 
    [precio] DECIMAL(18, 2) NOT NULL, 
    [nit] INT NOT NULL, 
    [id_tipo] INT NOT NULL, 
    CONSTRAINT [FK_Producto_ToTable] FOREIGN KEY ([nit]) REFERENCES [proveedor]([nit]), 
    CONSTRAINT [FK_Producto_ToTable_1] FOREIGN KEY ([id_tipo]) REFERENCES [tipo_producto]([id_tipo])
)
