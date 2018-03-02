CREATE VIEW `telefonoGiro` AS
    SELECT 
        g.idGiro,t.idTelefono,t.numero
    FROM
        giro AS g
            JOIN
        giro_has_telefono AS gt
            JOIN
        telefono AS t
    WHERE
        g.idGiro = gt.Giro_idGiro
            AND gt.Telefono_idTelefono = t.idTelefono;