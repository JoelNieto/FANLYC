SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.[LimpiaPaciente]
(@id_paciente INT)
AS
BEGIN
  
	DELETE FROM PacientesDireccion WHERE id_paciente = @id_paciente  
    DELETE FROM PacientesPadres WHERE id_paciente = @id_paciente
    DELETE FROM PacientesTelef WHERE id_paciente = @id_paciente
	DELETE FROM PacientesHeader WHERE id_paciente = @id_paciente
END
