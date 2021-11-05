CREATE TABLE [dbo].[Tipo_producto]
(
	[id_tipo] INT NOT NULL PRIMARY KEY, 
    [categoria] NVARCHAR(MAX) NOT NULL, 
    [perecedero] NVARCHAR(MAX) NOT NULL, 
    [iva] INT NOT NULL, 
    [puntos] INT NOT NULL
)
