-- Crear usuario CAS (permisos locales)
CREATE USER 'cas_user'@'localhost' IDENTIFIED BY 'CasPass2026!';
GRANT ALL PRIVILEGES ON contratos.* TO 'cas_user'@'localhost';
FLUSH PRIVILEGES;

-- Crear BBDD contratos
CREATE DATABASE contratos CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE contratos;

-- Tabla contratos
CREATE TABLE contratos (
  uid VARCHAR(50) PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  activo BOOLEAN DEFAULT TRUE,
  fecha_inicio DATE,
  fecha_fin DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Datos ejemplo
INSERT INTO contratos (uid, nombre, activo, fecha_fin) VALUES 
('amh09h', 'Antonio Mayol', TRUE, '2026-12-31'),
('med01j', 'Juan García', TRUE, '2026-11-30'),
('enf02m', 'María Rodríguez', FALSE, '2025-12-31'),  -- Sin contrato
('alp04r', 'Alberto Penaranda', TRUE, '2026-12-31'),
('med08p', 'Alejandro Mayol', TRUE, '2026-12-31'),
('tic05j', 'Javier Rodríguez', TRUE, '2026-12-31');

