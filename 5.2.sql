-- 5.2. A partir de la vista anterior, mostrar cuántas especialidades tiene cada médico.
SELECT nombresM, paternoM, maternoM, COUNT(nombreEsp) AS total_especialidades
FROM v_medicos_especialidades
GROUP BY nombresM, paternoM, maternoM;

SELECT * FROM v_medicos_especialidades;
