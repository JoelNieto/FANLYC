SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.TrasladaTemporal
(@id_paciente_tmp INT, 
 @id_paciente INT)
AS
BEGIN
  
	IF EXISTS (SELECT 1 FROM PacientesDireccion WHERE id_paciente = @id_paciente)
    	DELETE FROM PacientesDireccion WHERE id_paciente = @id_paciente
         
    IF EXISTS (SELECT 1 FROM PacientesPadres WHERE id_paciente = @id_paciente)
    	DELETE FROM PacientesPadres WHERE id_paciente = @id_paciente
        
    IF EXISTS (SELECT 1 FROM PacientesTelef WHERE id_paciente = @id_paciente)
    	DELETE FROM PacientesTelef WHERE id_paciente = @id_paciente
  
  	IF EXISTS (SELECT 1 FROM PacientesHeader WHERE id_paciente = @id_paciente)
    	DELETE FROM PacientesHeader WHERE id_paciente = @id_paciente      
            
INSERT INTO PacientesHeader 
	(id_paciente, 
	cod_hospital, 
	cod_doctor, 
	cod_estado_paciente, 
	cod_diagnostico, 
	txt_nombre, 
	txt_nombre2, 
	txt_apellido, 
	txt_apellido2, 
	cod_sexo, 
	fec_nacimiento,
	edad_anos, 
	edad_meses, 
	usuario_alta)
SELECT 
	@id_paciente, 
	[cod_hospital], 
	[cod_doctor], 
	[cod_estado_paciente], 
	[cod_diagnostico], 
	[txt_nombre], 
	[txt_nombre2], 
	[txt_apellido], 
	[txt_apellido2], 
	[cod_sexo], 
	[fec_nacimiento], 
	[edad_anos], 
	[edad_meses], 
	[usuario_alta] 
FROM 
	PacientesHeaderTmp
WHERE 
	id_paciente_tmp = @id_paciente_tmp	

    	
INSERT INTO PacientesDireccion 
	([id_paciente], 
    [ind_direccion], 
    [cod_provincia], 
    [cod_distrito], 
    [cod_corregimiento], 
    [txt_barrio], 
    [txt_calle], 
    [txt_edificio], 
    [txt_apto], 
    [txt_direccion_completa])
SELECT 
	@id_paciente, 
    [ind_direccion], 
    [cod_provincia], 
    [cod_distrito], 
    [cod_corregimiento], 
    [txt_barrio], 
    [txt_calle], 
    [txt_edificio], 
    [txt_apto], 
    [txt_direccion_completa] 
FROM 
    PacientesDireccionTmp
WHERE
	id_paciente_tmp = @id_paciente_tmp

    
INSERT INTO PacientesTelef 
	([id_paciente], 
	[ind_telef], 
	[cod_tipo_telef], 
	[txt_telef])
SELECT 
	@id_paciente, 
	[ind_telef], 
    [cod_tipo_telef], 
    [txt_telef] 
FROM 
	PacientesTelefTmp
WHERE
    id_paciente_tmp = @id_paciente_tmp
    

INSERT INTO PacientesPadres 
	([id_paciente], 
    [cod_padres], 
    [txt_nombre_padre], 
    [txt_apellidos_padre])
SELECT 
	@id_paciente, 
	[cod_padres], 
    [txt_nombre_padre], 
    [txt_apellidos_padre] 
FROM 
	PacientesPadresTmp
WHERE 
	id_paciente_tmp = @id_paciente_tmp
    
END
