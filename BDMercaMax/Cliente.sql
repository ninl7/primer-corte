CREATE TABLE [dbo].[Cliente]
(
	[cc_cliente] INT NOT NULL PRIMARY KEY, 
    [nombre_apellido_cliente] NVARCHAR(MAX) NULL, 
    [telefono_cliente] NVARCHAR(MAX) NULL, 
    [email_cliente] NVARCHAR(MAX) NULL, 
    [direccion_cliente] NVARCHAR(MAX) NULL, 
    [fecha_nacimiento_cliente] DATE NULL, 
    [puntos_acumulados] INT NULL
)
