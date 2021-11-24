CREATE TABLE IF NOT EXISTS scrapings (
  id SERIAL NOT NULL,
  nombreDb varchar(50) NOT NULL,
  ultimaTupla integer DEFAULT 0,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS regiones (
  id SERIAL NOT NULL,
  nombre varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS consideraciones_medicas (
  id SERIAL NOT NULL,
  nombre varchar(50) NOT NULL,
  descripcion varchar(256),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS proveedores (
  id SERIAL NOT NULL,
  nombre varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS comunas (
  id SERIAL NOT NULL,
  nombre varchar(50) NOT NULL,
  id_region INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_region 
    FOREIGN KEY(id_region) 
      REFERENCES regiones(id)
);

CREATE TABLE IF NOT EXISTS usuarios (
  id SERIAL NOT NULL,
  nombre varchar(300) NOT NULL,
  correo varchar(320) NOT NULL,
  fecha_nacimiento date NOT NULL,
  id_comuna INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_comuna
    FOREIGN KEY(id_comuna)
  REFERENCES comunas(id)
);

CREATE TABLE IF NOT EXISTS historial_busquedas (
  id SERIAL NOT NULL,
  consulta text NOT NULL,
  frecuencia integer NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_usuario
    FOREIGN KEY(id_usuario) 
  REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS ofertas_turisticas (
  id SERIAL NOT NULL,
  nombre varchar(100) NOT NULL,
  precio integer NOT NULL,
  fecha_inicio date NOT NULL,
  fecha_final date NOT NULL,
  id_proveedor INT NOT NULL,
  id_comuna INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_proveedor
    FOREIGN KEY(id_proveedor) 
      REFERENCES proveedores(id),
  CONSTRAINT fk_comuna
    FOREIGN KEY(id_comuna)
      REFERENCES comunas(id)
);


-- Tablas intermedias

CREATE TABLE IF NOT EXISTS historial_regiones (
  id INT NOT NULL,
  frecuencia integer NOT NULL,
  id_region INT NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_region
    FOREIGN KEY(id_region) 
      REFERENCES regiones(id),
  CONSTRAINT fk_usuario
    FOREIGN KEY(id_usuario)
      REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS historial_comunas (
  id INT NOT NULL,
  frecuencia integer NOT NULL,
  id_comuna INT NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_comuna
    FOREIGN KEY(id_comuna) 
      REFERENCES comunas(id),
  CONSTRAINT fk_usuario
    FOREIGN KEY(id_usuario)
      REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS usuario_consideraciones (
  id INT NOT NULL,
  id_consideracion INT NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_consideracion
    FOREIGN KEY(id_consideracion) 
      REFERENCES consideraciones_medicas(id),
  CONSTRAINT fk_usuario
    FOREIGN KEY(id_usuario)
      REFERENCES usuarios(id)
);

CREATE TABLE IF NOT EXISTS historial_ofertas (
  id INT NOT NULL,
  id_oferta INT NOT NULL,
  id_usuario INT NOT NULL,
  frecuencia integer NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_oferta
    FOREIGN KEY(id_oferta) 
      REFERENCES ofertas_turisticas(id),
  CONSTRAINT fk_usuario
    FOREIGN KEY(id_usuario)
      REFERENCES usuarios(id)
);


CREATE TABLE IF NOT EXISTS oferta_consideraciones (
  id INT NOT NULL,
  id_oferta INT NOT NULL,
  id_consideracion INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_oferta
    FOREIGN KEY(id_oferta) 
      REFERENCES ofertas_turisticas(id),
  CONSTRAINT fk_consideracion
    FOREIGN KEY(id_consideracion)
      REFERENCES consideraciones_medicas(id)
);
