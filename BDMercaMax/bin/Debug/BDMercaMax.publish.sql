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
USE [master];


GO

IF (DB_ID(N'$(DatabaseName)') IS NOT NULL) 
BEGIN
    ALTER DATABASE [$(DatabaseName)]
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [$(DatabaseName)];
END

GO
PRINT N'Creando la base de datos $(DatabaseName)...'
GO
CREATE DATABASE [$(DatabaseName)]
    ON 
    PRIMARY(NAME = [$(DatabaseName)], FILENAME = N'$(DefaultDataPath)$(DefaultFilePrefix)_Primary.mdf')
    LOG ON (NAME = [$(DatabaseName)_log], FILENAME = N'$(DefaultLogPath)$(DefaultFilePrefix)_Primary.ldf') COLLATE SQL_Latin1_General_CP1_CI_AS
GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CLOSE OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                NUMERIC_ROUNDABORT OFF,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL,
                CURSOR_CLOSE_ON_COMMIT OFF,
                AUTO_CREATE_STATISTICS ON,
                AUTO_SHRINK OFF,
                AUTO_UPDATE_STATISTICS ON,
                RECURSIVE_TRIGGERS OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ALLOW_SNAPSHOT_ISOLATION OFF;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET READ_COMMITTED_SNAPSHOT OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_UPDATE_STATISTICS_ASYNC OFF,
                PAGE_VERIFY NONE,
                DATE_CORRELATION_OPTIMIZATION OFF,
                DISABLE_BROKER,
                PARAMETERIZATION SIMPLE,
                SUPPLEMENTAL_LOGGING OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET TRUSTWORTHY OFF,
        DB_CHAINING OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'No se puede modificar la configuración de la base de datos. Debe ser un administrador del sistema para poder aplicar esta configuración.';
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET HONOR_BROKER_PRIORITY OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'No se puede modificar la configuración de la base de datos. Debe ser un administrador del sistema para poder aplicar esta configuración.';
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET FILESTREAM(NON_TRANSACTED_ACCESS = OFF),
                CONTAINMENT = NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF),
                MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = OFF,
                DELAYED_DURABILITY = DISABLED 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_PLANS_PER_QUERY = 200, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE = OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
    END


GO
IF fulltextserviceproperty(N'IsFulltextInstalled') = 1
    EXECUTE sp_fulltext_database 'enable';


GO
PRINT N'Creando Tabla [dbo].[Cliente]...';


GO
CREATE TABLE [dbo].[Cliente] (
    [cc_cliente]               INT            NOT NULL,
    [nombre_apellido_cliente]  NVARCHAR (MAX) NULL,
    [telefono_cliente]         NVARCHAR (MAX) NULL,
    [email_cliente]            NVARCHAR (MAX) NULL,
    [direccion_cliente]        NVARCHAR (MAX) NULL,
    [fecha_nacimiento_cliente] DATE           NULL,
    [puntos_acumulados]        INT            NULL,
    PRIMARY KEY CLUSTERED ([cc_cliente] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[facturacion]...';


GO
CREATE TABLE [dbo].[facturacion] (
    [id_factura]  INT             NOT NULL,
    [monto_total] DECIMAL (18, 2) NOT NULL,
    [fecha]       DATE            NOT NULL,
    [monto_iva]   DECIMAL (18, 2) NOT NULL,
    [cc_cliente]  INT             NOT NULL,
    [cc_personal] INT             NOT NULL,
    [id_venta]    INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([id_factura] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Lugar_stock]...';


GO
CREATE TABLE [dbo].[Lugar_stock] (
    [id_lugar]         INT            NOT NULL,
    [borde_producto]   NVARCHAR (MAX) NOT NULL,
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
    [id_venta]         INT            NOT NULL,
    [barcode_producto] NVARCHAR (MAX) NOT NULL,
    [cantidad]         INT            NOT NULL,
    [id_factura]       INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([id_venta] ASC),
    UNIQUE NONCLUSTERED ([barcode_producto] ASC)
);


GO
PRINT N'Creando Clave externa [dbo].[FK_facturacion_ToTable]...';


GO
ALTER TABLE [dbo].[facturacion]
    ADD CONSTRAINT [FK_facturacion_ToTable] FOREIGN KEY ([cc_cliente]) REFERENCES [dbo].[Cliente] ([cc_cliente]);


GO
PRINT N'Creando Clave externa [dbo].[FK_facturacion_ToTable_1]...';


GO
ALTER TABLE [dbo].[facturacion]
    ADD CONSTRAINT [FK_facturacion_ToTable_1] FOREIGN KEY ([cc_personal]) REFERENCES [dbo].[Personal] ([cc_personal]);


GO
PRINT N'Creando Clave externa [dbo].[FK_facturacion_ToTable_2]...';


GO
ALTER TABLE [dbo].[facturacion]
    ADD CONSTRAINT [FK_facturacion_ToTable_2] FOREIGN KEY ([id_venta]) REFERENCES [dbo].[Venta] ([id_venta]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Producto_ToTable]...';


GO
ALTER TABLE [dbo].[Producto]
    ADD CONSTRAINT [FK_Producto_ToTable] FOREIGN KEY ([nit]) REFERENCES [dbo].[Proveedor] ([nit]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Producto_ToTable_1]...';


GO
ALTER TABLE [dbo].[Producto]
    ADD CONSTRAINT [FK_Producto_ToTable_1] FOREIGN KEY ([id_tipo]) REFERENCES [dbo].[Tipo_producto] ([id_tipo]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Venta_ToTable]...';


GO
ALTER TABLE [dbo].[Venta]
    ADD CONSTRAINT [FK_Venta_ToTable] FOREIGN KEY ([id_factura]) REFERENCES [dbo].[facturacion] ([id_factura]);


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
DECLARE @VarDecimalSupported AS BIT;

SELECT @VarDecimalSupported = 0;

IF ((ServerProperty(N'EngineEdition') = 3)
    AND (((@@microsoftversion / power(2, 24) = 9)
          AND (@@microsoftversion & 0xffff >= 3024))
         OR ((@@microsoftversion / power(2, 24) = 10)
             AND (@@microsoftversion & 0xffff >= 1600))))
    SELECT @VarDecimalSupported = 1;

IF (@VarDecimalSupported > 0)
    BEGIN
        EXECUTE sp_db_vardecimal_storage_format N'$(DatabaseName)', 'ON';
    END


GO
PRINT N'Actualización completada.';


GO
