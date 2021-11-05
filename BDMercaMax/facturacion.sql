CREATE TABLE [dbo].[facturacion]
(
	[id_factura] INT NOT NULL PRIMARY KEY, 
    [monto_total] DECIMAL(18, 2) NOT NULL, 
    [fecha] DATE NOT NULL, 
    [monto_iva] DECIMAL(18, 2) NOT NULL, 
    [cc_cliente] INT NOT NULL, 
    [cc_personal] INT NOT NULL, 
    [id_venta] INT NOT NULL, 
    CONSTRAINT [FK_facturacion_ToTable] FOREIGN KEY ([cc_cliente]) REFERENCES [cliente]([cc_cliente]), 
    CONSTRAINT [FK_facturacion_ToTable_1] FOREIGN KEY ([cc_personal]) REFERENCES [personal]([cc_personal]), 
    CONSTRAINT [FK_facturacion_ToTable_2] FOREIGN KEY ([id_venta]) REFERENCES [venta]([id_venta])
)
