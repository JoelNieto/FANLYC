SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.[LimpiaPacienteTodos]
AS
BEGIN
  
	DELETE FROM PacientesDireccion 
    DELETE FROM PacientesPadres 
    DELETE FROM PacientesTelef 
	DELETE FROM PacientesHeader 
END
