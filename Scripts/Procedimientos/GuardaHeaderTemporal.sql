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
  UPDATE  PacientesHeaderTmp 
  SET 
  	cod_hospital = ISNULL(@hospital, 0),
    cod_doctor = ISNULL(@doctor, 0),
    cod_estado_paciente = ISNULL(@estado, 0),
    cod_diagnostico = ISNULL(@diagnostico, 0),
    txt_nombre = ISNULL(@nombre, ''), 
    txt_nombre2 = ISNULL(@nombre2, ''),
    txt_apellido = ISNULL(@apellido, ''),
    txt_apellido2 = ISNULL(@apellido2, ''),
    cod_sexo = ISNULL(@sexo, 0),
    fec_nacimiento = ISNULL(@fec_nac, GETDATE()),
    edad_anos = ISNULL(@edad_anos, 0),
    edad_meses = ISNULL(@edad_meses, 0),
    usuario_alta = ISNULL(@usuario, 0)
  WHERE
  	id_paciente_tmp = @id_paciente
END
