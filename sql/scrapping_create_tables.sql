CREATE TABLE IF NOT EXISTS ofertas (
  id SERIAL NOT NULL,
  nombre varchar(50) NOT NULL,
  fecha_inicio date,
  fecha_final date,
  precio integer,
  comuna varchar(50),
  region varchar(50),
  proveedor varchar(50),
  PRIMARY KEY (id)
);