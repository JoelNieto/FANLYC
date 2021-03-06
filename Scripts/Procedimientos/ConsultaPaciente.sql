SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].ConsultaPaciente
(
	@texto varchar(30)
)
AS
	SET NOCOUNT ON;
SELECT         PacientesHeader.id_paciente AS ID, PacientesHeader.txt_nombre AS Nombre, PacientesHeader.txt_apellido AS Apellido, Sexo.txt_sexo AS Sexo, Hospitales.txt_desc_hospital AS Hospital, Doctores.txt_nom_doctor AS Doctor, EstadosPaciente.txt_desc_estado AS Estado, Provincias.txt_provincia AS Provincia, 
                          Distritos.txt_distrito AS Distrito
FROM             PacientesHeader INNER JOIN
                          Hospitales ON PacientesHeader.cod_hospital = Hospitales.cod_hospital INNER JOIN
                          Doctores ON PacientesHeader.cod_doctor = Doctores.cod_doctor INNER JOIN
                          PacientesDireccion ON PacientesHeader.id_paciente = PacientesDireccion.id_paciente INNER JOIN
                          Provincias ON PacientesDireccion.cod_provincia = Provincias.cod_provincia INNER JOIN
                          Distritos ON Provincias.cod_provincia = Distritos.cod_provincia AND PacientesDireccion.cod_distrito = Distritos.cod_distrito INNER JOIN
                          Sexo ON PacientesHeader.cod_sexo = Sexo.cod_sexo INNER JOIN
                          EstadosPaciente ON PacientesHeader.cod_estado_paciente = EstadosPaciente.cod_estado
WHERE         (PacientesHeader.txt_nombre LIKE @texto) OR
                          (PacientesHeader.txt_apellido LIKE @texto)