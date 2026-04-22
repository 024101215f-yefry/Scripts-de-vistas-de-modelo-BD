-- 5.4. Crear una vista que muestre solamente a las enfermedades que aún no se hayan detectado en los diagnósticos.
CREATE OR REPLACE VIEW v_enfermedades_no_detectadas AS
SELECT * FROM tEnfermedad
WHERE code NOT IN (SELECT codE FROM tEnfermedadEnElDiagnostico);
SELECT * FROM v_enfermedades_no_detectadas;
