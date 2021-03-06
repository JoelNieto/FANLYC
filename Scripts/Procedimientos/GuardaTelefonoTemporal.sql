SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.GuardaTelefonoTemporal
(@id_paciente INT,
 @TelefDomi VARCHAR(10) = NULL,
 @TelefOfic VARCHAR(10) = NULL,
 @TelefCel VARCHAR(10) = NULL 
 )
 
AS
BEGIN
  IF EXISTS(SELECT 1 FROM PacientesTelefTmp WHERE id_paciente_tmp = @id_paciente)
  	DELETE FROM PacientesTelefTmp WHERE id_paciente_tmp = @id_paciente
    
  INSERT INTO 
  	PacientesTelefTmp
  SELECT 
  	@id_paciente, 
    1,
    1,
    ISNULL(@TelefDomi, '')

  INSERT INTO 
  	PacientesTelefTmp
  SELECT 
  	@id_paciente, 
    2,
    2,
    ISNULL(@TelefCel, '')
    
      
  INSERT INTO 
  	PacientesTelefTmp
  SELECT 
  	@id_paciente, 
    3,
    3,
    ISNULL(@TelefOfic, '')    
    
END
