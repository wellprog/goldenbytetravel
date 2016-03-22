
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/21/2016 19:57:55
-- Generated from EDMX file: C:\Users\guest.TULA\Documents\github\goldenbytetravel\WebSite\SiteDataBase\EntityDB\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [GoldenDataBase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UsersEntity1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_groupSet] DROP CONSTRAINT [FK_UsersEntity1];
GO
IF OBJECT_ID(N'[dbo].[FK_Entity1Group]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GroupSet] DROP CONSTRAINT [FK_Entity1Group];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersUsers_hisRights]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_hisRightsSet] DROP CONSTRAINT [FK_UsersUsers_hisRights];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_hisRightsUserRights]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserRightsSet] DROP CONSTRAINT [FK_Users_hisRightsUserRights];
GO
IF OBJECT_ID(N'[dbo].[FK_UserRightsGroup_UserRights]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Group_UserRightsSet] DROP CONSTRAINT [FK_UserRightsGroup_UserRights];
GO
IF OBJECT_ID(N'[dbo].[FK_GroupGroup_UserRights]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Group_UserRightsSet] DROP CONSTRAINT [FK_GroupGroup_UserRights];
GO
IF OBJECT_ID(N'[dbo].[FK_UsersUserFields]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserFieldsSet] DROP CONSTRAINT [FK_UsersUserFields];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UsersSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UsersSet];
GO
IF OBJECT_ID(N'[dbo].[GroupSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GroupSet];
GO
IF OBJECT_ID(N'[dbo].[UserRightsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserRightsSet];
GO
IF OBJECT_ID(N'[dbo].[Users_groupSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_groupSet];
GO
IF OBJECT_ID(N'[dbo].[Users_hisRightsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_hisRightsSet];
GO
IF OBJECT_ID(N'[dbo].[Group_UserRightsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Group_UserRightsSet];
GO
IF OBJECT_ID(N'[dbo].[UserFieldsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserFieldsSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UsersSet'
CREATE TABLE [dbo].[UsersSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Login] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GroupSet'
CREATE TABLE [dbo].[GroupSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ID] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Discription] nvarchar(max)  NOT NULL,
    [Entity1_Id] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserRightsSet'
CREATE TABLE [dbo].[UserRightsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GUID] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [DESCRIPTIO] nvarchar(max)  NOT NULL,
    [Users_hisRights_Id] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Users_groupSet'
CREATE TABLE [dbo].[Users_groupSet] (
    [GID] nvarchar(max)  NOT NULL,
    [UID] nvarchar(max)  NOT NULL,
    [Id] nvarchar(max)  NOT NULL,
    [Users_Id] int  NOT NULL
);
GO

-- Creating table 'Users_hisRightsSet'
CREATE TABLE [dbo].[Users_hisRightsSet] (
    [GID] nvarchar(max)  NOT NULL,
    [UID] nvarchar(max)  NOT NULL,
    [Id] nvarchar(max)  NOT NULL,
    [Users_Id] int  NOT NULL
);
GO

-- Creating table 'Group_UserRightsSet'
CREATE TABLE [dbo].[Group_UserRightsSet] (
    [GID] nvarchar(max)  NOT NULL,
    [UID] nvarchar(max)  NOT NULL,
    [Id] nvarchar(max)  NOT NULL,
    [UserRights_Id] int  NOT NULL,
    [Group_Id] int  NOT NULL
);
GO

-- Creating table 'UserFieldsSet'
CREATE TABLE [dbo].[UserFieldsSet] (
    [Name] nvarchar(max)  NOT NULL,
    [GUID] nvarchar(max)  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [TXT] nvarchar(max)  NOT NULL,
    [UID] nvarchar(max)  NOT NULL,
    [ID] nvarchar(max)  NOT NULL,
    [Users_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UsersSet'
ALTER TABLE [dbo].[UsersSet]
ADD CONSTRAINT [PK_UsersSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GroupSet'
ALTER TABLE [dbo].[GroupSet]
ADD CONSTRAINT [PK_GroupSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserRightsSet'
ALTER TABLE [dbo].[UserRightsSet]
ADD CONSTRAINT [PK_UserRightsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_groupSet'
ALTER TABLE [dbo].[Users_groupSet]
ADD CONSTRAINT [PK_Users_groupSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_hisRightsSet'
ALTER TABLE [dbo].[Users_hisRightsSet]
ADD CONSTRAINT [PK_Users_hisRightsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Group_UserRightsSet'
ALTER TABLE [dbo].[Group_UserRightsSet]
ADD CONSTRAINT [PK_Group_UserRightsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'UserFieldsSet'
ALTER TABLE [dbo].[UserFieldsSet]
ADD CONSTRAINT [PK_UserFieldsSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Users_Id] in table 'Users_groupSet'
ALTER TABLE [dbo].[Users_groupSet]
ADD CONSTRAINT [FK_UsersEntity1]
    FOREIGN KEY ([Users_Id])
    REFERENCES [dbo].[UsersSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersEntity1'
CREATE INDEX [IX_FK_UsersEntity1]
ON [dbo].[Users_groupSet]
    ([Users_Id]);
GO

-- Creating foreign key on [Entity1_Id] in table 'GroupSet'
ALTER TABLE [dbo].[GroupSet]
ADD CONSTRAINT [FK_Entity1Group]
    FOREIGN KEY ([Entity1_Id])
    REFERENCES [dbo].[Users_groupSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Group'
CREATE INDEX [IX_FK_Entity1Group]
ON [dbo].[GroupSet]
    ([Entity1_Id]);
GO

-- Creating foreign key on [Users_Id] in table 'Users_hisRightsSet'
ALTER TABLE [dbo].[Users_hisRightsSet]
ADD CONSTRAINT [FK_UsersUsers_hisRights]
    FOREIGN KEY ([Users_Id])
    REFERENCES [dbo].[UsersSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersUsers_hisRights'
CREATE INDEX [IX_FK_UsersUsers_hisRights]
ON [dbo].[Users_hisRightsSet]
    ([Users_Id]);
GO

-- Creating foreign key on [Users_hisRights_Id] in table 'UserRightsSet'
ALTER TABLE [dbo].[UserRightsSet]
ADD CONSTRAINT [FK_Users_hisRightsUserRights]
    FOREIGN KEY ([Users_hisRights_Id])
    REFERENCES [dbo].[Users_hisRightsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_hisRightsUserRights'
CREATE INDEX [IX_FK_Users_hisRightsUserRights]
ON [dbo].[UserRightsSet]
    ([Users_hisRights_Id]);
GO

-- Creating foreign key on [UserRights_Id] in table 'Group_UserRightsSet'
ALTER TABLE [dbo].[Group_UserRightsSet]
ADD CONSTRAINT [FK_UserRightsGroup_UserRights]
    FOREIGN KEY ([UserRights_Id])
    REFERENCES [dbo].[UserRightsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserRightsGroup_UserRights'
CREATE INDEX [IX_FK_UserRightsGroup_UserRights]
ON [dbo].[Group_UserRightsSet]
    ([UserRights_Id]);
GO

-- Creating foreign key on [Group_Id] in table 'Group_UserRightsSet'
ALTER TABLE [dbo].[Group_UserRightsSet]
ADD CONSTRAINT [FK_GroupGroup_UserRights]
    FOREIGN KEY ([Group_Id])
    REFERENCES [dbo].[GroupSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GroupGroup_UserRights'
CREATE INDEX [IX_FK_GroupGroup_UserRights]
ON [dbo].[Group_UserRightsSet]
    ([Group_Id]);
GO

-- Creating foreign key on [Users_Id] in table 'UserFieldsSet'
ALTER TABLE [dbo].[UserFieldsSet]
ADD CONSTRAINT [FK_UsersUserFields]
    FOREIGN KEY ([Users_Id])
    REFERENCES [dbo].[UsersSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersUserFields'
CREATE INDEX [IX_FK_UsersUserFields]
ON [dbo].[UserFieldsSet]
    ([Users_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------