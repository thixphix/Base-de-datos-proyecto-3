--TABLA DE PRODUCTOS
INSERT INTO producto(barcode, nombre_producto, descripcion, precio_unidad) VALUES (7598039000090, 'ALIMENTOS YARACUY', 'Harina de Maiz Amarillo', 2.50), 
(7595046000013, 'ANACOCO', 'ARROZ BLANCO', 1.20), (8690828613883, 'ZOMATO', 'SPAGHETTI', 0.70), 
(8690828629839, 'AMICO', 'SPAGHETTI', 0.50), (7594002410033, 'SANTA ANA', 'CAFE GOURMET', 0.30), 
(7591357020627, 'KONFIT', 'AZUCAR BLANCO', 0.80), (7597417000462, 'MARY', 'PASTA DE PLUMA', 1.00),
(7591016204894, 'MAGGI', 'SOPA DE POLLO', 0.10), (7707323130324, 'SALTITACOS', 'GALLETAS SALADAS', 0.50),
(7591098800199, 'HOUSEHOLD NAPKINS', 'SERVILLETAS DE MESA', 1.70), (7596914000388, 'SAN SIMON', 'LECHE EN POLVO', 2.10), 
(722776001509, 'SPLENDA', 'SOBRES DE AZUCAR', 0.5), (7591002000011, 'PAN', 'HARINA DE MAIZ BLANCO', 1.20),
(7595751000056, 'SZY PACK' 'BOLSAS CON SLIDER', 3.50), (7591049222155, 'VATEL', 'ACEITE COMESTIBLE DE SOYA', 2.30), 
(8437012700307, 'CAPRI', 'ACEITE DE OLIVA', 1.40), (7702024059998, 'NESCAFE', 'CAFE SOLUBLE', 3.60);

--TABLA DE INVENTARIO
INSERT INTO inventario(id_inventario, barcode, existencias_productos) VALUES (1, 7598039000090, 22), 
(2, 7595046000013, 7), (3, 8690828613883, 9), (4, 8690828613883, 20), (5, 7594002410033, 20), 
(6, 7591357020627, 12), (7, 7597417000462, 17), (8, 7591016204894, 15), (9, 7707323130324, 5), 
(10, 7591098800199, 8), (11, 7596914000388, 6), (12, 722776001509, 50), (13, 7591002000011, 12),
(14, 7595751000056, 15), (15, 7591049222155, 10), (16, 8437012700307, 5), (17, 7702024059998, 30);

--TABLA DE PROVEEDORES
INSERT INTO proveedor(rif_proveedor, nombre_empresarial, tlfn_proveedor, direccion_proveedor) VALUES ('J-41253307-0', 'DISTRIBUIDORA DAYKARI. C.A', '02611234567', 'Corredor Agroindustrial, Via Aguaruca, Diagonal a los sitios de Agropatria Jose Juaquin Veroes, Municipio Urachiche Edo. Yaracuy'), 
('J-08510030-0', 'MOLINOS ANACOCO, S.A.', '02558083747', 'Avenida 31, Zona Industrial Araure, Araure - Estado Portuguesa'), 
('J-12345678-0', 'TURK MALI', '04242345678', 'Turquia'), ('J-23456789-0', 'TURK MALI', '04242345678', 'Turquia'), 
('J-09008325-1', 'ALEJANDRO GIL & CIA', '02724148390', 'Calle Bolivar, Sec. Centro, Santa Ana, Trujillo, Venezuela'), 
('J-08515184-2', 'Central El Palmar, S.A.', '02443901000', 'San Mateo, Edo. Aragua'), ('J-29907586-8', 'Industrias Integradas de Alimentos INALSA, S.A.', '04168043910', 'Barquisimento, Edo. Lara'), 
('J-00012926-6', 'NESTLE VENEZUELA', '0800NESTLE1', 'El Tucuyo, Edo. Lara'), ('J-01315290-2', 'INDUSTRIAS TOMY S.A.S.', '6063401206', 'LUGAR KILOMETRO 2 MAS 100 METROS VIA CERRITOS LA VIRGINIA, PEREIRA, RISARALDA'),
('J-00028115-7', 'Papeles Venezolanos C.A. - PAVECA', '582454003430', 'Carretera Nacional Guacara, San Joaquin. Edo. Carabobo - Venezuela'), 
('J-41257799-9', 'INVERSIONES LACTEAS SAN SIMON, C.A.', '02759300004', 'K.M.52, CASERIO SAN RAFAEL, EL GUAYABO, EDO. ZULIA'), 
('J-46032366-9', 'TC Heartland, LLC CARMEL, IN', '3175669750', 'Estados Unidos'), ('J-00041312-6', 'Alimentos Polar Comercial, C.A.', '02614567891', 'Turmero, Edo. Aragua'), 
('J-40229216-3', 'INVERSIONES OCHO CEROS, C.A.', '2122854249', 'Venezuela'), ('J-07032176-8', 'Cargil de Venezuela, S.R.L.', '02616369584', 'Urb. Los Palos Grandes, Caracas'), 
('J-29899126-7', 'Comerciaizadora Ameriven C.A.', '2122854249', 'Edo. Miranda - Venezuela',), 
('J-00087272-0', 'NESTLE COLOMBIA, S.A.', '018000515566', 'Colombia');

--TABLA DE ENTRADAS
INSERT INTO entrada(id_entrada, rif_proveedor, fecha_entrada) VALUES (1, 'J-00012926-6', '07/04/2022'), (2, 'J-00041312-6', '06/02/2022'),
(3, 'J-40229216-3', '09/03/2022'), (4, 'J-09008325-1', '08/04/2022');

--TABLA DE PRODUCTO_ENTRADA
INSERT INTO producto_entrada(id_producto_entrada, barcode, id_entrada, cantidad) VALUES (1, '7591016204894', )