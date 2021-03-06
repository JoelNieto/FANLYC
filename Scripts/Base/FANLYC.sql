-- SQL Manager Lite for SQL Server 3.8.0.5
-- ---------------------------------------
-- Host      : QUINTERO-PC\DESARROLLO
-- Database  : FANLYC
-- Version   : Microsoft SQL Server  10.50.1617.0


CREATE DATABASE [FANLYC]
ON PRIMARY
  ( NAME = [FANLYC],
    FILENAME = N'C:\Bases\MSSQL10_50.DESARROLLO\MSSQL\DATA\FANLYC.mdf',
    SIZE = 3 MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 1 MB )
LOG ON
  ( NAME = [FANLYC_log],
    FILENAME = N'C:\Bases\MSSQL10_50.DESARROLLO\MSSQL\DATA\FANLYC_log.ldf',
    SIZE = 1 MB,
    MAXSIZE = 2097152 MB,
    FILEGROWTH = 10 % )
COLLATE Modern_Spanish_CI_AS
GO

USE [FANLYC]
GO

--
-- Definition for table Provincias : 
--

CREATE TABLE [dbo].[Provincias] (
  [cod_provincia] int NOT NULL,
  [txt_provincia] varchar(30) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Distritos : 
--

CREATE TABLE [dbo].[Distritos] (
  [cod_provincia] int NOT NULL,
  [cod_distrito] int NOT NULL,
  [txt_distrito] varchar(50) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Corregimientos : 
--

CREATE TABLE [dbo].[Corregimientos] (
  [cod_provincia] int NOT NULL,
  [cod_distrito] int NOT NULL,
  [cod_corregimiento] int NOT NULL,
  [txt_corregimiento] varchar(100) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Diagnosticos : 
--

CREATE TABLE [dbo].[Diagnosticos] (
  [cod_diagnostico] int NOT NULL,
  [txt_desc_diagnostico] varchar(200) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Doctores : 
--

CREATE TABLE [dbo].[Doctores] (
  [cod_doctor] int NOT NULL,
  [txt_nom_doctor] varchar(100) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table EstadosPaciente : 
--

CREATE TABLE [dbo].[EstadosPaciente] (
  [cod_estado] int NOT NULL,
  [txt_desc_estado] varchar(50) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Hospitales : 
--

CREATE TABLE [dbo].[Hospitales] (
  [cod_hospital] int NOT NULL,
  [txt_desc_hospital] varchar(50) COLLATE Modern_Spanish_CI_AS NOT NULL,
  [txt_abrev_hospital] varchar(10) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Meses : 
--

CREATE TABLE [dbo].[Meses] (
  [cod_mes] int NOT NULL,
  [txt_mes] varchar(21) COLLATE Modern_Spanish_CI_AS NOT NULL,
  [cnt_dias] int NOT NULL,
  [sn_bisiesto] int NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Usuarios : 
--

CREATE TABLE [dbo].[Usuarios] (
  [nro_usuario] int NOT NULL,
  [cod_usuario] varchar(10) COLLATE Modern_Spanish_CI_AS NOT NULL,
  [txt_nombre] varchar(50) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_contraseña] varchar(6) COLLATE Modern_Spanish_CI_AS NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesHeader : 
--

CREATE TABLE [dbo].[PacientesHeader] (
  [id_paciente] int NOT NULL,
  [cod_hospital] int NOT NULL,
  [cod_doctor] int NOT NULL,
  [cod_estado_paciente] int NOT NULL,
  [cod_diagnostico] int NULL,
  [txt_nombre] varchar(30) COLLATE Modern_Spanish_CI_AS NOT NULL,
  [txt_nombre2] varchar(31) COLLATE Modern_Spanish_CI_AS NULL,
  [txtapellido] varchar(30) COLLATE Modern_Spanish_CI_AS NOT NULL,
  [txt_apellido2] varchar(30) COLLATE Modern_Spanish_CI_AS NULL,
  [cod_sexo] int NULL,
  [fec_nacimiento] date NOT NULL,
  [edad_anos] int NULL,
  [edad_meses] int NULL,
  [usuario_alta] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesDireccion : 
--

CREATE TABLE [dbo].[PacientesDireccion] (
  [id_paciente] int NOT NULL,
  [ind_direccion] int NOT NULL,
  [cod_provincia] int NULL,
  [cod_distrito] int NULL,
  [cod_corregimiento] int NULL,
  [txt_barrio] varchar(50) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_calle] varchar(50) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_edificio] varchar(50) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_apto] varchar(10) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_direccion_completa] varchar(100) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesDireccionTmp : 
--

CREATE TABLE [dbo].[PacientesDireccionTmp] (
  [id_paciente_tmp] int NOT NULL,
  [ind_direccion] int NULL,
  [cod_provincia] int NULL,
  [cod_distrito] int NULL,
  [cod_corregimiento] int NULL,
  [txt_barrio] varchar(50) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_calle] varchar(50) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_edificio] varchar(50) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_apto] varchar(10) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_direccion_completa] varchar(200) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesHeaderTmp : 
--

CREATE TABLE [dbo].[PacientesHeaderTmp] (
  [id_paciente_tmp] int NOT NULL,
  [cod_hospital] int NULL,
  [cod_doctor] int NULL,
  [cod_estado_paciente] int NULL,
  [cod_diagnostico] int NULL,
  [txt_nombre] varchar(30) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_nombre2] varchar(31) COLLATE Modern_Spanish_CI_AS NULL,
  [txtapellido] varchar(30) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_apellido2] varchar(30) COLLATE Modern_Spanish_CI_AS NULL,
  [cod_sexo] int NULL,
  [fec_nacimiento] date NULL,
  [edad_anos] int NULL,
  [edad_meses] int NULL,
  [usuario_alta] int NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Padres : 
--

CREATE TABLE [dbo].[Padres] (
  [cod_padres] int NOT NULL,
  [txt_padres] varchar(10) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesPadres : 
--

CREATE TABLE [dbo].[PacientesPadres] (
  [id_paciente] int NOT NULL,
  [cod_padres] int NOT NULL,
  [txt_nombre_padre] varchar(30) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_apellidos_padre] varchar(50) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesPadresTmp : 
--

CREATE TABLE [dbo].[PacientesPadresTmp] (
  [id_paciente_tmp] int NOT NULL,
  [cod_padres] int NULL,
  [txt_nombre_padre] varchar(30) COLLATE Modern_Spanish_CI_AS NULL,
  [txt_apellidos_padre] varchar(50) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table TiposTelef : 
--

CREATE TABLE [dbo].[TiposTelef] (
  [cod_tipo_telef] int NOT NULL,
  [txt_desc_telef] varchar(20) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesTelef : 
--

CREATE TABLE [dbo].[PacientesTelef] (
  [id_paciente] int NOT NULL,
  [ind_telef] int NOT NULL,
  [cod_tipo_telef] int NULL,
  [txt_telef] varchar(10) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table PacientesTelefTmp : 
--

CREATE TABLE [dbo].[PacientesTelefTmp] (
  [id_paciente_tmp] int NOT NULL,
  [ind_telef] int NULL,
  [cod_tipo_telef] int NULL,
  [txt_telef] varchar(10) COLLATE Modern_Spanish_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Sexo : 
--

CREATE TABLE [dbo].[Sexo] (
  [cod_sexo] int NOT NULL,
  [txt_sexo] varchar(15) COLLATE Modern_Spanish_CI_AS NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table sysdiagrams : 
--

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname COLLATE Modern_Spanish_CI_AS NOT NULL,
  [principal_id] int NOT NULL,
  [diagram_id] int IDENTITY(1, 1) NOT NULL,
  [version] int NULL,
  [definition] varbinary(max) NULL
)
ON [PRIMARY]
GO

--
-- Definition for user-defined function fn_diagramobjects : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE FUNCTION dbo.fn_diagramobjects() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO

--
-- Definition for stored procedure sp_alterdiagram : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE dbo.sp_alterdiagram
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO

--
-- Definition for stored procedure sp_creatediagram : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE dbo.sp_creatediagram
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO

--
-- Definition for stored procedure sp_dropdiagram : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE dbo.sp_dropdiagram
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO

--
-- Definition for stored procedure sp_helpdiagramdefinition : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE dbo.sp_helpdiagramdefinition
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO

--
-- Definition for stored procedure sp_helpdiagrams : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE dbo.sp_helpdiagrams
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO

--
-- Definition for stored procedure sp_renamediagram : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE dbo.sp_renamediagram
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO

--
-- Definition for stored procedure sp_upgraddiagrams : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE dbo.sp_upgraddiagrams
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO

--
-- Data for table dbo.Corregimientos  (LIMIT 0,500)
--

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 1, 1, N'BOCAS DEL TORO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 1, 2, N'BASTIMENTOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 1, 3, N'CAUCHERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 1, 4, N'PUNTA LAUREL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 1, 5, N'TIERRA OSCURA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 1, N'CHANGUINOLA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 2, N'ALMIRANTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 3, N'GUABITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 4, N'EL TERIBE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 5, N'VALLE RISCÓ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 6, N'EL EMPALME')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 7, N'LAS TABLAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 8, N'VALLE DE AGUA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 9, N'NANCE DE RISCO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 10, N'LAS DELICIAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 11, N'COCHIGRÓ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 2, 12, N'LA GLORIA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 3, 1, N'CHIRIQUÍ GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 3, 2, N'BAJO CEDRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 3, 3, N'MIRAMAR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 3, 4, N'PUNTA PEÑA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 3, 5, N'PUNTA RÓBALO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (1, 3, 6, N'RAMBALA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 1, N'PENONOMÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 2, N'CAÑAVERAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 3, N'COCLÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 4, N'CHIGUIRÍ ARRIBA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 5, N'EL COCO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 6, N'PAJONAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 7, N'RÍO GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 8, N'RÍO INDIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 9, N'TOABRÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 10, N'TULÚ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 1, 11, N'EL VALLE DE SAN MIGUEL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 2, 1, N'AGUADULCE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 2, 2, N'EL CRISTO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 2, 3, N'EL ROBLE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 2, 4, N'POCRÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 2, 5, N'BARRIOS UNIDOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 1, N'ANTÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 2, N'CABUYA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 3, N'EL CHIRÚ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 4, N'EL RETIRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 5, N'EL VALLE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 6, N'JUAN DÍAZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 7, N'RÍO HATO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 8, N'SAN JUAN DE DIOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 9, N'SANTA RITA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 3, 10, N'CABALLERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 4, 1, N'LA PINTADA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 4, 2, N'EL HARINO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 4, 3, N'EL POTRERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 4, 4, N'LLANO GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 4, 5, N'PIEDRAS GORDAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 4, 6, N'LAS LOMAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 5, 1, N'NATÁ DE LOS CABALLEROS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 5, 2, N'CAPELLANÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 5, 3, N'EL CAÑO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 5, 4, N'GUZMÁN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 5, 5, N'LAS HUACAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 5, 6, N'TOZA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 6, 1, N'OLÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 6, 2, N'EL COPÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 6, 3, N'EL PALMAR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 6, 4, N'EL PICACHO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (2, 6, 5, N'LA PAVA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 1, N'BARRIO NORTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 2, N'BARRIO SUR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 3, N'BUENA VISTA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 4, N'CATIVÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 5, N'CIRICITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 6, N'SABANITAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 7, N'SALAMANCA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 8, N'LIMÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 9, N'NUEVA PROVIDENCIA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 10, N'PUERTO PILÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 11, N'CRISTÓBAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 12, N'ESCOBAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 13, N'SAN JUAN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 1, 14, N'SANTA ROSA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 1, N'NUEVO CHAGRES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 2, N'ACHIOTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 3, N'EL GUABO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 4, N'LA ENCANTADA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 5, N'PALMAS BELLAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 6, N'PIÑA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 7, N'SALUD')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 2, 8, N'ICACAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 3, 1, N'MIGUEL DE LA BORDA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 3, 2, N'COCLÉ DEL NORTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 3, 3, N'EL GUÁSIMO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 3, 4, N'GOBEA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 3, 5, N'RÍO INDIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 3, 6, N'SAN JOSÉ DEL GENERAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 4, 1, N'PORTOBELO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 4, 2, N'CACIQUE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 4, 3, N'GARROTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 4, 4, N'ISLA GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 4, 5, N'MARÍA CHIQUITA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 1, N'PALENQUE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 2, N'CUANGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 3, N'MIRAMAR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 4, N'NOMBRE DE DIOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 5, N'PALMIRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 6, N'PLAYA CHIQUITA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 7, N'SANTA ISABEL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (3, 5, 8, N'VIENTO FRÍO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 1, N'DAVID')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 2, N'BIJAGUAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 3, N'COCHEA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 4, N'CHIRIQUÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 5, N'GUACA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 6, N'LAS LOMAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 7, N'PEDREGAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 8, N'SAN CARLOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 9, N'SAN PABLO NUEVO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 1, 10, N'SAN PABLO VIEJO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 1, N'ALANJE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 2, N'DIVALÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 3, N'EL TEJAR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 4, N'GUARUMAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 5, N'PALO GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 6, N'QUERÉVALO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 7, N'SANTO TOMÁS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 8, N'CANTA GALLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 2, 9, N'NUEVO MÉXICO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 3, 1, N'PUERTO ARMUELLES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 3, 2, N'LIMONES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 3, 3, N'PROGRESO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 3, 4, N'BACO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 3, 5, N'RODOLFO AGUILAR DELGADO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 1, N'BOQUERÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 2, N'BÁGALA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 3, N'CORDILLERA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 4, N'GUABAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 5, N'GUAYABAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 6, N'PARAÍSO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 7, N'PEDREGAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 4, 8, N'TIJERAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 5, 1, N'BAJO BOQUETE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 5, 2, N'CALDERA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 5, 3, N'PALMIRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 5, 4, N'ALTO BOQUETE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 5, 5, N'JARAMILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 5, 6, N'LOS NARANJOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 1, N'LA CONCEPCIÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 2, N'ASERRÍO DE GARICHÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 3, N'BUGABA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 4, N'CERRO PUNTA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 5, N'GÓMEZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 6, N'LA ESTRELLA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 7, N'SAN ANDRÉS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 8, N'SANTA MARTA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 9, N'SANTA ROSA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 10, N'SANTO DOMINGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 11, N'SORTOVÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 12, N'VOLCÁN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 6, 13, N'EL BONGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 1, N'DOLEGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 2, N'DOS RÍOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 3, N'LOS ANASTACIOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 4, N'POTRERILLOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 5, N'POTRERILLOS ABAJO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 6, N'ROVIRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 7, N'TINAJAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 7, 8, N'LOS ALGARROBOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 8, 1, N'GUALACA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 8, 2, N'HORNITOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 8, 3, N'LOS ÁNGELES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 8, 4, N'PAJA DE SOMBRERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 8, 5, N'RINCÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 9, 1, N'REMEDIOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 9, 2, N'EL NANCITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 9, 3, N'EL PORVENIR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 9, 4, N'EL PUERTO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 9, 5, N'SANTA LUCÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 1, N'RÍO SERENO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 2, N'BREÑÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 3, N'CAÑAS GORDAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 4, N'MONTE LIRIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 5, N'PLAZA DE CAISÁN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 6, N'SANTA CRUZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 7, N'DOMINICAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 10, 8, N'SANTA CLARA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 11, 1, N'LAS LAJAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 11, 2, N'JUAY')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 11, 3, N'SAN FÉLIX')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 11, 4, N'LAJAS ADENTRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 11, 5, N'SANTA CRUZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 12, 1, N'HORCONCITOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 12, 2, N'BOCA CHICA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 12, 3, N'BOCA DEL MONTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 12, 4, N'SAN JUAN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 12, 5, N'SAN LORENZO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 1, N'TOLÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 2, N'CERRO VIEJO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 3, N'LAJAS DE TOLÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 4, N'POTRERO DE CAÑA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 5, N'QUEBRADA DE PIEDRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 6, N'BELLA VISTA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 7, N'EL CRISTO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 8, N'JUSTO FIDEL PALACIOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (4, 13, 9, N'VELADERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 1, N'LA PALMA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 2, N'CAMOGANTI')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 3, N'CHEPIGANA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 4, N'GARACHINÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 5, N'JAQUÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 6, N'PUERTO PIÑA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 7, N'RÍO CONGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 8, N'RÍO IGLESIAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 9, N'SAMBÚ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 10, N'SETEGANTÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 11, N'TAIMATÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 12, N'TUCUTÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 13, N'AGUA FRÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 14, N'CUCUNATÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 15, N'RÍO CONGO ARRIBA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 1, 16, N'SANTA FÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 1, N'EL REAL DE SANTA MARÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 2, N'BOCA DE CUPE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 3, N'PAYA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 4, N'PINOGANA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 5, N'PÚCURO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 6, N'YAPE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 7, N'YAVIZA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 8, N'METETÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (5, 2, 9, N'WARGANDI')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 1, 1, N'CHITRÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 1, 2, N'LA ARENA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 1, 3, N'MONAGRILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 1, 4, N'LLANO BONITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 1, 5, N'SAN JUAN BAUTISTA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 2, 1, N'LAS MINAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 2, 2, N'CHEPO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 2, 3, N'CHUMICAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 2, 4, N'EL TORO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 2, 5, N'LEONES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 2, 6, N'QUEBRADA DEL ROSARIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 2, 7, N'QUEBRADA DEL CIPRIÁN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 1, N'LOS POZOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 2, N'EL CAPURÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 3, N'EL CALABACITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 4, N'EL CEDRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 5, N'LA ARENA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 6, N'LA PITALOZA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 7, N'LOS CERRITOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 8, N'LOS CERROS DE PAJA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 3, 9, N'LAS LLANAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 1, N'OCÚ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 2, N'CERRO LARGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 3, N'LOS LLANOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 4, N'LLANO GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 5, N'PEÑAS CHATAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 6, N'EL TIJERA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 7, N'MENCHACA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 4, 8, N'ENTRADERO DEL CASTILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 5, 1, N'PARITA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 5, 2, N'CABUYA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 5, 3, N'LOS CASTILLOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 5, 4, N'LLANO DE LA CRUZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 5, 5, N'PARÍS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 5, 6, N'PORTOBELILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 5, 7, N'POTUGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 1, N'PESÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 2, N'LA CABRAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 3, N'EL PÁJARO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 4, N'EL BARRERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 5, N'EL PEDREGOSO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 6, N'EL CIRUELO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 7, N'SABANAGRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 6, 8, N'RINCÓN HONDO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 7, 1, N'SANTA MARÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 7, 2, N'CHUPAMPA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 7, 3, N'EL RINCÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 7, 4, N'EL LIMÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (6, 7, 5, N'LOS CANELOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 1, N'LAS TABLAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 2, N'BAJO CORRAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 3, N'BAYANO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 4, N'EL CARATE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 5, N'LOS COCAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 6, N'EL MANANTIAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 7, N'EL MUÑOZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 8, N'EL PEDREGOSO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 9, N'LA LAJA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 10, N'LA MIEL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 11, N'LA PALMA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 12, N'LA TIZA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 13, N'LAS PALMITAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 14, N'LAS TABLAS ABAJO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 15, N'NUARIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 16, N'PALMIRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 17, N'PEÑA BLANCA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 18, N'RÍO HONDO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 19, N'SAN JOSÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 20, N'SAN MIGUEL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 21, N'SANTO DOMINGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 22, N'EL SESTEADERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 23, N'VALLE RICO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 1, 24, N'VALLERRIQUITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 1, N'GUARARÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 2, N'EL ESPINAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 3, N'EL MACANO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 4, N'GUARARÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 5, N'LA ENEA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 6, N'LA PASERA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 7, N'LAS TRANCAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 8, N'LLANO ABAJO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 9, N'EL HATO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 2, 10, N'PERALES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 1, N'LA VILLA DE LOS SANTOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 2, N'EL GUÁSIMO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 3, N'LA COLORADA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 4, N'LA ESPIGADILLA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 5, N'LAS CRUCES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 6, N'LAS GUABAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 7, N'LOS ÁNGELES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 8, N'LOS OLIVOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 9, N'LLANO LARGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 10, N'SABANAGRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 11, N'SANTA ANA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 12, N'TRES QUEBRADAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 13, N'VILLA LOURDES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 3, 14, N'AGUA BUENA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 1, N'MACARACAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 2, N'BAHÍA HONDA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 3, N'BAJO DE GÜERA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 4, N'COROZAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 5, N'CHUPÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 6, N'EL CEDRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 7, N'ESPINO AMARILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 8, N'LA MESA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 9, N'LLANO DE PIEDRAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 10, N'LAS PALMAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 4, 11, N'MOGOLLÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 5, 1, N'PEDASÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 5, 2, N'LOS ASIENTOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 5, 3, N'MARIABÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 5, 4, N'PURIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 5, 5, N'ORIA ARRIBA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 6, 1, N'POCRÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 6, 2, N'EL CAÑAFÍSTULO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 6, 3, N'LAJAMINA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 6, 4, N'PARAÍSO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 6, 5, N'PARITILLA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 1, N'TONOSÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 2, N'ALTOS DE GÜERA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 3, N'CAÑAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 4, N'EL BEBEDERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 5, N'EL CACAO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 6, N'EL CORTEZO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 7, N'FLORES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 8, N'GUÁNICO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 9, N'LA TRONOSA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 10, N'CAMBUTAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (7, 7, 11, N'ISLA DE CAÑAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 1, N'SAN FELIPE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 2, N'EL CHORRILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 3, N'SANTA ANA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 4, N'CALIDONIA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 5, N'CURUNDÚ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 6, N'BETANIA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 7, N'BELLA VISTA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 8, N'PUEBLO NUEVO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 9, N'ANCÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 10, N'SAN FRANCISCO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 11, N'PARQUE LEFEVRE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 12, N'RÍO ABAJO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 13, N'JUAN DÍAZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 14, N'CHILIBRE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 15, N'LAS CUMBRES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 16, N'ALCALDE DÍAZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 17, N'ERNESTO CÓRDOBA CAMPOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 18, N'CAIMITILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 19, N'PACORA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 20, N'PEDREGAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 21, N'SAN MARTÍN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 22, N'TOCUMEN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 23, N'LAS MAÑANITAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 1, 24, N'24 DE DICIEMBRE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 1, N'ARRAIJÁN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 2, N'JUAN DEMÓSTENES AROSEMENA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 3, N'NUEVO EMPERADOR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 4, N'SANTA CLARA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 5, N'VERACRUZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 6, N'VISTA ALEGRE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 7, N'BURUNGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 2, 8, N'CERRO SILVESTRE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 3, 1, N'SAN MIGUEL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 3, 2, N'LA ENSENADA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 3, 3, N'LA ESMERALDA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 3, 4, N'LA GUINEA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 3, 5, N'PEDRO GONZÁLEZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 3, 6, N'SABOGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 1, N'CAPIRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 2, N'CAIMITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 3, N'CAMPANA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 4, N'CERMEÑO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 5, N'CIRÍ DE LOS SOTOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 6, N'CIRÍ GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 7, N'EL CACAO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 8, N'LA TRINIDAD')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 9, N'LAS OLLAS ARRIBA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 10, N'LÍDICE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 11, N'VILLA CARMEN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 12, N'VILLA ROSARIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 4, 13, N'SANTA ROSA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 1, N'CHAME')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 2, N'BEJUCO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 3, N'BUENOS AIRES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 4, N'CABUYA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 5, N'CHICÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 6, N'EL LÍBANO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 7, N'LAS LAJAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 8, N'NUEVA GORGONA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 9, N'PUNTA CHAME')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 10, N'SAJALICES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 5, 11, N'SORÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 1, N'CHEPO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 2, N'CAÑITA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 3, N'CHEPILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 4, N'EL LLANO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 5, N'LAS MARGARITAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 6, N'SANTA CRUZ DE CHININA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 7, N'MADUNGANDÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 6, 8, N'TORTÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 7, 1, N'CHIMÁN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 7, 2, N'BRUJAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 7, 3, N'GONZALO VÁSQUEZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 7, 4, N'PÁSIGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 7, 5, N'UNIÓN SANTEÑA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 1, N'BARRIO BALBOA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 2, N'BARRIO COLÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 3, N'AMADOR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 4, N'AROSEMENA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 5, N'EL ARADO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 6, N'EL COCO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 7, N'FEUILET')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 8, N'GUADALUPE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 9, N'HERRERA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 10, N'HURTADO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 11, N'ITURRALDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 12, N'LA REPRESA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 13, N'LOS DÍAZ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 14, N'MENDOZA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 15, N'OBALDÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 16, N'PLAYA LEONA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 17, N'PUERTO CAIMITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 8, 18, N'SANTA RITA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 1, N'SAN CARLOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 2, N'EL ESPINO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 3, N'EL HIGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 4, N'GUAYABITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 5, N'LA ERMITA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 6, N'LA LAGUNA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 7, N'LAS UVAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 8, N'LOS LLANITOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 9, 9, N'SAN JOSÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 1, N'AMELIA DENIS DE ICAZA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 2, N'BELISARIO PORRAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 3, N'JOSÉ DOMINGO ESPINAR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 4, N'MATEO ITURRALDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 5, N'VICTORIANO LORENZO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 6, N'ARNULFO ARIAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 7, N'BELISARIO FRÍAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 8, N'OMAR TORRIJOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 10, 9, N'RUFINA ALFARO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 11, 1, N'TABOGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 11, 2, N'OTOQUE OCCIDENTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (8, 11, 3, N'OTOQUE ORIENTE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 1, N'SANTIAGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 2, N'LA COLORADA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 3, N'LA PEÑA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 4, N'LA RAYA DE SANTA MARÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 5, N'PONUGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 6, N'SAN PEDRO DEL ESPINO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 7, N'CANTO DEL LLANO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 8, N'LOS ALGARROBOS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 9, N'CARLOS SANTA ÁVILA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 10, N'EDWIN FÁBREGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 11, N'SAN MARTÍN DE PORRES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 12, N'URRACÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 13, N'LA SOLEDAD')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 14, N'RINCÓN LARGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 1, 15, N'EL LLANITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 2, 1, N'ATALAYA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 2, 2, N'EL BARRITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 2, 3, N'LA MONTAÑUELA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 2, 4, N'SAN ANTONIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 2, 5, N'LA CARRILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 1, N'CALOBRE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 2, N'BARNIZAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 3, N'CHITRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 4, N'EL COCLA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 5, N'EL POTRERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 6, N'LA LAGUNA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 7, N'LA RAYA DE CALOBRE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 8, N'LA TETILLA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 9, N'LA YEGUADA')
GO

--
-- Data for table dbo.Corregimientos  (LIMIT 500,500)
--

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 10, N'LAS GUÍAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 11, N'MONJARÁS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 3, 12, N'SAN JOSÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 1, N'CAÑAZAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 2, N'CERRO PLATA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 3, N'LOS VALLES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 4, N'SAN MARCELO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 5, N'EL PICADOR')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 6, N'SAN JOSÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 7, N'EL AROMILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 4, 8, N'LA CRUCES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 5, 1, N'LA MESA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 5, 2, N'BISVALLES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 5, 3, N'BORÓ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 5, 4, N'LLANO GRANDE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 5, 5, N'SAN BARTOLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 5, 6, N'LOS MILAGROS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 5, 7, N'EL HIGO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 1, N'LAS PALMAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 2, N'CERRO DE CASA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 3, N'COROZAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 4, N'EL MARÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 5, N'EL PRADO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 6, N'EL RINCÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 7, N'LOLÁ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 8, N'PIXVAE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 9, N'PUERTO VIDAL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 10, N'ZAPOTILLO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 11, N'SAN MARTÍN DE PORRES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 12, N'VIGUÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 6, 13, N'MANUEL AMADOR GUERRERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 7, 1, N'LLANO DE CATIVAL O MARIATO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 7, 2, N'ARENAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 7, 3, N'EL CACAO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 7, 4, N'QUEBRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (9, 7, 5, N'TEBARIO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (10, 1, 1, N'AILIGANDÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (10, 1, 2, N'NARGANA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (10, 1, 3, N'PUERTO OBALDÍA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (10, 1, 4, N'TUBUALA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (11, 1, 1, N'CIRILO GUAYNORA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (11, 1, 2, N'LAJAS BLANCAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (11, 1, 3, N'MANUEL ORTEGA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (11, 2, 1, N'JINGURUNDÓ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (11, 2, 2, N'RÍO SÁBALO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 1, N'BISIRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 2, N'BURÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 3, N'KANKINTÚ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 4, N'GUARIVIARA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 5, N'GUORONÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 6, N'MUNUNÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 7, N'PIEDRA ROJA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 8, N'TUWAI')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 1, 9, N'MAN CREEK')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 2, 1, N'KUSAPÍN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 2, 2, N'CALOVEBORA O SANTA CATALINA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 2, 3, N'BAHÍA AZUL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 2, 4, N'RÍO CHIRIQUÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 2, 5, N'LOMA YUCA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 2, 6, N'TOBOBÉ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 2, 7, N'VALLE BONITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 1, N'SOLOY')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 2, N'BOCA DE BALSA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 3, N'CERRO BANCO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 4, N'CERRO PATENA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 5, N'CAMARÓN ARRIBA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 6, N'EMPLANADA DE CHORCHA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 7, N'NAMNONÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 3, 8, N'NIBA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 1, N'HATO PILÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 2, N'CASCABEL')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 3, N'HATO COROTÚ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 4, N'HATO CULANTRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 5, N'HATO JOBO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 6, N'HATO JULÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 7, N'QUEBRADA DE LORO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 4, 8, N'SALTO DUPÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 5, 1, N'CERRO IGLESIAS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 5, 2, N'LAJERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 5, 3, N'HATO CHAMÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 5, 4, N'SUSAMA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 5, 5, N'JADEBERI')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 1, N'CHICHICA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 2, N'ALTO CABALLERO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 3, N'BAGAMA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 4, N'CERRO CAÑA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 5, N'CERRO PUERCO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 6, N'KRUA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 7, N'NIBRA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 8, N'PEÑA BLANCA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 9, N'ROKA')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 10, N'SITIO PRADO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 6, 11, N'UMANÍ')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 1, N'BUENOS AIRES')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 2, N'AGUA DE SALUD')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 3, N'ALTO DE JESÚS')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 4, N'CERRO PELADO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 5, N'EL BALE')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 6, N'EL PAREDÓN')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 7, N'EL PIRO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 8, N'GUAYABITO')
GO

INSERT INTO [dbo].[Corregimientos] ([cod_provincia], [cod_distrito], [cod_corregimiento], [txt_corregimiento])
VALUES 
  (12, 7, 9, N'GUIBALE')
GO

--
-- Data for table dbo.Diagnosticos  (LIMIT 0,500)
--

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (1, N'LLA')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (2, N'LMA')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (3, N'LINFOMA DE NO-HODGKIN')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (4, N'LINFOMA DE HODGKIN')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (5, N'TUMOR DE WILMS')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (6, N'RETINOBLASTOMA')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (7, N'RABDOMIOSARCOMA')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (8, N'TUMOR DE TEJIDO BLANDO')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (9, N'TUMOR CEREBRAL')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (10, N'LINFOMA DE BURKITT')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (11, N'TUMOR DE SENOS ENDODÉRMICOS')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (12, N'HEPATOBLASTOMA')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (13, N'NEUROBLASTOMA')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (14, N'LIPOBLASTOMA')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (15, N'SARCOMA RENAL')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (16, N'TUMOR DE TALLO')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (17, N'MASA ABDOMINAL')
GO

INSERT INTO [dbo].[Diagnosticos] ([cod_diagnostico], [txt_desc_diagnostico])
VALUES 
  (18, N'SARCOMA SINOVIAL DE PULMÓN')
GO

--
-- Data for table dbo.Distritos  (LIMIT 0,500)
--

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (1, 1, N'BOCAS DEL TORO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (1, 2, N'CHANGUINOLA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (1, 3, N'CHIRIQUÍ GRANDE')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (2, 1, N'PENONOMÉ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (2, 2, N'AGUADULCE')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (2, 3, N'ANTÓN')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (2, 4, N'LA PINTADA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (2, 5, N'NATÁ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (2, 6, N'OLÁ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (3, 1, N'COLÓN')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (3, 2, N'CHAGRES')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (3, 3, N'DONOSO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (3, 4, N'PORTOBELO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (3, 5, N'SANTA ISABEL')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 1, N'DAVID')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 2, N'ALANJE')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 3, N'BARÚ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 4, N'BOQUERÓN')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 5, N'BOQUETE')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 6, N'BUGABA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 7, N'DOLEGA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 8, N'GUALACA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 9, N'REMEDIOS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 10, N'RENACIMIENTO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 11, N'SAN FÉLIX')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 12, N'SAN LORENZO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (4, 13, N'TOLÉ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (5, 1, N'CHEPIGANA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (5, 2, N'PINOGANA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (6, 1, N'CHITRÉ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (6, 2, N'LAS MINAS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (6, 3, N'LOS POZOS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (6, 4, N'OCÚ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (6, 5, N'PARITA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (6, 6, N'PESÉ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (6, 7, N'SANTA MARÍA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (7, 1, N'LAS TABLAS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (7, 2, N'GUARARÉ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (7, 3, N'LOS SANTOS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (7, 4, N'MACARACAS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (7, 5, N'PEDASÍ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (7, 6, N'POCRÍ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (7, 7, N'TONOSÍ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 1, N'PANAMÁ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 2, N'ARRAIJÁN')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 3, N'BALBOA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 4, N'CAPIRA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 5, N'CHAME')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 6, N'CHEPO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 7, N'CHIMÁN')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 8, N'LA CHORRERA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 9, N'SAN CARLOS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 10, N'SAN MIGUELITO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (8, 11, N'TABOGA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 1, N'SANTIAGO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 2, N'ATALAYA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 3, N'CALOBRE')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 4, N'CAÑAZAS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 5, N'LA MESA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 6, N'LAS PALMAS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 7, N'MARIATO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 8, N'MONTIJO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 9, N'RIO DE JESÚS')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 10, N'SAN FRANCISCO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 11, N'SANTA FÉ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (9, 12, N'SONÁ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (10, 1, N'GUNA-YALA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (11, 1, N'CÉMACO')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (11, 2, N'SAMBÚ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (12, 1, N'KANKINTÚ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (12, 2, N'KUSAPÍN')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (12, 3, N'BESIKÄ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (12, 4, N'MIRONÓ')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (12, 5, N'NOLE DUIMA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (12, 6, N'MÜNA')
GO

INSERT INTO [dbo].[Distritos] ([cod_provincia], [cod_distrito], [txt_distrito])
VALUES 
  (12, 7, N'ÑÜRÜM')
GO

--
-- Data for table dbo.Doctores  (LIMIT 0,500)
--

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (1, N'RAFAEL JOLY')
GO

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (2, N'JAIME BOYD')
GO

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (3, N'LIDIA APARICIO')
GO

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (4, N'LUIS FERNÁNDEZ')
GO

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (5, N'NAPOLEÓN CHEN')
GO

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (6, N'MARÍA SABRINA ACHÚ')
GO

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (7, N'BÉLGICA MORENO')
GO

INSERT INTO [dbo].[Doctores] ([cod_doctor], [txt_nom_doctor])
VALUES 
  (8, N'DIANA CEDEÑO')
GO

--
-- Data for table dbo.EstadosPaciente  (LIMIT 0,500)
--

INSERT INTO [dbo].[EstadosPaciente] ([cod_estado], [txt_desc_estado])
VALUES 
  (1, N'ALTA')
GO

INSERT INTO [dbo].[EstadosPaciente] ([cod_estado], [txt_desc_estado])
VALUES 
  (2, N'REMISIÓN')
GO

INSERT INTO [dbo].[EstadosPaciente] ([cod_estado], [txt_desc_estado])
VALUES 
  (3, N'SOBREVIVIENTE')
GO

INSERT INTO [dbo].[EstadosPaciente] ([cod_estado], [txt_desc_estado])
VALUES 
  (4, N'FALLECIDO')
GO

INSERT INTO [dbo].[EstadosPaciente] ([cod_estado], [txt_desc_estado])
VALUES 
  (5, N'EN TRATAMIENTO')
GO

--
-- Data for table dbo.Hospitales  (LIMIT 0,500)
--

INSERT INTO [dbo].[Hospitales] ([cod_hospital], [txt_desc_hospital], [txt_abrev_hospital])
VALUES 
  (1, N'HOSPITAL DEL NIÑO', N'HOSP. NIÑO')
GO

INSERT INTO [dbo].[Hospitales] ([cod_hospital], [txt_desc_hospital], [txt_abrev_hospital])
VALUES 
  (2, N'CAJA DEL SEGURO SOCIAL', N'CSS')
GO

INSERT INTO [dbo].[Hospitales] ([cod_hospital], [txt_desc_hospital], [txt_abrev_hospital])
VALUES 
  (3, N'HOSPITAL ONCOLÓGICO', N'HOSP. ONCO')
GO

INSERT INTO [dbo].[Hospitales] ([cod_hospital], [txt_desc_hospital], [txt_abrev_hospital])
VALUES 
  (4, N'HOSPITAL CHIRIQUÍ', N'CHIRIQUÍ')
GO

--
-- Data for table dbo.Meses  (LIMIT 0,500)
--

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (1, N'ENERO', 31, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (2, N'FEBRERO', 28, -1)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (3, N'MARZO', 31, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (4, N'ABRIL', 30, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (5, N'MAYO', 31, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (6, N'JUNIO', 30, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (7, N'JULIO', 31, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (8, N'AGOSTO', 31, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (9, N'SEPTIEMBRE', 30, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (10, N'OCTUBRE', 31, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (11, N'NOVIEMBRE', 30, 0)
GO

INSERT INTO [dbo].[Meses] ([cod_mes], [txt_mes], [cnt_dias], [sn_bisiesto])
VALUES 
  (12, N'DICIEMBRE', 31, 0)
GO

--
-- Data for table dbo.Padres  (LIMIT 0,500)
--

INSERT INTO [dbo].[Padres] ([cod_padres], [txt_padres])
VALUES 
  (1, N'PAPÁ')
GO

INSERT INTO [dbo].[Padres] ([cod_padres], [txt_padres])
VALUES 
  (2, N'MAMÁ')
GO

INSERT INTO [dbo].[Padres] ([cod_padres], [txt_padres])
VALUES 
  (3, N'OTRO')
GO

--
-- Data for table dbo.Provincias  (LIMIT 0,500)
--

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (1, N'BOCAS DEL TORO')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (2, N'COCLÉ')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (3, N'COLÓN')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (4, N'CHIRIQUÍ')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (5, N'DARIÉN')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (6, N'HERRERA')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (7, N'LOS SANTOS')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (8, N'PANAMÁ')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (9, N'VERAGUAS')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (10, N'GUNA-YALA')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (11, N'EMBERÁ-WOUNAAN')
GO

INSERT INTO [dbo].[Provincias] ([cod_provincia], [txt_provincia])
VALUES 
  (12, N'NGÄBE-BUGLÉ')
GO

--
-- Data for table dbo.Sexo  (LIMIT 0,500)
--

INSERT INTO [dbo].[Sexo] ([cod_sexo], [txt_sexo])
VALUES 
  (1, N'MASCULINO')
GO

INSERT INTO [dbo].[Sexo] ([cod_sexo], [txt_sexo])
VALUES 
  (2, N'FEMENINO')
GO

--
-- Data for table dbo.TiposTelef  (LIMIT 0,500)
--

INSERT INTO [dbo].[TiposTelef] ([cod_tipo_telef], [txt_desc_telef])
VALUES 
  (1, N'DOMICILIO')
GO

INSERT INTO [dbo].[TiposTelef] ([cod_tipo_telef], [txt_desc_telef])
VALUES 
  (2, N'CELULAR')
GO

INSERT INTO [dbo].[TiposTelef] ([cod_tipo_telef], [txt_desc_telef])
VALUES 
  (3, N'OFICINA')
GO

INSERT INTO [dbo].[TiposTelef] ([cod_tipo_telef], [txt_desc_telef])
VALUES 
  (4, N'OTRO')
GO

--
-- Definition for indices : 
--

ALTER TABLE [dbo].[Provincias]
ADD PRIMARY KEY CLUSTERED ([cod_provincia])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Distritos]
ADD PRIMARY KEY CLUSTERED ([cod_provincia], [cod_distrito])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Corregimientos]
ADD PRIMARY KEY CLUSTERED ([cod_provincia], [cod_distrito], [cod_corregimiento])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Diagnosticos]
ADD PRIMARY KEY CLUSTERED ([cod_diagnostico])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Doctores]
ADD PRIMARY KEY CLUSTERED ([cod_doctor])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[EstadosPaciente]
ADD PRIMARY KEY CLUSTERED ([cod_estado])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Hospitales]
ADD PRIMARY KEY CLUSTERED ([cod_hospital])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Meses]
ADD PRIMARY KEY CLUSTERED ([cod_mes])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Usuarios]
ADD PRIMARY KEY CLUSTERED ([nro_usuario])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PacientesHeader]
ADD PRIMARY KEY CLUSTERED ([id_paciente])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PacientesDireccion]
ADD PRIMARY KEY CLUSTERED ([id_paciente], [ind_direccion])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PacientesHeaderTmp]
ADD PRIMARY KEY CLUSTERED ([id_paciente_tmp])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Padres]
ADD PRIMARY KEY CLUSTERED ([cod_padres])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PacientesPadres]
ADD PRIMARY KEY CLUSTERED ([id_paciente], [cod_padres])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[TiposTelef]
ADD PRIMARY KEY CLUSTERED ([cod_tipo_telef])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PacientesTelef]
ADD PRIMARY KEY CLUSTERED ([id_paciente], [ind_telef])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Sexo]
ADD PRIMARY KEY CLUSTERED ([cod_sexo])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = OFF,
  ALLOW_PAGE_LOCKS = OFF)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[sysdiagrams]
ADD PRIMARY KEY CLUSTERED ([diagram_id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [UK_principal_name] 
UNIQUE NONCLUSTERED ([principal_id], [name])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

--
-- Definition for foreign keys : 
--

ALTER TABLE [dbo].[Distritos]
ADD CONSTRAINT [tdistrito_fk_tdistrito] FOREIGN KEY ([cod_provincia]) 
  REFERENCES [dbo].[Provincias] ([cod_provincia]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[Corregimientos]
ADD CONSTRAINT [tcorregimiento_fk_tcorregimiento] FOREIGN KEY ([cod_provincia], [cod_distrito]) 
  REFERENCES [dbo].[Distritos] ([cod_provincia], [cod_distrito]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesHeader]
ADD CONSTRAINT [tpaciente_header_fk] FOREIGN KEY ([cod_doctor]) 
  REFERENCES [dbo].[Doctores] ([cod_doctor]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesHeader]
ADD CONSTRAINT [tpaciente_header_fk2] FOREIGN KEY ([cod_hospital]) 
  REFERENCES [dbo].[Hospitales] ([cod_hospital]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesHeader]
ADD CONSTRAINT [tpaciente_header_fk3] FOREIGN KEY ([cod_diagnostico]) 
  REFERENCES [dbo].[Diagnosticos] ([cod_diagnostico]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesHeader]
ADD CONSTRAINT [tpaciente_header_fk4] FOREIGN KEY ([usuario_alta]) 
  REFERENCES [dbo].[Usuarios] ([nro_usuario]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[PacientesDireccion]
ADD CONSTRAINT [paciente_direccion_fk] FOREIGN KEY ([id_paciente]) 
  REFERENCES [dbo].[PacientesHeader] ([id_paciente]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesPadres]
ADD CONSTRAINT [paciente_padres_fk] FOREIGN KEY ([id_paciente]) 
  REFERENCES [dbo].[PacientesHeader] ([id_paciente]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesPadres]
ADD CONSTRAINT [paciente_padres_fk2] FOREIGN KEY ([cod_padres]) 
  REFERENCES [dbo].[Padres] ([cod_padres]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesTelef]
ADD CONSTRAINT [pacientes_telef_fk] FOREIGN KEY ([id_paciente]) 
  REFERENCES [dbo].[PacientesHeader] ([id_paciente]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[PacientesTelef]
ADD CONSTRAINT [pacientes_telef_fk2] FOREIGN KEY ([cod_tipo_telef]) 
  REFERENCES [dbo].[TiposTelef] ([cod_tipo_telef]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

