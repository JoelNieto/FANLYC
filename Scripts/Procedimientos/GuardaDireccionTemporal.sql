SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.GuardaDireccionTemporal
(@id_paciente INT, 
 @Provincia INT = NULL,
 @Distrito INT = NULL,
 @Corregimiento INT = NULL,
 @Barrio VARCHAR(50) = NULL,
 @Calle VARCHAR(50) = NULL,
 @Edificio VARCHAR (50) = NULL,
 @Apto VARCHAR (10) = NULL,
 @DirCompleta VARCHAR (500) = NULL)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM PacientesDireccionTmp WHERE id_paciente_tmp = @id_paciente)
    	DELETE FROM PacientesDireccionTmp WHERE id_paciente_tmp = @id_paciente
  	
    INSERT INTO 
    	PacientesDireccionTmp
	SELECT
    	@id_paciente,
        1,
        ISNULL(@Provincia, 1),
        ISNULL(@Distrito, 1),
        ISNULL(@Corregimiento, 1),
        ISNULL(@Barrio, ''),
        ISNULL(@Calle, ''),
        ISNULL(@Edificio, ''),
        ISNULL(@Apto, ''),
        ISNULL(@DirCompleta, '')
    
END
