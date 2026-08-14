-- Migration: 20260815120000_add_email_to_cliente.sql
-- Descripcion: Agrega campo email a la tabla cliente

ALTER TABLE cliente
    ADD COLUMN IF NOT EXISTS email VARCHAR(255);

COMMENT ON COLUMN cliente.email IS 'Correo electronico de contacto del cliente (opcional)';