/*
Script de implementación para BDMercamax

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "BDMercamax"
:setvar DefaultFilePrefix "BDMercamax"
:setvar DefaultDataPath "C:\Users\Mi Dany\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\Mi Dany\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave a458fda3-968b-43db-8235-17fe1019b135 se ha omitido; no se cambiará el nombre del elemento [dbo].[Proveedor].[Id] (SqlSimpleColumn) a nit';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 958645af-465b-4de4-95cd-86b9860cef46, 265013bf-e1da-4829-910f-008d54fae243 se ha omitido; no se cambiará el nombre del elemento [dbo].[Proveedor].[nombre] (SqlSimpleColumn) a nombre_proveedor';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave fb28fcf2-da3c-4b9c-916b-f31be4888f0e se ha omitido; no se cambiará el nombre del elemento [dbo].[Proveedor].[email_] (SqlSimpleColumn) a email_proveedor';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 56b21af3-3610-41d4-b96c-188aff7a1c0b, 39f54b57-da46-467a-9c6c-7e8581677980 se ha omitido; no se cambiará el nombre del elemento [dbo].[Producto].[Id] (SqlSimpleColumn) a id_producto';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave f0feb67e-bd79-4196-b267-4cac90b42783 se ha omitido; no se cambiará el nombre del elemento [dbo].[Tipo_producto].[Id] (SqlSimpleColumn) a id_tipo';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave cdfee6b1-718a-4a93-9abd-65386b4826d9 se ha omitido; no se cambiará el nombre del elemento [dbo].[Tipo_producto].[precio] (SqlSimpleColumn) a perecedero';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 5ca08210-afc8-45a9-9086-92e13e0125e7, fe8a0415-a095-464e-98d7-3e40b3a5d591 se ha omitido; no se cambiará el nombre del elemento [dbo].[Personal].[Id] (SqlSimpleColumn) a cc_personal';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave ea0fc619-c9f5-4c28-8a1f-82d80b21cf09 se ha omitido; no se cambiará el nombre del elemento [dbo].[Personal].[dirrecional] (SqlSimpleColumn) a dirrecion_personal';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 9b5fe1e9-a158-423e-b08c-fa6e861a01f8, 864e914c-3fcc-485a-b9bd-895d74297ca4 se ha omitido; no se cambiará el nombre del elemento [dbo].[Personal].[fecha] (SqlSimpleColumn) a fecha_nacimiento_personal';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 628eed4f-77bb-45f9-9b6c-81e04aba165b se ha omitido; no se cambiará el nombre del elemento [dbo].[Personal].[passwork] (SqlSimpleColumn) a password';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave aceb4a69-f1e3-428e-9485-53e474c0ebe7 se ha omitido; no se cambiará el nombre del elemento [dbo].[Cliente].[Id] (SqlSimpleColumn) a cc_cliente';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 2055a93d-7a26-4a74-9543-39a3acc02ebf se ha omitido; no se cambiará el nombre del elemento [dbo].[Cliente].[email] (SqlSimpleColumn) a email_cliente';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 5ec8569c-40d2-41bc-ae56-44a3e4618474 se ha omitido; no se cambiará el nombre del elemento [dbo].[Cliente].[fecha_] (SqlSimpleColumn) a fecha_nacimiento_cliente';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave cc84c8d9-085a-4565-9840-a99f04c29f35 se ha omitido; no se cambiará el nombre del elemento [dbo].[facturacion].[Id] (SqlSimpleColumn) a id_factura';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 6d8459f3-ac2a-43e6-98cd-fc88954032ee se ha omitido; no se cambiará el nombre del elemento [dbo].[facturacion].[monto_] (SqlSimpleColumn) a monto_iva';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 0a1b12cf-2bda-4aaa-9cc1-d42b319f846e se ha omitido; no se cambiará el nombre del elemento [dbo].[facturacion].[cc] (SqlSimpleColumn) a cc_cliente';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave f22bf31c-f4c9-4b03-a4a4-7a30ddafed9a se ha omitido; no se cambiará el nombre del elemento [dbo].[Venta].[Id] (SqlSimpleColumn) a id_venta';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave d4e9add1-b015-43cf-a444-cb697023536a se ha omitido; no se cambiará el nombre del elemento [dbo].[Lugar_stock].[Id] (SqlSimpleColumn) a id_lugar';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 06d5400f-0e1e-438c-a265-3f4cb23bd196 se ha omitido; no se cambiará el nombre del elemento [dbo].[Lugar_stock].[unique] (SqlSimpleColumn) a borde_producto';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave a0f19b2a-7f10-43b0-868d-f00050918da9 se ha omitido; no se cambiará el nombre del elemento [dbo].[Lugar_stock].[cantidad_gondole] (SqlSimpleColumn) a cantidad_gondola';


GO
PRINT N'La operación de refactorización Cambiar nombre con la clave 5f00faf6-82fd-49c8-a819-84e3fe5afc4e se ha omitido; no se cambiará el nombre del elemento [dbo].[Lugar_stock].[seccion_] (SqlSimpleColumn) a seccion_bodega';


GO
PRINT N'Creando Tabla [dbo].[Lugar_stock]...';


GO
CREATE TABLE [dbo].[Lugar_stock] (
    [id_lugar]         INT            NOT NULL,
    [borde_producto]   INT            NOT NULL,
    [catidad_bodega]   NVARCHAR (MAX) NOT NULL,
    [cantidad_gondola] NVARCHAR (MAX) NOT NULL,
    [seccion_bodega]   NVARCHAR (MAX) NOT NULL,
    [seccion_gondola]  NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([id_lugar] ASC),
    UNIQUE NONCLUSTERED ([borde_producto] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Personal]...';


GO
CREATE TABLE [dbo].[Personal] (
    [cc_personal]               INT            NOT NULL,
    [nombre_apellido_personal]  NVARCHAR (MAX) NOT NULL,
    [cargo]                     NVARCHAR (MAX) NOT NULL,
    [telefono_personal]         NVARCHAR (MAX) NOT NULL,
    [email_personal]            NVARCHAR (MAX) NOT NULL,
    [dirrecion_personal]        NVARCHAR (MAX) NOT NULL,
    [fecha_nacimiento_personal] DATE           NOT NULL,
    [password]                  NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([cc_personal] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Producto]...';


GO
CREATE TABLE [dbo].[Producto] (
    [id_producto]       INT             NOT NULL,
    [nombre_producto]   NVARCHAR (MAX)  NOT NULL,
    [fecha_llegada]     DATE            NOT NULL,
    [fecha_vencimiento] DATE            NOT NULL,
    [barcode]           NVARCHAR (MAX)  NOT NULL,
    [precio]            DECIMAL (18, 2) NOT NULL,
    [nit]               INT             NOT NULL,
    [id_tipo]           INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([id_producto] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Proveedor]...';


GO
CREATE TABLE [dbo].[Proveedor] (
    [nit]                 INT            NOT NULL,
    [nombre_proveedor]    NVARCHAR (MAX) NOT NULL,
    [telefono]            INT            NOT NULL,
    [email_proveedor]     NVARCHAR (MAX) NOT NULL,
    [direccion_proveedor] NVARCHAR (MAX) NOT NULL,
    [agente_ventas]       NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([nit] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Tipo_producto]...';


GO
CREATE TABLE [dbo].[Tipo_producto] (
    [id_tipo]    INT            NOT NULL,
    [categoria]  NVARCHAR (MAX) NOT NULL,
    [perecedero] NVARCHAR (MAX) NOT NULL,
    [iva]        INT            NOT NULL,
    [puntos]     INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([id_tipo] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Venta]...';


GO
CREATE TABLE [dbo].[Venta] (
    [id_venta]         INT NOT NULL,
    [barcode_producto] INT NOT NULL,
    [cantidad]         INT NOT NULL,
    [id_factura]       INT NOT NULL,
    PRIMARY KEY CLUSTERED ([id_venta] ASC),
    UNIQUE NONCLUSTERED ([barcode_producto] ASC)
);


GO
PRINT N'Creando Clave externa [dbo].[FK_Producto_ToTable]...';


GO
ALTER TABLE [dbo].[Producto] WITH NOCHECK
    ADD CONSTRAINT [FK_Producto_ToTable] FOREIGN KEY ([nit]) REFERENCES [dbo].[Proveedor] ([nit]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Producto_ToTable_1]...';


GO
ALTER TABLE [dbo].[Producto] WITH NOCHECK
    ADD CONSTRAINT [FK_Producto_ToTable_1] FOREIGN KEY ([id_tipo]) REFERENCES [dbo].[Tipo_producto] ([id_tipo]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Venta_ToTable]...';


GO
ALTER TABLE [dbo].[Venta] WITH NOCHECK
    ADD CONSTRAINT [FK_Venta_ToTable] FOREIGN KEY ([id_factura]) REFERENCES [dbo].[facturacion] ([id_factura]);


GO
PRINT N'Creando Clave externa [dbo].[FK_facturacion_ToTable]...';


GO
ALTER TABLE [dbo].[facturacion] WITH NOCHECK
    ADD CONSTRAINT [FK_facturacion_ToTable] FOREIGN KEY ([cc_cliente]) REFERENCES [dbo].[Cliente] ([cc_cliente]);


GO
PRINT N'Creando Clave externa [dbo].[FK_facturacion_ToTable_1]...';


GO
ALTER TABLE [dbo].[facturacion] WITH NOCHECK
    ADD CONSTRAINT [FK_facturacion_ToTable_1] FOREIGN KEY ([cc_personal]) REFERENCES [dbo].[Personal] ([cc_personal]);


GO
PRINT N'Creando Clave externa [dbo].[FK_facturacion_ToTable_2]...';


GO
ALTER TABLE [dbo].[facturacion] WITH NOCHECK
    ADD CONSTRAINT [FK_facturacion_ToTable_2] FOREIGN KEY ([id_venta]) REFERENCES [dbo].[Venta] ([id_venta]);


GO
-- Paso de refactorización para actualizar el servidor de destino con los registros de transacciones implementadas

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a458fda3-968b-43db-8235-17fe1019b135')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a458fda3-968b-43db-8235-17fe1019b135')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '958645af-465b-4de4-95cd-86b9860cef46')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('958645af-465b-4de4-95cd-86b9860cef46')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '265013bf-e1da-4829-910f-008d54fae243')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('265013bf-e1da-4829-910f-008d54fae243')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fb28fcf2-da3c-4b9c-916b-f31be4888f0e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fb28fcf2-da3c-4b9c-916b-f31be4888f0e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '56b21af3-3610-41d4-b96c-188aff7a1c0b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('56b21af3-3610-41d4-b96c-188aff7a1c0b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f0feb67e-bd79-4196-b267-4cac90b42783')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f0feb67e-bd79-4196-b267-4cac90b42783')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'cdfee6b1-718a-4a93-9abd-65386b4826d9')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('cdfee6b1-718a-4a93-9abd-65386b4826d9')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '39f54b57-da46-467a-9c6c-7e8581677980')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('39f54b57-da46-467a-9c6c-7e8581677980')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '5ca08210-afc8-45a9-9086-92e13e0125e7')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('5ca08210-afc8-45a9-9086-92e13e0125e7')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fe8a0415-a095-464e-98d7-3e40b3a5d591')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fe8a0415-a095-464e-98d7-3e40b3a5d591')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ea0fc619-c9f5-4c28-8a1f-82d80b21cf09')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ea0fc619-c9f5-4c28-8a1f-82d80b21cf09')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9b5fe1e9-a158-423e-b08c-fa6e861a01f8')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9b5fe1e9-a158-423e-b08c-fa6e861a01f8')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '864e914c-3fcc-485a-b9bd-895d74297ca4')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('864e914c-3fcc-485a-b9bd-895d74297ca4')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '628eed4f-77bb-45f9-9b6c-81e04aba165b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('628eed4f-77bb-45f9-9b6c-81e04aba165b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'aceb4a69-f1e3-428e-9485-53e474c0ebe7')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('aceb4a69-f1e3-428e-9485-53e474c0ebe7')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '2055a93d-7a26-4a74-9543-39a3acc02ebf')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('2055a93d-7a26-4a74-9543-39a3acc02ebf')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '5ec8569c-40d2-41bc-ae56-44a3e4618474')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('5ec8569c-40d2-41bc-ae56-44a3e4618474')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'cc84c8d9-085a-4565-9840-a99f04c29f35')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('cc84c8d9-085a-4565-9840-a99f04c29f35')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '6d8459f3-ac2a-43e6-98cd-fc88954032ee')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('6d8459f3-ac2a-43e6-98cd-fc88954032ee')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '0a1b12cf-2bda-4aaa-9cc1-d42b319f846e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('0a1b12cf-2bda-4aaa-9cc1-d42b319f846e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f22bf31c-f4c9-4b03-a4a4-7a30ddafed9a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f22bf31c-f4c9-4b03-a4a4-7a30ddafed9a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd4e9add1-b015-43cf-a444-cb697023536a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d4e9add1-b015-43cf-a444-cb697023536a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '06d5400f-0e1e-438c-a265-3f4cb23bd196')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('06d5400f-0e1e-438c-a265-3f4cb23bd196')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a0f19b2a-7f10-43b0-868d-f00050918da9')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a0f19b2a-7f10-43b0-868d-f00050918da9')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '5f00faf6-82fd-49c8-a819-84e3fe5afc4e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('5f00faf6-82fd-49c8-a819-84e3fe5afc4e')

GO

GO
PRINT N'Comprobando los datos existentes con las restricciones recién creadas';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Producto] WITH CHECK CHECK CONSTRAINT [FK_Producto_ToTable];

ALTER TABLE [dbo].[Producto] WITH CHECK CHECK CONSTRAINT [FK_Producto_ToTable_1];

ALTER TABLE [dbo].[Venta] WITH CHECK CHECK CONSTRAINT [FK_Venta_ToTable];

ALTER TABLE [dbo].[facturacion] WITH CHECK CHECK CONSTRAINT [FK_facturacion_ToTable];

ALTER TABLE [dbo].[facturacion] WITH CHECK CHECK CONSTRAINT [FK_facturacion_ToTable_1];

ALTER TABLE [dbo].[facturacion] WITH CHECK CHECK CONSTRAINT [FK_facturacion_ToTable_2];


GO
PRINT N'Actualización completada.';


GO
