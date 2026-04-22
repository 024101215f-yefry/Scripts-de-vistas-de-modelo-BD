-- 5.6. A partir de la vista anterior, mostrar cuántas especialidades aún no tienen médico en la Clínica.
SELECT COUNT(*) AS total_especialidades_sin_medico 
FROM v_especialidades_sin_medico;
SELECT * FROM v_especialidades_sin_medico;
