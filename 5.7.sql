-- 5.7. Crear una vista que muestre los nombres de los pacientes cuyos diagnósticos no estén relacionados con ninguna enfermedad.
CREATE OR REPLACE VIEW v_pacientes_sin_enfermedad AS
SELECT DISTINCT p.nombresP, p.paternoP, p.maternoP
FROM tPaciente p
JOIN tDiagnostico d ON p.codP = d.codP
WHERE d.codD NOT IN (SELECT codD FROM tEnfermedadEnElDiagnostico);
SELECT * FROM v_pacientes_sin_enfermedad;
