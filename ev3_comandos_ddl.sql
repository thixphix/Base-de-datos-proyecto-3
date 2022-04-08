CREATE TABLE producto (
  barcode VARCHAR(50) PRIMARY KEY,
  nombre_producto VARCHAR(50) NOT NULL,
  decripcion VARCHAR(50) NOT NULL,
  precio_unidad FLOAT
);

CREATE TABLE inventario (
  id_inventario INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  barcode VARCHAR(50) NOT NULL,
  existencias_productos INT,
  CONSTRAINT producto_fk
  FOREIGN KEY (barcode)
  REFERENCES producto(barcode)
);

CREATE TABLE proveedor (
  rif_proveedor VARCHAR(50) PRIMARY KEY,
  nombre_empresarial VARCHAR(90) NOT NULL,
  tlfn_proveedor VARCHAR(20) NOT NULL,
  direccion_proveedor VARCHAR(200) NOT NULL
);

CREATE TABLE entrada (
  id_entrada INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  rif_proveedor VARCHAR(50) NOT NULL,
  fecha_entrada DATE,
  CONSTRAINT proveedor_fk
  FOREIGN KEY (rif_proveedor)
  REFERENCES proveedor(rif_proveedor)
);

CREATE TABLE producto_entrada (
  id_producto_entrada INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  barcode VARCHAR(50) NOT NULL,
  id_entrada INT,
  cantidad INT, 
  CONSTRAINT producto_fk 
  FOREIGN KEY (barcode)
  REFERENCES producto(barcode),
  CONSTRAINT entrada_fk
  FOREIGN KEY (id_entrada)
  REFERENCES entrada(id_entrada)
);

CREATE TABLE cliente (
  cedula_cliente INT PRIMARY KEY,
  nombre_cliente VARCHAR(50) NOT NULL,
  apellido_cliente VARCHAR(50) NOT NULL,
  tlfn_cliente VARCHAR(50) NOT NULL,
  direccion_cliente VARCHAR(200) NOT NULL,
  correo_cliente TEXT
);

CREATE TABLE salida (
  id_salida INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  cedula_cliente INT,
  precio_total FLOAT,
  fecha_salida DATE,
  CONSTRAINT cliente_fk 
  FOREIGN KEY (cedula_cliente)
  REFERENCES cliente(cedula_cliente)
);

CREATE TABLE producto_salida (
  id_producto_salida integer PRIMARY KEY,
  barcode VARCHAR(50),
  id_salida integer,
  cantidad integer,
  CONSTRAINT producto_fk 
  FOREIGN KEY (barcode)
  REFERENCES producto(barcode),
  CONSTRAINT salida_fk 
  FOREIGN KEY (id_salida)
  REFERENCES salida(id_salida)
);


