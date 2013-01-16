SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.GuardaHeaderTemporal
(@id_paciente INT, 
@hospital INT = NULL, 
@doctor INT = NULL, 
@estado INT = NULL, 
@diagnostico INT = NULL, 
@nombre VARCHAR(30) = NULL,
@nombre2 VARCHAR(30) = NULL,
@apellido VARCHAR(30) = NULL,
@apellido2 VARCHAR(30) = NULL,
@sexo INT = NULL,
@fec_nac DATE = NULL, 
@edad_anos INT = NULL,
@edad_meses INT = NULL, 
@usuario INT = NULL)
AS
BEGIN
  INSERT INTO PacientesHeaderTmp 
  SELECT 
  	@id_paciente, 
    ISNULL(@hospital, 0),
    ISNULL(@doctor, 0),
    ISNULL(@estado, 0),
    ISNULL(@diagnostico, 0),
    ISNULL(@nombre, 0), 
    ISNULL(@nombre2, 0),
    ISNULL(@apellido, 0),
    ISNULL(@apellido2, 0),
    ISNULL(@sexo, 0),
    ISNULL(@fec_nac, GETDATE()),
    ISNULL(@edad_anos, 0),
    ISNULL(@edad_meses, 0),
    ISNULL(@usuario, 0)
END
