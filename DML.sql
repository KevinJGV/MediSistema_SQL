USE MediSistema;

INSERT INTO Roles (nombre) VALUES ('Medico Titular'), ('Medico Sustituto'), ('Empleado de otra area');

INSERT INTO Horarios (descripcion, hora_inicio, hora_fin) 
VALUES ('Mañana', '08:00', '14:00'), ('Tarde', '14:00', '20:00'), ('Noche', '20:00', '08:00');

INSERT INTO Personal (nombre, id_rol, id_horario_actual, tipo_personal) 
VALUES 
('Dr. Juan Mariño', 1, 1, 'Medico'),
('Dr. Ana Lopez', 2, 2, 'Medico'),
('Dr. Luis Martínez', 1, 3, 'Medico'),
('Carlos Sanchez', 3, NULL, 'Empleado');

INSERT INTO Vacaciones (cedula, fecha_inicio, fecha_fin, estado) 
VALUES 
(1, '2024-01-01', '2024-01-15', 'Disfrutada'),
(2, '2024-07-01', '2024-07-10', 'Planificada'),
(3, '2024-08-01', '2024-08-20', 'Disfrutada');

INSERT INTO Sustituciones (cedula_sustituido, cedula_sustituto, fecha_inicio, fecha_fin) 
VALUES 
(1, 3, '2024-08-01', '2024-08-20'),
(2, 3, '2024-07-01', '2024-07-10');

INSERT INTO Pacientes (nombre) 
VALUES 
('Pedro Gomez'), ('Lucia Fernandez'), ('Marta Ruiz'), ('Jorge Herrera');

INSERT INTO Asignaciones_Medicos_Pacientes (cedula_paciente, cedula_medico, fecha_asignacion) 
VALUES 
(1, 1, '2024-05-01'),
(2, 1, '2024-05-02'),
(3, 2, '2024-06-01'),
(4, 2, '2024-06-02');