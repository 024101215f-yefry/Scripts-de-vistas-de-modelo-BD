-- 5.5. Crear una vista que muestre a todas las especialidades para las cuales aún no se tengan médicos.
CREATE OR REPLACE VIEW v_especialidades_sin_medico AS
SELECT * FROM tEspecialidad
WHERE codEsp NOT IN (SELECT codEsp FROM tEspecialidadDelMedico);
SELECT * FROM v_especialidades_sin_medico;
