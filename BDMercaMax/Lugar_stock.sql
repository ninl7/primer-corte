CREATE TABLE [dbo].[Lugar_stock]
(
	[id_lugar] INT NOT NULL PRIMARY KEY, 
    [borde_producto] INT NOT NULL  UNIQUE , 
    [catidad_bodega] NVARCHAR(MAX) NOT NULL, 
    [cantidad_gondola] NVARCHAR(MAX) NOT NULL, 
    [seccion_bodega] NVARCHAR(MAX) NOT NULL, 
    [seccion_gondola] NVARCHAR(MAX) NOT NULL
)
