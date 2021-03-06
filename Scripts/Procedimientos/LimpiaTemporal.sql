SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.LimpiaTemporal
(@id_paciente INT)
AS
BEGIN
  
	DELETE FROM PacientesDireccionTmp WHERE id_paciente_tmp = @id_paciente
    DELETE FROM PacientesPadresTmp WHERE id_paciente_tmp = @id_paciente
    DELETE FROM PacientesTelefTmp WHERE id_paciente_tmp = @id_paciente
	DELETE FROM PacientesHeaderTmp WHERE id_paciente_tmp = @id_paciente
END
