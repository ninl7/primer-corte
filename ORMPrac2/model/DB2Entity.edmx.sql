
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/14/2021 20:21:13
-- Generated from EDMX file: C:\Users\Mi Dany\source\repos\practica1\ORMPrac2\model\DB2Entity.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DB2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AGENTS'
CREATE TABLE [dbo].[AGENTS] (
    [AGENT_CODE] int IDENTITY(1,1) NOT NULL,
    [AGENT_NAME] nvarchar(max)  NOT NULL,
    [WORKING_AREA] nvarchar(max)  NOT NULL,
    [COMMISSION] decimal(18,3)  NOT NULL,
    [PHONE_NO] nvarchar(max)  NOT NULL,
    [COUNTRY] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'COSTOMER'
CREATE TABLE [dbo].[COSTOMER] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CUST_CODE] nvarchar(max)  NOT NULL,
    [COST_NAME] nvarchar(max)  NOT NULL,
    [COST_CITY] nvarchar(max)  NOT NULL,
    [WORKING_AREA] nvarchar(max)  NOT NULL,
    [COST_COUSTRY] nvarchar(max)  NOT NULL,
    [GRADE] int  NOT NULL,
    [OPENING_AMT] decimal(18,3)  NOT NULL,
    [RECEIVE_AMT] decimal(18,3)  NOT NULL,
    [PAYMENT_ATM] decimal(18,3)  NOT NULL,
    [OUSTANDIG_ATM] decimal(18,3)  NOT NULL,
    [PHONE_NO] nvarchar(max)  NOT NULL,
    [AGENT_CODE] nvarchar(max)  NOT NULL,
    [AGENTSAGENT_CODE] int  NOT NULL,
    [ORDERSId] int  NOT NULL
);
GO

-- Creating table 'ORDERS'
CREATE TABLE [dbo].[ORDERS] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ORD_NUM] decimal(18,3)  NOT NULL,
    [ORD_AMOUNT] decimal(18,3)  NOT NULL,
    [AVANCE_AMOUNT] decimal(18,3)  NOT NULL,
    [CUST_CODE] nvarchar(max)  NOT NULL,
    [AGENT_CODE] nvarchar(max)  NOT NULL,
    [ORD_DESCRIPTION] nvarchar(max)  NOT NULL,
    [AGENTSAGENT_CODE] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AGENT_CODE] in table 'AGENTS'
ALTER TABLE [dbo].[AGENTS]
ADD CONSTRAINT [PK_AGENTS]
    PRIMARY KEY CLUSTERED ([AGENT_CODE] ASC);
GO

-- Creating primary key on [Id] in table 'COSTOMER'
ALTER TABLE [dbo].[COSTOMER]
ADD CONSTRAINT [PK_COSTOMER]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ORDERS'
ALTER TABLE [dbo].[ORDERS]
ADD CONSTRAINT [PK_ORDERS]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AGENTSAGENT_CODE] in table 'COSTOMER'
ALTER TABLE [dbo].[COSTOMER]
ADD CONSTRAINT [FK_AGENTSCOSTOMER]
    FOREIGN KEY ([AGENTSAGENT_CODE])
    REFERENCES [dbo].[AGENTS]
        ([AGENT_CODE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AGENTSCOSTOMER'
CREATE INDEX [IX_FK_AGENTSCOSTOMER]
ON [dbo].[COSTOMER]
    ([AGENTSAGENT_CODE]);
GO

-- Creating foreign key on [AGENTSAGENT_CODE] in table 'ORDERS'
ALTER TABLE [dbo].[ORDERS]
ADD CONSTRAINT [FK_AGENTSORDERS]
    FOREIGN KEY ([AGENTSAGENT_CODE])
    REFERENCES [dbo].[AGENTS]
        ([AGENT_CODE])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AGENTSORDERS'
CREATE INDEX [IX_FK_AGENTSORDERS]
ON [dbo].[ORDERS]
    ([AGENTSAGENT_CODE]);
GO

-- Creating foreign key on [ORDERSId] in table 'COSTOMER'
ALTER TABLE [dbo].[COSTOMER]
ADD CONSTRAINT [FK_ORDERSCOSTOMER]
    FOREIGN KEY ([ORDERSId])
    REFERENCES [dbo].[ORDERS]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ORDERSCOSTOMER'
CREATE INDEX [IX_FK_ORDERSCOSTOMER]
ON [dbo].[COSTOMER]
    ([ORDERSId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------