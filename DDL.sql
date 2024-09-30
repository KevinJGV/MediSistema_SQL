CREATE DATABASE MediSistema;
USE MediSistema;

CREATE TABLE Roles (
    id_rol INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Horarios (
    id_horario INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(50) NOT NULL UNIQUE, 
    hora_inicio TIME NOT NULL,        
    hora_fin TIME NOT NULL            
);

CREATE TABLE Personal (
    cedula INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    id_rol INT NOT NULL,
    id_horario_actual INT NULL,
    tipo_personal ENUM('Medico', 'Empleado') NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol),
    FOREIGN KEY (id_horario_actual) REFERENCES Horarios(id_horario)
);

CREATE TABLE Vacaciones (
    id_vacacion INT PRIMARY KEY AUTO_INCREMENT,
    cedula INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    estado ENUM('Planificada', 'Disfrutada') NOT NULL,
    FOREIGN KEY (cedula) REFERENCES Personal(cedula)
);

CREATE TABLE Sustituciones (
    id_sustitucion INT PRIMARY KEY AUTO_INCREMENT,
    cedula_sustituido INT NOT NULL,
    cedula_sustituto INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    FOREIGN KEY (cedula_sustituido) REFERENCES Personal(cedula),
    FOREIGN KEY (cedula_sustituto) REFERENCES Personal(cedula)
);

CREATE TABLE Pacientes (
    cedula INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Asignaciones_Medicos_Pacientes (
    id_asignacion INT PRIMARY KEY AUTO_INCREMENT,
    cedula_paciente INT NOT NULL,
    cedula_medico INT NOT NULL,
    fecha_asignacion DATE NOT NULL,
    FOREIGN KEY (cedula_paciente) REFERENCES Pacientes(cedula),
    FOREIGN KEY (cedula_medico) REFERENCES Personal(cedula)
);