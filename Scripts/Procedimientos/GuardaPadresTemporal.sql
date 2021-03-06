SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.GuardaPadresTemporal
(@id_paciente INT, 
 @NomPadre VARCHAR (30),
 @ApellPadre VARCHAR(50),
 @NomMadre VARCHAR(30),
 @ApellMadre VARCHAR(50)
)
AS
BEGIN
  IF EXISTS (SELECT 1 FROM PacientesPadresTmp WHERE id_paciente_tmp = @id_paciente)
  	DELETE FROM PacientesPadresTmp WHERE id_paciente_tmp = @id_paciente
    
  INSERT INTO
  	PacientesPadresTmp
  SELECT
  	@id_paciente,
    1, 
    @NomPadre,
    @ApellPadre
    
  INSERT INTO
  	PacientesPadresTmp
  SELECT
  	@id_paciente,
    2, 
    @NomMadre,
    @ApellMadre
    
END
