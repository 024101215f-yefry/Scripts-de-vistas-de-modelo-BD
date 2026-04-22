-- 5.1. Crear una vista para mostrar todos los datos de los médicos y sus especialidades.
CREATE OR REPLACE VIEW v_medicos_especialidades AS
SELECT m.*, e.nombreEsp, e.descripcionEsp
FROM tMedico m
JOIN tEspecialidadDelMedico em ON m.codM = em.codM
JOIN tEspecialidad e ON em.codEsp = e.codEsp;
SELECT * FROM v_medicos_especialidades;
