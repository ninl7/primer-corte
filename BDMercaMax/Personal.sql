﻿CREATE TABLE [dbo].[Personal]
(
	[cc_personal] INT NOT NULL PRIMARY KEY, 
    [nombre_apellido_personal] NVARCHAR(MAX) NOT NULL, 
    [cargo] NVARCHAR(MAX) NOT NULL, 
    [telefono_personal] NVARCHAR(MAX) NOT NULL, 
    [email_personal] NVARCHAR(MAX) NOT NULL, 
    [dirrecion_personal] NVARCHAR(MAX) NOT NULL, 
    [fecha_nacimiento_personal] DATE NOT NULL, 
    [password] NVARCHAR(MAX) NOT NULL
)
