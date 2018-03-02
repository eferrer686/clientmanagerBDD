CREATE VIEW `telefonoPersona` AS
    SELECT 
        p.idPersona,p.nombre,t.idTelefono,t.numero
    FROM
        persona AS p
            JOIN
        persona_has_telefono AS pt
            JOIN
        telefono AS t
    WHERE
        p.idPersona = pt.Persona_idPersona
            AND pt.Telefono_idTelefono = t.idTelefono;