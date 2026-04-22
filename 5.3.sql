-- 5.3. A partir de la vista anterior, mostrar solamente a los médicos que tengan 2 a más especialidades.
SELECT nombresM, paternoM, maternoM, COUNT(nombreEsp) AS total_especialidades
FROM v_medicos_especialidades
GROUP BY nombresM, paternoM, maternoM
HAVING COUNT(nombreEsp) >= 2;
