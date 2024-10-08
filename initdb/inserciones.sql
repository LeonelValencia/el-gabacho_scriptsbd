USE el_gabacho;

INSERT INTO telefonosEmpresa (numero, tipo) VALUES 
('7341641332','WHATSAPP'),
('7341641326','WHATSAPP'),
('7342060902','FIJO'),
('7346901508','FIJO');

INSERT INTO configuracion (correo, direccion, encabezado, footer) VALUES
('ejemplo@gmail.com','carretera jojutla-alpuyeca km 7.5, Jojutla, Mexico','AUTOPARTES Y CRISTALES EL GABACHO','Tienes 30 dias de gararntia');

INSERT INTO horario (dias, horaInicio, horaFin) VALUES 
('LUNES A VIERNES','8AM','6PM'),
('SABADOS Y DOMINGOS','8AM','3PM');

-- INSERCIONES A LA TABLA ROLES (SOLO 3 ROLES)

INSERT INTO roles (nombre, descripcion) VALUES ("ADMINISTRADOR","Usuario que tendra todos los privilegios");
INSERT INTO roles (nombre, descripcion) VALUES ("ALMACEN","Encargado y acceso a ciertas vistas que el admin");
INSERT INTO roles (nombre, descripcion) VALUES ("CAJERO","Solo es atender y realizar una venta");

-- INSERCIONES A LA TABLA USUARIOS CON LOS ROLES

INSERT INTO usuarios (idRol, nombreCompleto, usuario, contrasenia) VALUES (1, "Juan", "Juan123", "scrypt:32768:8:1$31Hkd7DnZxA0umbb$d9c96a90882805a5f41c4643675681494d832b2e68485577a877a3087bdd56958aba3f87ebefd608b9cb04432fa0062fc691ecbb766e55a6436ea2a28a9e4543");
INSERT INTO usuarios (idRol, nombreCompleto, usuario, contrasenia) VALUES (2, "Francisco", "Francisco123", "scrypt:32768:8:1$A5OKM59G4i6CmMN8$8d58adfe7b3b587a350d879e2cde80b78321d239584fd6912bd181c7b3a37c859299c7897dc59adbd55346ee79bb38dc550bd74fe0f979aa694ec92d336e3586");
INSERT INTO usuarios (idRol, nombreCompleto, usuario, contrasenia) VALUES (3, "Alma", "Alma123", "scrypt:32768:8:1$TGDW5VvLAcMcCHbF$822b1adc67f78d47cfa436eef9881cf74a3f88da3442a9fcb818458be15905744bc9c197aace0fb69cfcd0eada9480ddbf2821acc6fd1f6cc373a2720c48ccf5");

-- INSERCIONES A LA TABLA CLIENTES
INSERT INTO clientes (nombre) VALUES ('PUBLICO GENERAL');

-- INSERCIONES A LA TABLA PROVEEDORES
INSERT INTO proveedores (empresa, telefono, correo) VALUES
('APYMSA', NULL, NULL),
('AUTOMAGIC', NULL, NULL),
('AVANTI', NULL, NULL),
('BRUCK', NULL, NULL),
('CITSA', NULL, NULL),
('DEPO', NULL, NULL),
('DON LEO', NULL, NULL),
('ELECTRO', NULL, NULL),
('EUROGLAS', NULL, NULL),
('GARBO', NULL, NULL),
('GRIMEX', NULL, NULL),
('GUTIERREZ', NULL, NULL),
('IAPSA', NULL, NULL),
('INTERGLASS', NULL, NULL),
('LEGAZPI', NULL, NULL),
('MANIJAUTO','3336190362','ventas@manijauto.com.mx'),
('MIRSA', NULL, NULL),
('NACIONAL', NULL, NULL),
('OROZCO', NULL, NULL),
('PERNO', NULL, NULL),
('PUEBLA', NULL, NULL),
('QUEZADA', NULL, NULL),
('RADEC','3336190505',NULL),
('RALTE', NULL, NULL),
('ROGODI', NULL, NULL),
('SAINTGOBAIN', NULL, NULL),
('SANGOBAY', NULL, NULL),
('SERVA', NULL, NULL),
('TYC', NULL, NULL),
('VITRO', NULL, NULL),
('ZUMPANGO', NULL, NULL);

-- INSERCIONES A LA TABLA UNIDAD MEDIDAS (SOLO 2 TIPOS)

INSERT INTO unidadMedidas (tipoMedida, descripcion) VALUES ("PQ/PZ","Conteo por unidad");
INSERT INTO unidadMedidas (tipoMedida, descripcion) VALUES ("M/CM","Usa enteros y 2 decimales para agranel");

-- INSERCIONES A LA TABLA TIPO PAGO (SOLO 4 TIPOS)

INSERT INTO tipoPagos (tipoPago, descripcion) VALUES ("EFECTIVO","Pago hecho en el local");
INSERT INTO tipoPagos (tipoPago, descripcion) VALUES ("TARJETA","Pago hecho en el local");
INSERT INTO tipoPagos (tipoPago, descripcion) VALUES ("TRANSFERENCIA","Recibe foto de la tranferencia hecha");
INSERT INTO tipoPagos (tipoPago, descripcion) VALUES ("DEPOSITO","Recibe foto del ticket del deposito hecha");

-- INSERCIONES A LA TABLA CATEGORIAS

INSERT INTO categorias (nombre) VALUES ('ABRAZADERAS');
INSERT INTO categorias (nombre) VALUES ('ACTIVADORES');
INSERT INTO categorias (nombre) VALUES ('AJUSTADORES DE SUSPENSION');
INSERT INTO categorias (nombre) VALUES ('AJUSTE DE UNIDAD');
INSERT INTO categorias (nombre) VALUES ('ALERONES');
INSERT INTO categorias (nombre) VALUES ('ALETAS');
INSERT INTO categorias (nombre) VALUES ('ALMA FASCIAS');
INSERT INTO categorias (nombre) VALUES ('AMORTIGUADORES');
INSERT INTO categorias (nombre) VALUES ('ANTI-IMPACTOS');
INSERT INTO categorias (nombre) VALUES ('ARMOR ALL');
INSERT INTO categorias (nombre) VALUES ('BALEROS');
INSERT INTO categorias (nombre) VALUES ('BANDA POLY-V');
INSERT INTO categorias (nombre) VALUES ('BANDA TIEMPO');
INSERT INTO categorias (nombre) VALUES ('BARRA TENSORA');
INSERT INTO categorias (nombre) VALUES ('BASE AMORTIGUADOR');
INSERT INTO categorias (nombre) VALUES ('BASES'); 
INSERT INTO categorias (nombre) VALUES ('BIELETA');
INSERT INTO categorias (nombre) VALUES ('BIGOTERAS');
INSERT INTO categorias (nombre) VALUES ('BISAGRAS');
INSERT INTO categorias (nombre) VALUES ('BISELES');
INSERT INTO categorias (nombre) VALUES ('BOTAGUAS');
INSERT INTO categorias (nombre) VALUES ('BRAZOS');
INSERT INTO categorias (nombre) VALUES ('BRAZO COMPENSADOR');
INSERT INTO categorias (nombre) VALUES ('BRAZO CONTROL');
INSERT INTO categorias (nombre) VALUES ('BRAZO FASCIA');
INSERT INTO categorias (nombre) VALUES ('BRAZO PITMAN');
INSERT INTO categorias (nombre) VALUES ('BRAZO PUENTE');
INSERT INTO categorias (nombre) VALUES ('BRAZOS DEFENSA');
INSERT INTO categorias (nombre) VALUES ('BUJES');
INSERT INTO categorias (nombre) VALUES ('BUJES DE SUSPENSION');
INSERT INTO categorias (nombre) VALUES ('BUJES Y PERNOS');
INSERT INTO categorias (nombre) VALUES ('CAJA DE DIRECCION');
INSERT INTO categorias (nombre) VALUES ('CALAVERAS');
INSERT INTO categorias (nombre) VALUES ('CAMARAS Y SENSORES');
INSERT INTO categorias (nombre) VALUES ('CHAPAS');
INSERT INTO categorias (nombre) VALUES ('CHICOTES');
INSERT INTO categorias (nombre) VALUES ('CILINDROS');
INSERT INTO categorias (nombre) VALUES ('CINCHOS Y SUJETADORES DE CABLE');
INSERT INTO categorias (nombre) VALUES ('COFRES');
INSERT INTO categorias (nombre) VALUES ('COMPLEMENTOS RADIADORES');
INSERT INTO categorias (nombre) VALUES ('CONDENSADORES');
INSERT INTO categorias (nombre) VALUES ('CONECTORES');
INSERT INTO categorias (nombre) VALUES ('CONTROLES');
INSERT INTO categorias (nombre) VALUES ('COPLE DE DIRECCION');
INSERT INTO categorias (nombre) VALUES ('CORREDERAS');
INSERT INTO categorias (nombre) VALUES ('COSTADOS');
INSERT INTO categorias (nombre) VALUES ('CREMALLERAS DE DIRECCION');
INSERT INTO categorias (nombre) VALUES ('CUARTOS');
INSERT INTO categorias (nombre) VALUES ('CUBRE POLVO');
INSERT INTO categorias (nombre) VALUES ('DEFENSAS');
INSERT INTO categorias (nombre) VALUES ('DEPOSITOS');
INSERT INTO categorias (nombre) VALUES ('ELEVADORES');
INSERT INTO categorias (nombre) VALUES ('ESPEJOS');
INSERT INTO categorias (nombre) VALUES ('ESTRIBOS');
INSERT INTO categorias (nombre) VALUES ('EXCENTRICOS');
INSERT INTO categorias (nombre) VALUES ('FAN CLUTCH');
INSERT INTO categorias (nombre) VALUES ('FAROS');
INSERT INTO categorias (nombre) VALUES ('FAROS NIEBLA');
INSERT INTO categorias (nombre) VALUES ('FASCIAS');
INSERT INTO categorias (nombre) VALUES ('FILOS EXTERIORES');
INSERT INTO categorias (nombre) VALUES ('FILTRO ACEITE');
INSERT INTO categorias (nombre) VALUES ('FLECHA HOMOCINETICA');
INSERT INTO categorias (nombre) VALUES ('FOCO UNIVERSAL');
INSERT INTO categorias (nombre) VALUES ('GOMAS');
INSERT INTO categorias (nombre) VALUES ('GRAPAS');
INSERT INTO categorias (nombre) VALUES ('GUIAS');
INSERT INTO categorias (nombre) VALUES ('HORQUILLAS');
INSERT INTO categorias (nombre) VALUES ('HORQUILLAS DE SUSPENSION');
INSERT INTO categorias (nombre) VALUES ('HULES');
INSERT INTO categorias (nombre) VALUES ('INTERRUPTORES');
INSERT INTO categorias (nombre) VALUES ('KITS DE DISTRIBUCION');
INSERT INTO categorias (nombre) VALUES ('LIENZOS Y COSTADOS');
INSERT INTO categorias (nombre) VALUES ('MANGO');
INSERT INTO categorias (nombre) VALUES ('MANIJAS');
INSERT INTO categorias (nombre) VALUES ('MARCO PARRILLA');
INSERT INTO categorias (nombre) VALUES ('MARCO RADIADOR');
INSERT INTO categorias (nombre) VALUES ('MAZA DE RUEDA');
INSERT INTO categorias (nombre) VALUES ('MEDALLONES');
INSERT INTO categorias (nombre) VALUES ('MOLDURAS');
INSERT INTO categorias (nombre) VALUES ('MOTORES');
INSERT INTO categorias (nombre) VALUES ('MOTO-VENTILADOR');
INSERT INTO categorias (nombre) VALUES ('MUELAS PARA PIJA');
INSERT INTO categorias (nombre) VALUES ('PALANCAS');
INSERT INTO categorias (nombre) VALUES ('PANELES');
INSERT INTO categorias (nombre) VALUES ('PARABRISAS');
INSERT INTO categorias (nombre) VALUES ('PARRILLAS');
INSERT INTO categorias (nombre) VALUES ('PERILLAS');
INSERT INTO categorias (nombre) VALUES ('PERNOS');
INSERT INTO categorias (nombre) VALUES ('PIJAS');
INSERT INTO categorias (nombre) VALUES ('PLUMA LIMPIAPARABRISAS');
INSERT INTO categorias (nombre) VALUES ('POLEA');
INSERT INTO categorias (nombre) VALUES ('PORTA PLACAS');
INSERT INTO categorias (nombre) VALUES ('PUERTAS');
INSERT INTO categorias (nombre) VALUES ('RADIADORES');
INSERT INTO categorias (nombre) VALUES ('REJILLAS');
INSERT INTO categorias (nombre) VALUES ('REMACHES');
INSERT INTO categorias (nombre) VALUES ('RESORTE DE SUSPENSION');
INSERT INTO categorias (nombre) VALUES ('RETENEDORES');
INSERT INTO categorias (nombre) VALUES ('ROLLO MOLDURA');
INSERT INTO categorias (nombre) VALUES ('ROTULOS');
INSERT INTO categorias (nombre) VALUES ('SALPICADEROS');
INSERT INTO categorias (nombre) VALUES ('SEGUROS');
INSERT INTO categorias (nombre) VALUES ('SEGUROS DE PRESION');
INSERT INTO categorias (nombre) VALUES ('SOPORTE BARRA TENSORA');
INSERT INTO categorias (nombre) VALUES ('SOPORTE MOTOR');
INSERT INTO categorias (nombre) VALUES ('SPOYLER');
INSERT INTO categorias (nombre) VALUES ('SWITCH DE IGNICION');
INSERT INTO categorias (nombre) VALUES ('TAPA CAJA');
INSERT INTO categorias (nombre) VALUES ('TAPONES');
INSERT INTO categorias (nombre) VALUES ('TENSOR');
INSERT INTO categorias (nombre) VALUES ('TERMINALES');
INSERT INTO categorias (nombre) VALUES ('TIRANTE');
INSERT INTO categorias (nombre) VALUES ('TOLVAS');
INSERT INTO categorias (nombre) VALUES ('TOMA AGUA');
INSERT INTO categorias (nombre) VALUES ('TOPES PARA COFRE');
INSERT INTO categorias (nombre) VALUES ('TORNILLO ESTABILIZADOR');
INSERT INTO categorias (nombre) VALUES ('TORNILLOS');
INSERT INTO categorias (nombre) VALUES ('TUBO ENFRIAMIENTO');
INSERT INTO categorias (nombre) VALUES ('TUERCA DE MARIPOSA');
INSERT INTO categorias (nombre) VALUES ('TUERCA RAPIDA Y DE PRESION');
INSERT INTO categorias (nombre) VALUES ('VAMPIRO PARA CRISTAL');
INSERT INTO categorias (nombre) VALUES ('VARILLA LATERAL');
INSERT INTO categorias (nombre) VALUES ('VARIOS');
INSERT INTO categorias (nombre) VALUES ('VARIOS LAMINA');
INSERT INTO categorias (nombre) VALUES ('VARIOS MICA');
INSERT INTO categorias (nombre) VALUES ('VENTANILLAS CORREDIZAS');
INSERT INTO categorias (nombre) VALUES ('VIDRIOS');
INSERT INTO categorias (nombre) VALUES ('VISERAS');

-- INSERCIONES A LA TABLA MARCA
INSERT INTO marcas (nombre, urlLogo) VALUES
('ACURA','https://lofrev.net/wp-content/photos/2014/08/Acura-logo.gif'),
('ALFA ROMEO', 'https://www.pngmart.com/files/9/Alfa-Romeo-Logo-PNG-Image.png'),
('AMC', 'https://logos-world.net/wp-content/uploads/2022/12/American-Motors-Corporation-Logo-500x281.png'),
('AUDI','https://cdn-1.webcatalog.io/catalog/audi/audi-icon-filled-256.webp?v=1714773286403'),
('BMW','https://logos-download.com/wp-content/uploads/2016/02/BMW_logo_big_transparent_png-700x700.png'),
('BUICK', 'https://keyautocompany.com/wp-content/uploads/2018/03/buick-logo.png'),
('CADILLAC', 'https://www.pngarts.com/files/3/Cadillac-Logo-PNG-Image.png'),
('CAMION', 'https://www.pngmart.com/files/23/Truck-Logo-PNG-File.png'),
('CATERPILLAR', 'https://www.pngall.com/wp-content/uploads/5/Caterpillar-Logo-PNG-HD-Quality.png'),
('CHANGAN', 'https://www.tc-performance.com/gfx/logo/changan.png'),
('CHEVROLET','https://www.visionxeurope.com/wp-content/uploads/sites/13/2022/03/rindab-chevrolet-logo.webp'),
('CHIREY', 'https://seminuevosfarrera.com/static/media/logo-chirey.3c684ce3.png'),
('CHRYSLER','https://natalex-images.s3.eu-north-1.amazonaws.com/min_2e0ecf16-843f-4183-ad64-37d6b510c90a.webp'),
('CUPRA', 'https://www.recambiosoriginal.com/server/Portal_0011062/img/manufacturers/manufacturer_img2_287158.PNG'),
('DATSUN', 'https://seeklogo.com/images/D/datsun-logo-FE6AB70DA0-seeklogo.com.png'),
('DINA','https://iconape.com/wp-content/files/tk/162664/png/dina-logo.png'),
('DODGE', 'https://frontgas.de/wp-content/uploads/2020/06/dodge-logo.png'),
('EAGLE', 'https://image.jimcdn.com/app/cms/image/transf/dimension=177x10000:format=png/path/s3cf792cad773e861/image/i082edada404d5365/version/1604305779/eagle-car-logo.png'),
('FAW', 'https://www.znkmotors.com/autoparts/wp-content/uploads/sites/3/2023/09/FAW-logo.webp'),
('FIAT','https://elektrobip.pl/images/fiat.webp'),
('FORD','https://natalex-images.s3.eu-north-1.amazonaws.com/min_499e47a8-2d4c-4339-b87e-c61b608a6b9a.webp'),
('FOTON', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgejrLvWatVih-LP_327m4fMCMO74Nz1yiTg&s'),
('FREIGHTLINER','https://cdn.shopify.com/s/files/1/1029/5377/products/FL_Logos_4_1024x1024.png?v=1496304150'),
('GMC', 'https://seeklogo.com/images/G/gmc-logo-CA04340D92-seeklogo.com.png'),
('HINO','https://aespares.wpenginepowered.com/wp-content/uploads/2017/07/Hino-logo-300x279.png'),
('HONDA','https://cdn-1.webcatalog.io/catalog/honda/honda-icon-filled-256.webp?v=1714774661703'),
('HUMMER', 'https://logos-world.net/wp-content/uploads/2021/08/GMC-Hummer-Logo-2021.png'),
('HYSTER', 'https://logos-world.net/wp-content/uploads/2023/03/Hyster-Logo-500x281.png'),
('HYUNDAI','https://www.autonoviny.sk/wp-content/uploads/2013/03/HYUNDAI-LOGO7-213x213.png'),
('INFINITI', 'https://pngimg.com/uploads/infiniti/infiniti_PNG23.png'),
('INTERNATIONAL','https://logoeps.com/wp-content/uploads/2013/03/international-vector-logo.png'),
('ISUZU','https://www.visionxeurope.com/wp-content/uploads/sites/13/2022/03/rindab-isuzu-logo.webp'),
('JAC', 'https://seeklogo.com/images/J/jac-logo-CFA15E106A-seeklogo.com.png'),
('JAGUAR', 'https://freepngdesign.com/content/uploads/images/jaguar-metallic-blue-logo-8532.png'),
('JEEP', 'https://www.nicepng.com/png/detail/416-4160381_jeep-logo-logo-jeep.png'),
('KENWORTH','https://i.etsystatic.com/39729829/r/il/31b76d/4556513199/il_680x540.4556513199_8isf.jpg'),
('KIA','https://www.visionxeurope.com/wp-content/uploads/sites/13/2022/03/rindab-kia-logo.webp'),
('KOMATSU', 'https://seeklogo.com/images/K/komatsu-logo-EA701DAFBA-seeklogo.com.png'),
('LAND ROVER','https://natalex-images.s3.eu-north-1.amazonaws.com/min_3ba2dc07-1583-4b95-9972-6e487e63a406.webp'),
('LEXUS', 'https://seeklogo.com/images/L/Lexus-logo-A6EDA1B5EB-seeklogo.com.png'),
('LINCOLN', 'https://seeklogo.com/images/L/Lincoln-logo-0C5DC906F9-seeklogo.com.png'),
('MACK', 'https://seeklogo.com/images/M/mack-trucks-logo-756EA54CF0-seeklogo.com.png'),
('MAN', 'https://seeklogo.com/images/M/Man-logo-8C14A29F13-seeklogo.com.png'),
('MARCO POLO', 'https://seeklogo.com/images/P/polo-ralph-lauren-logo-C2CA8A53DF-seeklogo.com.png'),
('MAZDA','https://natalex-images.s3.eu-north-1.amazonaws.com/min_89bb5dc5-b25d-43e1-892b-83c140f9de93.webp'),
('MERCEDES BENZ','https://www.visionxeurope.com/wp-content/uploads/sites/13/2022/03/rindab-mercedes-benz-logo.webp'),
('MERCURY', 'https://seeklogo.com/images/M/Mercury-logo-7C0D2FABD2-seeklogo.com.png'),
('MG', 'https://seeklogo.com/images/M/MG-logo-C8D5AAF597-seeklogo.com.png'),
('MINI', 'https://seeklogo.com/images/M/mini-cooper-logo-2B30B836FE-seeklogo.com.png'),
('MITSUBISHI','https://blueraymechanical.com/wp-content/uploads/2015/06/mitsubishi-277x300.png'),
('MOTO TAXI','https://media.slid.es/uploads/344625/images/1625283/Brand.png'),
('NISSAN','https://natalex-images.s3.eu-north-1.amazonaws.com/min_79f695d3-1d6e-46f0-8f6a-7dddc75958c2.webp'),
('OLDSMOBILE', 'https://seeklogo.com/images/O/Oldsmobile-logo-FCCD705575-seeklogo.com.png'),
('OMODA', 'https://seeklogo.com/images/O/omoda-logo-6A84BC226E-seeklogo.com.png'),
('OPEL', 'https://seeklogo.com/images/O/opel-new-logo-D9A5129C2D-seeklogo.com.png'),
('PETERBILT', 'https://seeklogo.com/images/P/Peterbilt-logo-DCC7DC09FF-seeklogo.com.png'),
('PEUGEOT', 'https://seeklogo.com/images/P/peugeot-logo-BF5B2383EF-seeklogo.com.png'),
('PLYMOUTH', 'https://seeklogo.com/images/P/Plymouth-logo-F6A603CBFF-seeklogo.com.png'),
('PONTIAC', 'https://seeklogo.com/images/P/Pontiac-logo-59F67011F7-seeklogo.com.png'),
('PORSCHE', 'https://seeklogo.com/images/P/porsche-logo-5995000C95-seeklogo.com.png?v=638392745470000000'),
('RAM', 'https://seeklogo.com/images/D/dodge-ram-logo-7F566E7B9F-seeklogo.com.png'),
('RAMBLER', 'https://seeklogo.com/images/R/Rambler_ru-logo-FC3DAAFBA2-seeklogo.com.png'),
('RENAULT','https://seeklogo.com/images/R/Renault-logo-6EF3576C2E-seeklogo.com.png'),
('SAAB','https://natalex-images.s3.eu-north-1.amazonaws.com/f94e8357-b9fc-483c-aeb2-6789c40ef4ee.webp'),
('SATURN', 'https://seeklogo.com/images/S/Saturn-logo-5DF1ED1000-seeklogo.com.png'),
('SCANIA','https://seeklogo.com/images/S/Scania-logo-264C3E18C4-seeklogo.com.png'),
('SCION', 'https://seeklogo.com/images/S/Scion-logo-5A24E959D1-seeklogo.com.png'),
('SEAT','https://garagebuntingford.co.uk/pluginAppObj/pluginAppObj_50/seat.webp'),
('SINOTRUCK', 'https://seeklogo.com/images/C/cnhtc-sinotruck-logo-B034E67EEF-seeklogo.com.png'),
('SMART', 'https://seeklogo.com/images/S/Smart-logo-7AF8CBF351-seeklogo.com.png'),
('STERLING', 'https://seeklogo.com/images/S/Sterling_Trucks-logo-D28F9372C7-seeklogo.com.png'),
('SUBARU','https://cdn-1.webcatalog.io/catalog/subaru/subaru-icon-filled-256.webp?v=1714776013922'),
('SUZUKI','https://phucvietauto.com/wp-content/uploads/2023/03/suzuki_logo.webp'),
('TESLA', 'https://seeklogo.com/images/T/tesla-logo-8068FDA2E7-seeklogo.com.png'),
('TOYOTA','https://phucvietauto.com/wp-content/uploads/2023/03/logo-toyota.webp'),
('UNIVERSAL','https://th.bing.com/th/id/OIP.KjfkfL8wAv0ihVRI1rfkZQHaBe?rs=1&pid=ImgDetMain'),
('VOLKSWAGEN','https://izamotors.com/wp-content/themes/mobex/images//vehicle-logos/volkswagen.webp'),
('VOLVO','https://cdn-1.webcatalog.io/catalog/volvo/volvo-icon-filled-256.webp?v=1714776402980'),
('YALE', 'https://seeklogo.com/images/Y/Yale-logo-D7E200DB9F-seeklogo.com.png'),
('AUTOBUSES','https://images.vexels.com/media/users/3/128933/isolated/preview/b54944f7322722034cfda55e601b4f8d-travel-bus-round-icon.png?width=320');


-- INSERCIONES A LA TABLA MODELO
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'CL');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'CSX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'EL');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'ILX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'INTEGRA');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'MDX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'RDX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'RL');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'RLX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'RSX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'SLX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'TL');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'TLX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'TSX');
INSERT INTO modelos (idMarca, nombre) VALUES (1, 'ZDX');

-- Inserts para la marca ALFA ROMEO en la tabla modelos
INSERT INTO modelos (idMarca, nombre) VALUES (2, '156');
INSERT INTO modelos (idMarca, nombre) VALUES (2, 'GIULIETTA');
INSERT INTO modelos (idMarca, nombre) VALUES (2, 'MITO');
INSERT INTO modelos (idMarca, nombre) VALUES (2, 'TONALE');

-- Inserts para la marca AMC en la tabla modelos
INSERT INTO modelos (idMarca, nombre) VALUES (3, 'EAGLE');
INSERT INTO modelos (idMarca, nombre) VALUES (3, 'RAMBLER');

-- Inserts para la marca AUDI en la tabla modelos
INSERT INTO modelos (idMarca, nombre) VALUES (4, '90');
INSERT INTO modelos (idMarca, nombre) VALUES (4, '100');
INSERT INTO modelos (idMarca, nombre) VALUES (4, '4000');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A1');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A2');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A3');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A3 QUATTRO');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A4');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A4 QUATTRO');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A5');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A6');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A6 QUATTRO');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A7');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'A8');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'ALLROAD');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'Q2');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'Q3');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'Q5');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'Q7');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'Q8');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'RS3');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'RS4');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'RS5');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'RS6');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'RS7');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'S3');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'S4');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'S5');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'S6');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'S7');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'S8');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'SQ5');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'TT');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'TT COUPE');
INSERT INTO modelos (idMarca, nombre) VALUES (4, 'TT QUATTRO');

-- Inserts para la marca BMW en la tabla modelos
INSERT INTO modelos (idMarca, nombre) VALUES (5, '328');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '335');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '850');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '118I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '120I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '120IA');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '128I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '130I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '135I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '135IS');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '220I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '228I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '228I GRAN COUPE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '318I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '320I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '323I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '325CI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '325I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '328D');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '328I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '330E');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '330E XDRIVE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '330I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '330I XDRIVE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '335D');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '335I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '335I M');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '335I XDRIVER');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '335XI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '340I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '340I XDRIVE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '420I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '428i');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '430 COUPE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '430I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '430I GRAN COUPE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '435i');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '435I GRAN COUPE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '440I GRAN COUPE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '525I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '525XI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '528I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '528I XDrive');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '528XI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '530I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '530XI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '535D');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '535I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '540I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '545I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '550I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '640I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '645CI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '650I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '740I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '745I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '750I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '750IL');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '750LI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '760I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '840CI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '850CI');
INSERT INTO modelos (idMarca, nombre) VALUES (5, '850I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'ALPINA B7');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'I3');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'I8');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M3');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M4');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M440I');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M440I COUPE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M5');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M550I XDRIVE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M6');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M760I XDRIVE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'M850I XDRIVE');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE 1');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE 2');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE 3');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE 4');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE 5');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE 7');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE M');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'SERIE M5');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'X1');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'X2');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'X3');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'X4');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'X5');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'X6');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'X7');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'Z3');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'Z4');
INSERT INTO modelos (idMarca, nombre) VALUES (5, 'Z4 DRIVE');

-- Inserts para la marca BUICK en la tabla modelos
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'ALLORE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'ALLURE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'CASCADA');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'CENTURY');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'ELECTRA');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'ENCLAVE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'ENCORE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'ENVISION');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'LACROSSE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'LE SABRE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'LESABRE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'LUCERNE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'PARK AVENUE');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'RAINIER');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'REATTA');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'REGAL');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'RENDEZVOUS');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'RIVIERA');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'ROADMASTER');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'SENTURY');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'SKYHAWK');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'SKYLARK');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'SOMERSET');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'TERRAZA');
INSERT INTO modelos (idMarca, nombre) VALUES (6, 'VERANO');

-- Inserts para la marca CADILLAC en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (7, 'ALLANTE');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'ATS');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'BROUGHAM');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'CIMARRON');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'CONCOURS');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'CT6');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'CTS');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'CTS-V');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'DEVILLE');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'DTS');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'EL DORADO');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'ELR');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'ESCALADE');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'ESCALADE EXT');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'SEVILLE');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'SRX');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'STS');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'UNIVERSAL');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'XLR');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'XT4');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'XT5');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'XT6');
INSERT INTO modelos (idMarca, nombre) VALUES (7, 'XTS');

-- Inserts para la marca CAMION en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (8, 'UNIVERSAL');

-- Inserts para la marca CATERPILLAR en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (9, 'FG25N');

-- Inserts para la marca CHANGAN en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (10, 'ALSVIN');
INSERT INTO modelos (idMarca, nombre) VALUES (10, 'CS35');
INSERT INTO modelos (idMarca, nombre) VALUES (10, 'CS35 PLUS');
INSERT INTO modelos (idMarca, nombre) VALUES (10, 'CS55 PLUS');

-- Inserts para la marca CHEVROLET en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (11, 'ASTRA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'ASTRO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'AVALANCHE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'AVEO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'BEL AIR');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'BERETTA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'BLAZER');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'BONNEVILLE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'C-10');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CAMARO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CAPRICE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CAPTIVA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CAVALIER');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CELEBRITY');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CENTURY');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CHEVY');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CHEVY II');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CHEVY C3');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CHEYENNE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CITATION');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CLASSIC');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'COBALT');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'COLORADO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CORSA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CORVETTE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CRUZE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'CUTLASS');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'EL CAMINO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'ENVOY');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'EQUINOX');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'EXPRESS');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'HEAVY DUTY');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'HHR');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'IMPALA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'JOY');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'LUMINA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'LUMINA APV');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'LUV');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'MALIBU');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'MATIZ');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'MERIVA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'MONTE CARLO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'MONZA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'NOVA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'ONIX');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'OPTRA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'ORLANDO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'PICK UP');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'PRIZMA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'S-10');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'S-15');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'SILVERADO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'SONIC');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'SONOMA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'SPARK');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'SSR');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'SUBURBAN');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'SWING');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'TAHOE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'TIGRA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'TORNADO');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'TRACKER');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'TRAILBLAZER');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'TRAVERSE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'TRAX');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'UPLANDER');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'VAN');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'VARIOS');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'VECTRA');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'VENTURE');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'VOLT');
INSERT INTO modelos (idMarca, nombre) VALUES (11, 'ZAFIRA');

-- Inserts para la marca CHIREY en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (12, 'OMODA 5');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 2 PRO');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 4 PRO');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 7 PRO');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 7 PRO E');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 7 PRO MAX');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 8 PRO');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 8 PRO E');
INSERT INTO modelos (idMarca, nombre) VALUES (12, 'TIGGO 8 PRO MAX');

-- Inserts para la marca CHRYSLER en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (13, '200');
INSERT INTO modelos (idMarca, nombre) VALUES (13, '300');
INSERT INTO modelos (idMarca, nombre) VALUES (13, '300C');
INSERT INTO modelos (idMarca, nombre) VALUES (13, '300M');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'ASPEN');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'CARAVAN');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'CIRRUS');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'CONCORDE');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'CORDOBA');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'CROSSFIRE');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'CRUISER');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'DART');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'DAYTONA');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'DIPLOMAT');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'EUROPA');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'FIFTH AVENUE');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'GRAND VOYAGER');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'IMPERIAL');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'INTREPID');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'LASER');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'LEBARON');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'LHS');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'MINI VAN');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'NEON');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'NEW YORKER');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'PACIFICA');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'PHANTOM');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'PLYMOUTH');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'PT CRUISER');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'RAMBLER');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'SEBRING');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'SHADOW');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'SPIRIT');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'TOWN COUNTRY');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'VALIANT');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'VOLARE');
INSERT INTO modelos (idMarca, nombre) VALUES (13, 'VOYAGER');

-- Inserts para la marca CUPRA en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (14, 'FORMENTOR');

-- Inserts para la marca DATSUN en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES 
(15, '620'),
(15, 'A-10');

-- Inserts para la marca DINA en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES 
(16, '800'),
(16, 'CAMION'),
(16, 'D-600'),
(16, 'D-861'),
(16, 'VARIOS');

-- Inserts para la marca DODGE en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (17, '1500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, '2500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, '3500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, '4500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, '5500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'ARIES');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'ATOS');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'ATTITUDE');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'AVENGER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'BARRACUDA');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'CALIBER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'CAMIONES');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'CARAVAN');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'CHALLENGER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'CHARGER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'CORONET');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'D100');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'D150');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'D200');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'D250');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'D300');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'D350');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'DR');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'DAKOTA');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'DART');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'DART K');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'DAYTONA');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'DINASTY');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'DURANGO');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'GRAND CARAVAN');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'GRAND VOYAGER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'GTX');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'H-100');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'INTREPID');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'JOURNEY');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'LANCER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'MAGNUM');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'MONACO');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'NEON');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'NEON RT');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'NEW RAM');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'NITRO');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'PHANTOM');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'PROMASTER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'PROMASTER 2500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'PROMASTER 3500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'PROMASTER RAPID');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'R5500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 1500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 2500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 3500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 400');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 4000');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 4500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 50');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 5500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM 700');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM CHARGER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM CHASIS');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM PROMASTER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM PROMASTER 1500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM PROMASTER 2500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM PROMASTER 3500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM PROMASTER RAPID');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAM VAN');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'RAMCHARGER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'SERIE D');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'SHADOW');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'SPRINTER 2500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'SPRINTER 3500');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'STRATUS');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'SX');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'VAN');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'VERNA');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'VIPER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'VISION');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'VOLARE');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'VOYAGER');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'W150');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'W350');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'WAGON');
INSERT INTO modelos (idMarca, nombre) VALUES (17, 'XS');

-- Inserts para la marca EAGLE en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (18, 'TALON');
INSERT INTO modelos (idMarca, nombre) VALUES (18, 'VISION');

-- Inserts para la marca FAW en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (19, 'GF900');

-- Inserts para la marca FIAT en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (20, '500');
INSERT INTO modelos (idMarca, nombre) VALUES (20, '500X');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'ADVENTURE');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'ALBEA');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'ARGO');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'DUCATO');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'GRANDE PUNTO');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'IDEA');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'LINEA');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'MOBI');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'PALIO');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'PALIO ADVENTURE');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'PANDA');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'PULSE');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'PUNTO');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'STRADA');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'STRADA ADVENTURE');
INSERT INTO modelos (idMarca, nombre) VALUES (20, 'UNO');

-- Inserts para la marca FORD en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (21, 'AEROSTAR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'BRONCO');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'BRONCO II');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'BRONCO SPORT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'C-MAX ENERGI');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'CF8000');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'CLUB WAGON');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'CONTOUR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'COUGAR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'COUNTRY SQUIRE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'COURIER');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'CROWN VICTORIA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'CURIER');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-150');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-150 CLUB WAGON');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-250');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-250 ECONOLINE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-350 ECONOLINE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-450');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-SERIES');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'E-TRANSIT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ECONOLINE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ECONOLINE E-250');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ECONOLINE E-350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ECONOLINE E-450');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ECONOLINE SUPER DUTY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ECONOLINE VAN');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ECOSPORT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'EDGE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ESCAPE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ESCORT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ESCORT ZX2');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'ESCOSPORT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'EXCURSION');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'EXPEDITION');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'EXPLORER');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'EXPLORER SPORT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'EXPLORER SPORT TRAC');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F 350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-100');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-150');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-150 SHELBY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-170');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-200');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-250');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-250 SUPER DUTY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-350 SUPER DUTY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-450');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-450 SUPER DUTY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-550');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-550 SUPER DUTY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-650');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-750');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F-SERIES');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F53');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'F59');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FAIRLANE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FAIRMONT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FALCON');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FIESTA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FIESTA HATCHBACK');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FIESTA IKON');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FIGO');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FIVE HUNDRED');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FLEX');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FOCUS');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FREESTAR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FREESTYLE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FUSION');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'FX4');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'GALAXIE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'GHIA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'GRANADA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'GRAND MARQUIS');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'GRAND TORINO');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'IKON');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'INTERCEPTOR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'KA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'KUGA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'L9000');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'LIATA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'LOBO');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'LTD');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MAVERICK');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MERCURY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MICROBUS');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MONDEO');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MOUNTAINEER');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MUSTANG');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MUSTANG CONVERTIBLE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MUSTANG SHELBY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MUSTANG SHELBY GT350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MUSTANG SHELBY GT500');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'MYSTIQUE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'PICK UP');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'PINTO');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'POLICE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'POLICE INTERCEPTOR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'PROBE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'PU');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'RANGER');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'RAPTOR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SABLE');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SEDAN');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SPORT TRAC');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'STERLING');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SUPER DUTY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SUPER DUTY E-350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SUPER DUTY E-450');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SUPER DUTY F-250');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SUPER DUTY F-350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SUPER DUTY F-450');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'SUPER DUTY F-550');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TAURUS');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TELSTAR');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TEMPO');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TERRITORY');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'THUNDERBIRD');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TIERRA');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TOPAZ');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRACER');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRANSIT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRANSIT 150');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRANSIT 250');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRANSIT 350');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRANSIT 350 HD');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRANSIT CONNECT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'TRANSITT');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'VILLAGER');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'WAGON');
INSERT INTO modelos (idMarca, nombre) VALUES (21, 'WINDSTAR');


-- Inserts para la marca FOTON en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (22, '12000');
INSERT INTO modelos (idMarca, nombre) VALUES (22, 'AUMARK');
INSERT INTO modelos (idMarca, nombre) VALUES (22, 'S12');
INSERT INTO modelos (idMarca, nombre) VALUES (22, 'S20');
INSERT INTO modelos (idMarca, nombre) VALUES (22, 'S5');
INSERT INTO modelos (idMarca, nombre) VALUES (22, 'S6');
INSERT INTO modelos (idMarca, nombre) VALUES (22, 'S8');
INSERT INTO modelos (idMarca, nombre) VALUES (22, 'TM3');

-- Inserts para la marca FREIGHTLINER en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (23, 'BUSINESS');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'BUSINESS CLASS');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'C112');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'C120');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CASCADIA');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CENTURY');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CENTURY CLASS');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CENTURY FLD-120');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CENTURY M2');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CENTURY SERIES');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CLASSIC');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'COLUMBIA');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CONDOR');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CORONADO');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CORONADO M2');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CORONADO SERIES');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CST112');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'CST120');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FL 120');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FL 360');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FL112');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FL60');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FL70');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FL80');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FLD');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FLD112');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'FLD120');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'M2');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'M2 106');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'M2 112');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'M2 BUSINESS CLASS');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'M2 SERIES');
INSERT INTO modelos (idMarca, nombre) VALUES (23, 'SPRINTER');

-- Inserts para la marca GMC en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (24, '3500 HD');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'ACADIA');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'ALERO');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'CABALLERO');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'CANYON');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'DENALI');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'ENVOY');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'G10');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'JIMMY');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'K1500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'K3500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'P3500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'S-15');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SAFARI');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SAFARI VAN');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SAVANA');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SAVANA 1500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SAVANA 2500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SAVANA 3500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SIERRA');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SIERRA 1500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SIERRA 2500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SIERRA 2500 HD');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SIERRA 3500');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SIERRA 3500 HD');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SONOMA');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'SYCLONE');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'TERRAIN');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'TYPHOON');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'YUKON');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'YUKON DENALI');
INSERT INTO modelos (idMarca, nombre) VALUES (24, 'YUKON XL');

-- Inserts para la marca HINO en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (25, '514');
INSERT INTO modelos (idMarca, nombre) VALUES (25, '616');
INSERT INTO modelos (idMarca, nombre) VALUES (25, '716');
INSERT INTO modelos (idMarca, nombre) VALUES (25, '816');
INSERT INTO modelos (idMarca, nombre) VALUES (25, 'DUTRO');
INSERT INTO modelos (idMarca, nombre) VALUES (25, 'SERIE 300');
INSERT INTO modelos (idMarca, nombre) VALUES (25, 'SERIE 500');

-- Inserts para la marca HONDA en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (26, 'ACCORD');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'ACCORD CROSSTOUR');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'BR-V');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'BRIO');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'CITY');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'CIVIC');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'CR-V');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'CR-X');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'CR-Z');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'CROSSTOUR');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'CRX');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'ELEMENT');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'FIT');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'HR-V');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'INSIGHT');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'JAZZ');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'ODYSSEY');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'PASSPORT');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'PILOT');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'PRELUDE');
INSERT INTO modelos (idMarca, nombre) VALUES (26, 'RIDGELINE');

-- Inserts para la marca HUMMER en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (27, 'H1');
INSERT INTO modelos (idMarca, nombre) VALUES (27, 'H2');
INSERT INTO modelos (idMarca, nombre) VALUES (27, 'H3');
INSERT INTO modelos (idMarca, nombre) VALUES (27, 'H3T');

-- Inserts para la marca HYSTER en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (28, 'FG25N');
INSERT INTO modelos (idMarca, nombre) VALUES (28, 'GP35A');

-- Inserts para la marca HYUNDAI en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES (29, 'ACCENT');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'ATTITUDE');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'AZERA');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'CRETA');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'CRETA GRAND');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'ELANTRA');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'ELANTRA GT');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'ENTOURAGE');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'ERA');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'GRAND I10');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'H-100');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'H-200');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'HB20');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'HB20S');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'I10');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'IONIQ');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'IX-35');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'IX-38');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'IX35');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'PALISADE');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'SANTA FE');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'SANTA FE SPORT');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'SONATA');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'STAREX');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'TIBURON');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'TUCSON');
INSERT INTO modelos (idMarca, nombre) VALUES (29, 'VELOSTER');

-- Inserts para la marca INFINITI en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(30, 'EX35'),
(30, 'EX37'),
(30, 'FX35'),
(30, 'FX37'),
(30, 'FX45'),
(30, 'G25'),
(30, 'G35'),
(30, 'G37'),
(30, 'I 30'),
(30, 'I 35'),
(30, 'I30'),
(30, 'I35'),
(30, 'JX35'),
(30, 'Q40'),
(30, 'Q45'),
(30, 'Q50'),
(30, 'Q60'),
(30, 'QX-4'),
(30, 'QX30'),
(30, 'QX4'),
(30, 'QX50'),
(30, 'QX56'),
(30, 'QX60'),
(30, 'QX70'),
(30, 'QX80');

-- Inserts para la marca INTERNATIONAL en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(31, '3000'),
(31, '3800'),
(31, '4000'),
(31, '4200'),
(31, '4300'),
(31, '4400'),
(31, '4700'),
(31, '4800'),
(31, '4900'),
(31, '5070'),
(31, '5500'),
(31, '5600'),
(31, '5900'),
(31, '7000'),
(31, '7600'),
(31, '8000'),
(31, '8100'),
(31, '8200'),
(31, '8300'),
(31, '8500'),
(31, '8600'),
(31, '9000'),
(31, '9004'),
(31, '9200'),
(31, '9400'),
(31, '9500'),
(31, '9800'),
(31, '9900'),
(31, '3800 CE'),
(31, '4300 IHC'),
(31, '4700LP'),
(31, '4700LPX'),
(31, '5500I'),
(31, '5600I'),
(31, '5900I'),
(31, '9200I'),
(31, '9400I'),
(31, '9900I'),
(31, 'CITYSTAR'),
(31, 'DINA'),
(31, 'DURASTAR'),
(31, 'HV'),
(31, 'IHC'),
(31, 'LONESTAR'),
(31, 'MV'),
(31, 'NAVISTAR'),
(31, 'PROSTAR'),
(31, 'S600'),
(31, 'TRANSTAR'),
(31, 'WORKSTAR'),
(31, 'WORKSTAR 7600'),
(31, 'WORKSTAR 7700');

-- Inserts para la marca ISUZU en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(32, 'AMIGO'),
(32, 'ASCENDER'),
(32, 'AXIOM'),
(32, 'D-MAX'),
(32, 'ELF'),
(32, 'ELF 200'),
(32, 'ELF 300'),
(32, 'ELF 350'),
(32, 'ELF 400'),
(32, 'ELF 450'),
(32, 'ELF 500'),
(32, 'ELF 600'),
(32, 'ELF 650'),
(32, 'FTR'),
(32, 'FVR'),
(32, 'HOMBRE'),
(32, 'I-280'),
(32, 'I-290'),
(32, 'I-350'),
(32, 'I-370'),
(32, 'KB21'),
(32, 'KB21/KB41'),
(32, 'LUV'),
(32, 'NKR'),
(32, 'NPR'),
(32, 'NQR'),
(32, 'NRR'),
(32, 'OASIS'),
(32, 'RODEO'),
(32, 'RODEO SPORT'),
(32, 'TROOPER');

-- Inserts para la marca JAC en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(33, 'FRISON'),
(33, 'FRISON T6'),
(33, 'J7'),
(33, 'SEI 2'),
(33, 'SEI 2 SMART'),
(33, 'SEI 3'),
(33, 'SEI 3 PRO'),
(33, 'SEI 3 PRO ACTIVE'),
(33, 'SEI 3 PRO CONNECT'),
(33, 'SEI 4 PRO');

-- Inserts para la marca JAGUAR en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(34, 'S-TYPE'),
(34, 'SUPER V8'),
(34, 'VANDEN'),
(34, 'X-TYPE');

-- Inserts para la marca JEEP en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(35, 'CHEROKEE'),
(35, 'CJ5'),
(35, 'CJ6'),
(35, 'CJ7'),
(35, 'COMANCHE'),
(35, 'COMMANDER'),
(35, 'COMPASS'),
(35, 'GLADIATOR'),
(35, 'GRAND CHEROKEE'),
(35, 'GRAND WAGONEER'),
(35, 'J10'),
(35, 'LAREDO'),
(35, 'LIBERTY'),
(35, 'PATRIOT'),
(35, 'RENEGADE'),
(35, 'RUBICON'),
(35, 'SCRAMBLER'),
(35, 'UNIVERSAL'),
(35, 'WAGONEER'),
(35, 'WAGONER'),
(35, 'WRANGLER'),
(35, 'WRANGLER JL');

-- Inserts para la marca KENWORTH en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(36, 'CAMION'),
(36, 'C500'),
(36, 'KW55'),
(36, 'PETERBILT'),
(36, 'T170'),
(36, 'T200'),
(36, 'T2000'),
(36, 'T270'),
(36, 'T300'),
(36, 'T370'),
(36, 'T380'),
(36, 'T400'),
(36, 'T470'),
(36, 'T480'),
(36, 'T600'),
(36, 'T660'),
(36, 'T680'),
(36, 'T700'),
(36, 'T800'),
(36, 'T880'),
(36, 'W900'),
(36, 'W900B');

-- Inserts para la marca KIA en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(37, 'CADENZA'),
(37, 'FORTE'),
(37, 'FORTE 5'),
(37, 'FORTE KOUP'),
(37, 'K3'),
(37, 'MAGENTIS'),
(37, 'NIRO'),
(37, 'OPTIMA'),
(37, 'RIO'),
(37, 'SEDONA'),
(37, 'SELTOS'),
(37, 'SEPHIA'),
(37, 'SORENTO'),
(37, 'SOUL'),
(37, 'SPECTRA'),
(37, 'SPECTRA 5'),
(37, 'SPORTAGE');

-- Inserts para la marca KOMATSU en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(38, 'FG10-18T250'),
(38, 'FG20-25T16'),
(38, 'FG25N');

-- Inserts para la marca LAND ROVER en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(39, 'DEFENDER 110'),
(39, 'DEFENDER 130'),
(39, 'DEFENDER 90'),
(39, 'DISCOVERY'),
(39, 'DISCOVERY SPORT'),
(39, 'EVOQUE'),
(39, 'FREELANDER'),
(39, 'LR2'),
(39, 'LR3'),
(39, 'RANGE ROVER'),
(39, 'RANGE ROVER EVOQUE');

-- Inserts para la marca LEXUS en la tabla modelos

INSERT INTO modelos (idMarca, nombre) VALUES
(40, 'CT200H'),
(40, 'ES 250'),
(40, 'ES 300'),
(40, 'ES 350'),
(40, 'ES250'),
(40, 'ES300'),
(40, 'ES300H'),
(40, 'ES350'),
(40, 'GX470'),
(40, 'LX 570'),
(40, 'LX470'),
(40, 'NX'),
(40, 'NX200T'),
(40, 'NX250'),
(40, 'NX300'),
(40, 'NX300H'),
(40, 'NX350H'),
(40, 'RX 350'),
(40, 'RX350'),
(40, 'RX350H'),
(40, 'RX400h'),
(40, 'RX450'),
(40, 'RX450H'),
(40, 'RX500H'),
(40, 'UX200'),
(40, 'UX250H');

# LINCOLN
INSERT INTO modelos (idMarca, nombre) VALUES
(41, 'AVIATOR'),
(41, 'BLACKWOOD'),
(41, 'CONTINENTAL'),
(41, 'CORSAIR'),
(41, 'LS'),
(41, 'MARK'),
(41, 'MARK LT'),
(41, 'MILAN'),
(41, 'MKC'),
(41, 'MKS'),
(41, 'MKT'),
(41, 'MKX'),
(41, 'MKZ'),
(41, 'NAGIVATOR'),
(41, 'NAUTILUS'),
(41, 'NAVIGATOR'),
(41, 'TOWN CAR'),
(41, 'ZEPHYR');

INSERT INTO modelos (idMarca, nombre) VALUES
(42, 'CH613'),
(42, 'CHN'),
(42, 'CT'),
(42, 'CXU'),
(42, 'GRANITE'),
(42, 'GU GRANITE'),
(42, 'VHA'),
(42, 'VISION');

INSERT INTO modelos (idMarca, nombre) VALUES
(43, 'BUS'),
(43, 'TGX');

INSERT INTO modelos (idMarca, nombre) VALUES
(44, 'MP120MX');

# MAZDA
INSERT INTO modelos (idMarca, nombre) VALUES
(45, '2'),
(45, '3'),
(45, '5'),
(45, '6'),
(45, '323'),
(45, '626'),
(45, '929'),
(45, 'B1600'),
(45, 'B2000'),
(45, 'B2200'),
(45, 'B2300'),
(45, 'B2400'),
(45, 'B2500'),
(45, 'B2600'),
(45, 'B3000'),
(45, 'B4000'),
(45, 'CRONOS'),
(45, 'CX-30'),
(45, 'CX-50'),
(45, 'CX3'),
(45, 'CX30'),
(45, 'CX5'),
(45, 'CX50'),
(45, 'CX7'),
(45, 'CX9'),
(45, 'MIATA'),
(45, 'MPV'),
(45, 'MX3'),
(45, 'MX5'),
(45, 'MX6'),
(45, 'NAVAJO'),
(45, 'PICK UP'),
(45, 'PROTEGE'),
(45, 'RX8'),
(45, 'TRIBUTE');

# MERCEDES BENZ
INSERT INTO modelos (idMarca, nombre) VALUES
(46, 'A220'),
(46, 'A250'),
(46, 'ACTROS'),
(46, 'AMG GT'),
(46, 'AMG GT 53'),
(46, 'AMG GT C'),
(46, 'B250'),
(46, 'B250E'),
(46, 'C180'),
(46, 'C200'),
(46, 'C220'),
(46, 'C230'),
(46, 'C232 AMG'),
(46, 'C240'),
(46, 'C280'),
(46, 'C300'),
(46, 'C320'),
(46, 'C350'),
(46, 'C350E'),
(46, 'C400'),
(46, 'C43 AMG'),
(46, 'C55 AMG'),
(46, 'C63 AMG'),
(46, 'CL500'),
(46, 'CL55 AMG'),
(46, 'CL600'),
(46, 'CL65 AMG'),
(46, 'CLA'),
(46, 'CLA200'),
(46, 'CLA250'),
(46, 'CLASE A'),
(46, 'CLASE B'),
(46, 'CLASE C'),
(46, 'CLASE C 180'),
(46, 'CLASE C 200'),
(46, 'CLASE C 300'),
(46, 'CLASE C 350'),
(46, 'CLASE E'),
(46, 'CLASE E320'),
(46, 'CLASE G'),
(46, 'CLASE GLA'),
(46, 'CLASE GLC'),
(46, 'CLASE GLE'),
(46, 'CLASE GLS'),
(46, 'CLASE M'),
(46, 'CLASE R'),
(46, 'CLASE S'),
(46, 'CLASE S400'),
(46, 'CLASE S550'),
(46, 'CLASE S600'),
(46, 'CLASE-M'),
(46, 'CLK'),
(46, 'CLK280'),
(46, 'CLK320'),
(46, 'CLK350'),
(46, 'CLK500'),
(46, 'CLK55 AMG'),
(46, 'CLS'),
(46, 'CLS500'),
(46, 'CLS53 AMG'),
(46, 'CLS55 AMG'),
(46, 'E-320'),
(46, 'E200'),
(46, 'E250'),
(46, 'E300'),
(46, 'E400'),
(46, 'E500'),
(46, 'EVOBUS'),
(46, 'GL'),
(46, 'GL320'),
(46, 'GL3400'),
(46, 'GL350'),
(46, 'GL450'),
(46, 'GL500'),
(46, 'GL550'),
(46, 'GLA'),
(46, 'GLA 200'),
(46, 'GLA180'),
(46, 'GLA200'),
(46, 'GLA250'),
(46, 'GLC'),
(46, 'GLC300'),
(46, 'GLC350e'),
(46, 'GLC43 AMG'),
(46, 'GLC63 AMG'),
(46, 'GLE'),
(46, 'GLE300D'),
(46, 'GLE350'),
(46, 'GLE400'),
(46, 'GLE43'),
(46, 'GLE43 AMG'),
(46, 'GLE450'),
(46, 'GLE450 AMG'),
(46, 'GLE500'),
(46, 'GLE53 AMG'),
(46, 'GLE550'),
(46, 'GLE550E'),
(46, 'GLE580'),
(46, 'GLE63 AMG'),
(46, 'GLE63 AMG S'),
(46, 'GLK'),
(46, 'GLS'),
(46, 'GLS450'),
(46, 'GLS550'),
(46, 'HPN 196'),
(46, 'IRIZAR I6'),
(46, 'ML'),
(46, 'ML 320'),
(46, 'ML 350'),
(46, 'ML 500'),
(46, 'ML250'),
(46, 'ML320'),
(46, 'ML350'),
(46, 'ML430'),
(46, 'ML450'),
(46, 'ML500'),
(46, 'ML550'),
(46, 'OC 500'),
(46, 'R320'),
(46, 'R500'),
(46, 'S350'),
(46, 'S430'),
(46, 'S450'),
(46, 'S500'),
(46, 'S55 AMG'),
(46, 'S560'),
(46, 'S600'),
(46, 'S65 AMG'),
(46, 'SL540'),
(46, 'SLK'),
(46, 'SLK 280'),
(46, 'SLK 350'),
(46, 'SLK280'),
(46, 'SPRINTER'),
(46, 'SPRINTER 2500'),
(46, 'SPRINTER 3500'),
(46, 'TRAVEGO S400'),
(46, 'VIANO'),
(46, 'VITO');

# MERCURY
INSERT INTO modelos (idMarca, nombre) VALUES
(47, 'BOBCAT'),
(47, 'COLONY PARK'),
(47, 'COMET'),
(47, 'CONTOUR'),
(47, 'COUGAR'),
(47, 'GRAND MARQUIS'),
(47, 'MARAUDER'),
(47, 'MARINER'),
(47, 'MARQUIS'),
(47, 'MILAN'),
(47, 'MONARCH'),
(47, 'MONTAINEER'),
(47, 'MONTEGO'),
(47, 'MONTEREY'),
(47, 'MOUNTAINEER'),
(47, 'MYSTIQUE'),
(47, 'SABLE'),
(47, 'TEMPO'),
(47, 'TRACER'),
(47, 'UNIVERSAL'),
(47, 'VILLAGER');

INSERT INTO modelos (idMarca, nombre) VALUES
(48, 'GT'),
(48, 'HS'),
(48, 'MG'),
(48, 'MG5'),
(48, 'ONE'),
(48, 'RX5'),
(48, 'RX8'),
(48, 'ZS');

# MINI
INSERT INTO modelos (idMarca, nombre) VALUES
(49, 'COOPER'),
(49, 'COOPER CHILI'),
(49, 'COOPER CLUBMAN'),
(49, 'COOPER COUNTRYMAN'),
(49, 'COOPER COUPE'),
(49, 'COOPER PACEMAN'),
(49, 'COOPER PEPPER'),
(49, 'COOPER S'),
(49, 'COUNTRYMAN'),
(49, 'MINI COOPER'),
(49, 'PACEMAN');

INSERT INTO modelos (idMarca, nombre) VALUES
(50, 'ASX'),
(50, 'ATTITUDE'),
(50, 'EAGLE'),
(50, 'ECLIPSE'),
(50, 'ECLIPSE CROSS'),
(50, 'ECLIPSE SPYDER'),
(50, 'ENDEAVOR'),
(50, 'FG25N'),
(50, 'GALANT'),
(50, 'GRANDIS'),
(50, 'L200'),
(50, 'LANCER'),
(50, 'MIRAGE'),
(50, 'MIRAGE G4'),
(50, 'MONTERO'),
(50, 'MONTERO SPORT'),
(50, 'OUTLANDER'),
(50, 'OUTLANDER PHEV'),
(50, 'OUTLANDER SPORT'),
(50, 'RAIDER'),
(50, 'RVR'),
(50, 'SPACE STAR'),
(50, 'SUMMIT'),
(50, 'TALON'),
(50, 'VAN'),
(50, 'XPANDER');

INSERT INTO modelos (idMarca, nombre)
VALUES (51, 'BAJAJ'),
       (51, 'ATUL'),
       (51, 'TORINO TOWN Y PACK'),
       (51, 'TORINO COUNTRY');

# NISSAN
INSERT INTO modelos (idMarca, nombre)
VALUES (52, '510'),
       (52, '610'),
       (52, '620'),
       (52, '710'),
       (52, '720'),
       (52, '200 SX'),
       (52, '200SX'),
       (52, '240 SX'),
       (52, '240SX'),
       (52, '300Z'),
       (52, '300ZX'),
       (52, '350Z'),
       (52, '370Z'),
       (52, 'ALMERA'),
       (52, 'ALTIMA'),
       (52, 'APRIO'),
       (52, 'ARMADA'),
       (52, 'AXXESS'),
       (52, 'B210'),
       (52, 'CABSTAR'),
       (52, 'CUBE'),
       (52, 'D21'),
       (52, 'D22'),
       (52, 'D23'),
       (52, 'DATSUN'),
       (52, 'ESTACAS'),
       (52, 'FG25N'),
       (52, 'FRONTIER'),
       (52, 'FRONTIER PRO-4X'),
       (52, 'FRONTIER V6 PRO-4X'),
       (52, 'GUAYIN'),
       (52, 'HARDBODY'),
       (52, 'HIKARI'),
       (52, 'ICHI VAN'),
       (52, 'ISHIVAN'),
       (52, 'JUKE'),
       (52, 'KICKS'),
       (52, 'KICKS E-POWER'),
       (52, 'KING CAB'),
       (52, 'LEAF'),
       (52, 'LUCINO'),
       (52, 'MARCH'),
       (52, 'MARCH ACTIVE'),
       (52, 'MAXIMA'),
       (52, 'MICRA'),
       (52, 'MURANO'),
       (52, 'NAVARA'),
       (52, 'NOTE'),
       (52, 'NP300'),
       (52, 'NV1500'),
       (52, 'NV200'),
       (52, 'NV2500'),
       (52, 'NV3500'),
       (52, 'NX'),
       (52, 'PATHFINDER'),
       (52, 'PICK UP'),
       (52, 'PLATINA'),
       (52, 'PULSAR'),
       (52, 'PULSAR NX'),
       (52, 'QUEST'),
       (52, 'ROGUE'),
       (52, 'ROGUE HYBRID'),
       (52, 'ROGUE SPORT'),
       (52, 'SAKURA'),
       (52, 'SAMURAI'),
       (52, 'SENTRA'),
       (52, 'STANZA'),
       (52, 'TIIDA'),
       (52, 'TITAN'),
       (52, 'TSUBAME'),
       (52, 'TSURU'),
       (52, 'TSURU I'),
       (52, 'TSURU II'),
       (52, 'TSURU III'),
       (52, 'TSURU SAMURAI'),
       (52, 'URVAN'),
       (52, 'V-DRIVE'),
       (52, 'VERSA'),
       (52, 'VERSA DRIVE'),
       (52, 'VERSA NOTE'),
       (52, 'VERSA V-DRIVE'),
       (52, 'X-TERRA'),
       (52, 'X-TRAIL'),
       (52, 'XTERRA'),
       (52, 'XTRAIL');

INSERT INTO modelos (idMarca, nombre)
VALUES (53, 'ACHIEVA'),
       (53, 'ALERO'),
       (53, 'AURORA'),
       (53, 'BRAVADA'),
       (53, 'BRVADA'),
       (53, 'CALAIS'),
       (53, 'CENTURY'),
       (53, 'CUTLASS'),
       (53, 'EIGHTY EIGHT'),
       (53, 'FIRENZA'),
       (53, 'INTRIGUE'),
       (53, 'NINETY EIGHT'),
       (53, 'OMEGA'),
       (53, 'SILHOUETTE'),
       (53, 'TORONADO'),
       (53, 'UNIVERSAL');

INSERT INTO modelos (idMarca, nombre)
VALUES (54, 'C5');

INSERT INTO modelos (idMarca, nombre)
VALUES (55, 'TIGRA');

INSERT INTO modelos (idMarca, nombre)
VALUES (56, '320'),
       (56, '325'),
       (56, '330'),
       (56, '335'),
       (56, '337'),
       (56, '340'),
       (56, '359'),
       (56, '365'),
       (56, '366'),
       (56, '367'),
       (56, '377'),
       (56, '378'),
       (56, '379'),
       (56, '384'),
       (56, '387'),
       (56, '567'),
       (56, 'T387'),
       (56, 'T600'),
       (56, 'T660'),
       (56, 'T800'),
       (56, 'UNIVERSAL');

INSERT INTO modelos (idMarca, nombre)
VALUES (57, '206'),
       (57, '207'),
       (57, '208'),
       (57, '301'),
       (57, '306'),
       (57, '307'),
       (57, '308'),
       (57, '405'),
       (57, '406'),
       (57, '407'),
       (57, '508'),
       (57, '2008'),
       (57, '3008'),
       (57, '5008'),
       (57, '207 CC'),  -- Handle spaces in names
       (57, '307 WAGON'),
       (57, 'EXPERT'),
       (57, 'GRAND RAID'),
       (57, 'MANAGER'),
       (57, 'PARTNER'),
       (57, 'PARTNER TEPEE'),
       (57, 'PROMASTER'),
       (57, 'RCZ'),
       (57, 'RIFTER');

INSERT INTO modelos (idMarca, nombre)
VALUES (58, 'ARIES'),
       (58, 'BARRACUDA'),
       (58, 'CARAVELLE'),
       (58, 'GRAND VOYAGER'),
       (58, 'LASER'),
       (58, 'NEON'),
       (58, 'SUNDANCE'),
       (58, 'VALIANT'),
       (58, 'VOLARE');

INSERT INTO modelos (idMarca, nombre)
VALUES (59, '6000'),
       (59, 'AZTEK'),
       (59, 'BONNEVILLE'),
       (59, 'FIERO'),
       (59, 'FIRE BIRD'),
       (59, 'FIREFLY'),
       (59, 'G1'),
       (59, 'G2'),
       (59, 'G3'),
       (59, 'G3 WAVE'),  -- Handle spaces in names
       (59, 'G4'),
       (59, 'G5'),
       (59, 'G6'),
       (59, 'G8'),
       (59, 'GRAND AM'),
       (59, 'GRAND PRIX'),
       (59, 'GTO'),
       (59, 'LEMANS'),
       (59, 'MATIZ'),
       (59, 'MONTANA'),
       (59, 'PURSUIT'),
       (59, 'SOLSTICE'),
       (59, 'SUNBIRD'),
       (59, 'SUNFIRE'),
       (59, 'SUNRUNNER'),
       (59, 'TEMPEST'),
       (59, 'TORRENT'),
       (59, 'TRANS AM'),
       (59, 'TRANS SPORT'),
       (59, 'TRANSPORT'),
       (59, 'VIBE'),
       (59, 'WAVE'),
       (59, 'WAVE 5');

INSERT INTO modelos (idMarca, nombre)
VALUES (60, 'BOXSTER'),
       (60, 'CAYENNE'),
       (60, 'CAYMAN'),
       (60, 'MACAN'),
       (60, 'PANAMERA');

INSERT INTO modelos (idMarca, nombre)
VALUES (61, '700'),
       (61, '4000'),
       (61, '4500'),
       (61, 'CARGO VAN'),  -- Handle spaces in names
       (61, 'PROMASTER 1500'),
       (61, 'PROMASTER 2500'),
       (61, 'PROMASTER 3500'),
       (61, 'PROMASTER CITY'),
       (61, 'RAM');

INSERT INTO modelos (idMarca, nombre)
VALUES (62, 'AMERICAN');

# RENAULT
INSERT INTO modelos (idMarca, nombre)
VALUES (63, '5'),
		 (63, '12'),
		 (63, '18'),
		 (63, 'ALLIANCE'),
       (63, 'CAPTUR'),
       (63, 'CLIO'),
       (63, 'DUSTER'),
       (63, 'EUROCLIO'),
       (63, 'FLUENCE'),
       (63, 'KANGOO'),
       (63, 'KOLEOS'),
       (63, 'KWID'),
       (63, 'LAGUNA'),
       (63, 'LOGAN'),
       (63, 'MEGANE'),
       (63, 'MEGANE II'),
       (63, 'OROCH'),
       (63, 'R5'),
       (63, 'SAFRANE'),
       (63, 'SANDERO'),
       (63, 'SCALA'),
       (63, 'SCENIC'),
       (63, 'STEPWAY'),
       (63, 'TRAFIC');

INSERT INTO modelos (idMarca, nombre)
VALUES (64, '9-3'),
       (64, '9-5'),
       (64, '9-7'),
       (64, '9-7X');

INSERT INTO modelos (idMarca, nombre)
VALUES (65, '4 SERIES'),  -- Handle spaces in names
       (65, 'AURA'),
       (65, 'ION'),
       (65, 'OUTLOOK'),
       (65, 'RELAY'),
       (65, 'SERIE L'),
       (65, 'SERIE S'),
       (65, 'SKY'),
       (65, 'VUE');

INSERT INTO modelos (idMarca, nombre)
VALUES (66, 'CAMION');

INSERT INTO modelos (idMarca, nombre)
VALUES (67, 'FR-S'),
       (67, 'IA'),
       (67, 'TC'),
       (67, 'XB'),
       (67, 'XD');

INSERT INTO modelos (idMarca, nombre)
VALUES (68, 'ALHAMBRA'),
       (68, 'ALTEA'),
       (68, 'ARONA'),
       (68, 'ATECA'),
       (68, 'BOCANEGRA'),
       (68, 'CORDOBA'),
       (68, 'CUPRA'),
       (68, 'EXEO'),
       (68, 'FREETRACK'),
       (68, 'IBIZA'),
       (68, 'LEON'),
       (68, 'LEON CUPRA'),  -- Handle spaces in names
       (68, 'TARRACO'),
       (68, 'TOLEDO');

INSERT INTO modelos (idMarca, nombre)
VALUES (69, 'C7H');

INSERT INTO modelos (idMarca, nombre)
VALUES (70, 'FOR FOUR'),
       (70, 'FORTWO');

INSERT INTO modelos (idMarca, nombre)
VALUES (71, 'ACTERRA 6500'),
       (71, 'ACTERRA 7500'),
       (71, 'ACTERRA AT9500'),
       (71, 'L9500');

INSERT INTO modelos (idMarca, nombre)
VALUES (72, 'B9 TRIBECA'),
       (72, 'BRZ'),
       (72, 'CROSSTREK'),
       (72, 'CROSSTREK XV'),
       (72, 'FORESTER'),
       (72, 'IMPREZA'),
       (72, 'LEGACY'),
       (72, 'OUTBACK'),
       (72, 'TRIBECA'),  -- Include duplicate for clarity
       (72, 'WRX'),
       (72, 'XV');

INSERT INTO modelos (idMarca, nombre)
VALUES (73, 'AERIO'),
       (73, 'BALENO'),
       (73, 'CARRY'),
       (73, 'CIAZ'),
       (73, 'EQUATOR'),
       (73, 'ERTIGA'),
       (73, 'ERTIGA BOOSTERGREEN'),
       (73, 'ESCUDO'),
       (73, 'FORENZA'),
       (73, 'GRAND VITARA'),
       (73, 'IGNIS'),
       (73, 'JIMNY'),
       (73, 'KIZASHI'),
       (73, 'RENO'),
       (73, 'S-CROSS'),
       (73, 'SAMURAI'),
       (73, 'SIDEKICK'),
       (73, 'SJ410'),
       (73, 'SS80'),
       (73, 'ST90'),
       (73, 'SUPER CARRY'),
       (73, 'SWIFT'),
       (73, 'SWIFT CANADA'),
       (73, 'SX4'),
       (73, 'VERONA'),
       (73, 'VITARA'),
       (73, 'X90'),
       (73, 'XL7');

INSERT INTO modelos (idMarca, nombre)
VALUES (74, 'MODEL 3');

# TOTOTA
INSERT INTO modelos (idMarca, nombre)
VALUES ('75', '4RUNNER'), # 4RUNNER 
    ('75', 'AURION'),
    ('75', 'AVALON'),
    ('75', 'AVANZA'),
    ('75', 'CAMRY'),
    ('75', 'CELICA'),
    ('75', 'C-HR'),
    ('75', 'COROLLA'),
    ('75', 'COROLLA CROSS'),
    ('75', 'ECHO'),
    ('75', 'FJ CRUISER'), --
    ('75', 'HIACE'),
    ('75', 'HIGHLANDER'),
    ('75', 'HILUX'),
    ('75', 'LAND CRUISER'),
    ('75', 'MATRIX'),
    ('75', 'PASEO'),
    ('75', 'PICK UP'),
    ('75', 'PREVIA'),
    ('75', 'PRIUS'),
    ('75', 'PRIUS C'),
    ('75', 'RAV4'),
    ('75', 'SEQUOIA'),
    ('75', 'SIENNA'),
    ('75', 'SUPRA'),
    ('75', 'T100'),
    ('75', 'TACOMA'),
    ('75', 'TUNDRA'),
    ('75', 'VIOS'),
    ('75', 'YARIS');
    
INSERT INTO modelos (idMarca, nombre)
VALUES (76, '6052'),
       (76, '9004'),
       (76, '9005'),
       (76, '9006'),
       (76, '9007'),
       (76, 'CAMION'),
       (76, 'H10'),
       (76, 'H4'),
       (76, 'H7');

# VOLKSWAGEN
INSERT INTO modelos (idMarca, nombre)
VALUES (77, 'AMAROK'),
       (77, 'ARTEON'),
       (77, 'ATLANTIC'),
       (77, 'ATLAS'),
       (77, 'BEETLE'),
       (77, 'BORA'),
       (77, 'BRASILIA'),
       (77, 'CABRIO'),
       (77, 'CABRIOLET'),
       (77, 'CADDY'),
       (77, 'CARAVELLE'),
       (77, 'CARIBE'),
       (77, 'CC'),
       (77, 'CLASICO'),
       (77, 'COMBI'),
       (77, 'CORSAR'),
       (77, 'CRAFTER'),
       (77, 'CROSS SPORT'),
       (77, 'CROSSFOX'),
       (77, 'DERBY'),
       (77, 'DERBY_VAN'),
       (77, 'E-CRAFTER'),
       (77, 'EOS'),
       (77, 'EUROVAN'),
       (77, 'FOX'),
       (77, 'GOL'),
       (77, 'GOLF'),
       (77, 'GOLF A2'),
       (77, 'GOLF_A4'),
       (77, 'GOLF_GTI'),
       (77, 'GOLF_R'),
       (77, 'GOLF SPORTWAGEN'),
       (77, 'GTI'),
       (77, 'JETTA'),
       (77, 'JETTA A2'),
       (77, 'JETTA 43'),
       (77, 'JETTA 44'),
       (77, 'JETTA BICENTENARIO'),
       (77, 'LUPO'),
       (77, 'MULTIVAN'),
       (77, 'PANEL'),
       (77, 'PASSAT'),
       (77, 'PASSAT_CC'),
       (77, 'PEPPER'),
       (77, 'POINTER'),
       (77, 'POLO'),
       (77, 'POLO GTI'),
       (77, 'RABBIT'),
       (77, 'ROBUST'),
       (77, 'ROUTAN'),
       (77, 'SAVEIRO'),
       (77, 'SCIROCCO'),
       (77, 'SEDAN'),
       (77, 'SHARAN'),
       (77, 'SPORTVAN'),
       (77, 'T-CROSS'),
       (77, 'TAIGUN'),
       (77, 'TAOS'),
       (77, 'TERAMONT'),
       (77, 'TIGUAN'),
       (77, 'TOUAREG'),
       (77, 'TOURAN'),
       (77, 'TRANSPORTER'),
       (77, 'UP'),
       (77, 'VAN'),
       (77, 'VANAGON'),
       (77, 'VENTO'),
       (77, 'VIRTUS'),
       (77, 'WORKER');

INSERT INTO modelos (idMarca, nombre)
VALUES (78, '2000'),
       (78, '3RA GEN'),
       (78, 'C30'),
       (78, 'C70'),
       (78, 'CX'),
       (78, 'CXN'),
       (78, 'FE'),
       (78, 'FH'),
       (78, 'FH12'),
       (78, 'FH16'),
       (78, 'FL'),
       (78, 'FM'),
       (78, 'FM12'),
       (78, 'S40'),
       (78, 'S40 II'),
       (78, 'S60'),
       (78, 'S70'),
       (78, 'S80'),
       (78, 'V40'),
       (78, 'V50'),
       (78, 'V60'),
       (78, 'V70'),
       (78, 'VAH'),
       (78, 'VHD'),
       (78, 'VL/VN 1RA GEN'),
       (78, 'VLT'),
       (78, 'VN'),
       (78, 'VNL'),
       (78, 'VNL 2DA GEN'),
       (78, 'VNL 3RA GEN'),
       (78, 'VNL/VNM 2DA GEN'),
       (78, 'VNM'),
       (78, 'VNR'),
       (78, 'VNX'),
       (78, 'VT'),
       (78, 'WAH'),
       (78, 'WIA'),
       (78, 'WX'),
       (78, 'XC60'),
       (78, 'XC70'),
       (78, 'XC90');

INSERT INTO modelos (idMarca, nombre)
VALUES (79, 'FG25N'),
       (79, 'GP35A'),
       (79, 'P5000');

INSERT INTO modelos (idMarca, nombre)
VALUES (80, 'SEMICHATO CAPRE'),
       (80, 'CATOSA'),
       (80, 'AYCO'),
       (80, 'RECO'),
       (80, 'MARCO POLO'),
       (80, 'EUROCAR'),
       (80, 'NAVIESTAR'),
       (80, 'MIDIBUS'),
       (80, 'IRIZAR'),
       (80, 'INTERCENTURY');

INSERT INTO anios (anioInicio, anioFin, anioTodo) VALUES
(0, 0, TRUE),
(1957,1986,FALSE),
(1960,1965,FALSE),
(1961,1966,FALSE),
(1961,1967,FALSE),
(1961,1971,FALSE),
(1964,1966,FALSE),
(1964,1967,FALSE),
(1965,1973,FALSE),
(1966,1972,FALSE),
(1966,1973,FALSE),
(1967,1972,FALSE),
(1967,1976,FALSE),
(1967,1979,FALSE),
(1969,1970,FALSE),
(1969,1972,FALSE),
(1969,1975,FALSE),
(1970,1975,FALSE),
(1970,1977,FALSE),
(1970,1979,FALSE),
(1970,1980,FALSE),
(1971,1973,FALSE),
(1972,1978,FALSE),
(1972,1979,FALSE),
(1972,1980,FALSE),
(1972,1982,FALSE),
(1973,1979,FALSE),
(1973,1991,FALSE),
(1973,1993,FALSE),
(1973,2004,FALSE),
(1974,1978,FALSE),
(1974,1979,FALSE),
(1974,1980,FALSE),
(1974,1981,FALSE),
(1974,2001,FALSE),
(1975,1978,FALSE),
(1975,1992,FALSE),
(1976,1984,FALSE),
(1977,1978,FALSE),
(1977,1981,FALSE),
(1977,1987,FALSE),
(1977,1988,FALSE),
(1978,1980,FALSE),
(1978,1983,FALSE),
(1979,1982,FALSE),
(1979,1983,FALSE),
(1979,1984,FALSE),
(1979,1986,FALSE),
(1980,1983,FALSE),
(1980,1985,FALSE),
(1980,1990,FALSE),
(1980,1996,FALSE),
(1980,1999,FALSE),
(1981,1983,FALSE),
(1981,1986,FALSE),
(1981,1987,FALSE),
(1981,1988,FALSE),
(1981,1989,FALSE),
(1981,1993,FALSE),
(1982,1989,FALSE),
(1982,1994,FALSE),
(1983,1987,FALSE),
(1983,1988,FALSE),
(1984,1986,FALSE),
(1984,1987,FALSE),
(1984,1989,FALSE),
(1984,1992,FALSE),
(1984,1994,FALSE),
(1984,1999,FALSE),
(1985,1987,FALSE),
(1985,1988,FALSE),
(1986,1993,FALSE),
(1987,1989,FALSE),
(1987,1992,FALSE),
(1987,1993,FALSE),
(1987,1994,FALSE),
(1987,1995,FALSE),
(1987,1996,FALSE),
(1988,1991,FALSE),
(1988,1992,FALSE),
(1988,1993,FALSE),
(1988,1994,FALSE),
(1988,1997,FALSE),
(1988,1998,FALSE),
(1989,1991,FALSE),
(1989,1993,FALSE),
(1989,1995,FALSE),
(1989,1998,FALSE),
(1990,1993,FALSE),
(1990,1994,FALSE),
(1990,1996,FALSE),
(1990,1997,FALSE),
(1990,1998,FALSE),
(1991,1994,FALSE),
(1991,1995,FALSE),
(1991,1996,FALSE),
(1991,2006,FALSE),
(1992,1995,FALSE),
(1992,1996,FALSE),
(1992,2002,FALSE),
(1992,2003,FALSE),
(1992,2005,FALSE),
(1992,2008,FALSE),
(1992,2014,FALSE),
(1992,2016,FALSE),
(1993,1995,FALSE),
(1993,1997,FALSE),
(1993,1998,FALSE),
(1993,1999,FALSE),
(1993,2004,FALSE),
(1993,2010,FALSE),
(1993,2011,FALSE),
(1994,1997,FALSE),
(1994,1998,FALSE),
(1994,2002,FALSE),
(1994,2003,FALSE),
(1994,2006,FALSE),
(1994,2008,FALSE),
(1994,2012,FALSE),
(1994,2015,FALSE),
(1995,1997,FALSE),
(1995,1998,FALSE),
(1995,1999,FALSE),
(1995,2000,FALSE),
(1995,2001,FALSE),
(1995,2002,FALSE),
(1995,2004,FALSE),
(1995,2005,FALSE),
(1996,1998,FALSE),
(1996,1999,FALSE),
(1996,2000,FALSE),
(1996,2002,FALSE),
(1996,2004,FALSE),
(1996,2005,FALSE),
(1996,2011,FALSE),
(1997,2001,FALSE),
(1997,2002,FALSE),
(1997,2003,FALSE),
(1997,2004,FALSE),
(1997,2005,FALSE),
(1997,2006,FALSE),
(1997,2007,FALSE),
(1998,2001,FALSE),
(1998,2002,FALSE),
(1998,2003,FALSE),
(1998,2004,FALSE),
(1998,2005,FALSE),
(1998,2007,FALSE),
(1998,2008,FALSE),
(1998,2010,FALSE),
(1998,2012,FALSE),
(1999,2000,FALSE),
(1999,2001,FALSE),
(1999,2003,FALSE),
(1999,2004,FALSE),
(1999,2005,FALSE),
(1999,2006,FALSE),
(1999,2008,FALSE),
(1999,2009,FALSE),
(1999,2012,FALSE),
(2000,2000,FALSE),
(2000,2001,FALSE),
(2000,2004,FALSE),
(2000,2005,FALSE),
(2000,2006,FALSE),
(2000,2008,FALSE),
(2000,2010,FALSE),
(2000,2013,FALSE),
(2001,2001,FALSE),
(2001,2003,FALSE),
(2001,2004,FALSE),
(2001,2005,FALSE),
(2001,2006,FALSE),
(2001,2007,FALSE),
(2001,2008,FALSE),
(2001,2010,FALSE),
(2001,2011,FALSE),
(2001,2013,FALSE),
(2002,2005,FALSE),
(2002,2006,FALSE),
(2002,2007,FALSE),
(2002,2008,FALSE),
(2002,2009,FALSE),
(2002,2010,FALSE),
(2002,2012,FALSE),
(2003,2003,FALSE),
(2003,2005,FALSE),
(2003,2006,FALSE),
(2003,2007,FALSE),
(2003,2008,FALSE),
(2003,2009,FALSE),
(2003,2010,FALSE),
(2003,2013,FALSE),
(2004,2005,FALSE),
(2004,2007,FALSE),
(2004,2008,FALSE),
(2004,2009,FALSE),
(2004,2010,FALSE),
(2004,2011,FALSE),
(2004,2012,FALSE),
(2005,2005,FALSE),
(2005,2009,FALSE),
(2005,2010,FALSE),
(2005,2011,FALSE),
(2005,2014,FALSE),
(2006,2007,FALSE),
(2006,2008,FALSE),
(2006,2009,FALSE),
(2006,2010,FALSE),
(2006,2011,FALSE),
(2006,2012,FALSE),
(2006,2013,FALSE),
(2006,2014,FALSE),
(2006,2015,FALSE),
(2006,2016,FALSE),
(2016,2017,FALSE),
(2007,2007,FALSE),
(2007,2008,FALSE),
(2007,2009,FALSE),
(2007,2010,FALSE),
(2007,2011,FALSE),
(2007,2012,FALSE),
(2007,2013,FALSE),
(2007,2014,FALSE),
(2007,2015,FALSE),
(2007,2016,FALSE),
(2007,2017,FALSE),
(2008,2008,FALSE),
(2008,2010,FALSE),
(2008,2011,FALSE),
(2008,2012,FALSE),
(2008,2013,FALSE),
(2008,2014,FALSE),
(2008,2015,FALSE),
(2008,2016,FALSE),
(2008,2018,FALSE),
(2009,2011,FALSE),
(2009,2013,FALSE),
(2009,2014,FALSE),
(2009,2015,FALSE),
(2009,2016,FALSE),
(2009,2017,FALSE),
(2010,2010,FALSE),
(2010,2011,FALSE),
(2010,2012,FALSE),
(2010,2013,FALSE),
(2010,2014,FALSE),
(2010,2015,FALSE),
(2010,2016,FALSE),
(2011,2012,FALSE),
(2011,2013,FALSE),
(2011,2014,FALSE),
(2011,2015,FALSE),
(2011,2016,FALSE),
(2011,2017,FALSE),
(2012,2012,FALSE),
(2012,2013,FALSE),
(2012,2014,FALSE),
(2012,2015,FALSE),
(2012,2016,FALSE),
(2012,2017,FALSE),
(2012,2018,FALSE),
(2013,2013,FALSE),
(2013,2014,FALSE),
(2013,2015,FALSE),
(2013,2016,FALSE),
(2013,2018,FALSE),
(2013,2019,FALSE),
(2014,2014,FALSE),
(2014,2016,FALSE),
(2014,2018,FALSE),
(2015,2015,FALSE),
(2015,2017,FALSE),
(2015,2018,FALSE),
(2015,2019,FALSE),
(2016,2016,FALSE),
(2016,2018,FALSE),
(2016,2019,FALSE),
(2018,2018,FALSE),
(2019,2019,FALSE),
(2019,2020,FALSE),
(2020,2021,FALSE);

-- Relacionar modelo con un año
-- Parametros (idModelo, anioInicio, anioFin, todoAnio )
-- CALL proc_insertar_modelos(p_idModelo, p_anioInicio, p_anioFin, p_anioTodo, @p_idModeloAnio)
CALL proc_insertar_modelos(205, 1998, 2005, FALSE, @p_idModeloAnio); -- astro: chevrolet
CALL proc_insertar_modelos(204, 2001, 2006, FALSE, @p_idModeloAnio); -- astra: chevrolet
CALL proc_insertar_modelos(207, 2006, 2012, FALSE, @p_idModeloAnio); -- aveo: chevrolet
CALL proc_insertar_modelos(207, 2012, 2017, FALSE, @p_idModeloAnio); -- aveo: chevrolet
CALL proc_insertar_modelos(215, 2008, 2016, FALSE, @p_idModeloAnio); -- captiva: chevrolet
CALL proc_insertar_modelos(219, 1975, 1978, FALSE, @p_idModeloAnio); -- chevy: chevrolet
CALL proc_insertar_modelos(434, 1990, 1998, FALSE, @p_idModeloAnio); -- aerostar: ford
CALL proc_insertar_modelos(441, 1995, 1999, FALSE, @p_idModeloAnio); -- contour: ford
CALL proc_insertar_modelos(444, 1972, 1982, FALSE, @p_idModeloAnio); -- courier: ford
CALL proc_insertar_modelos(456, 1961, 1967, FALSE, @p_idModeloAnio); -- econoline: ford
CALL proc_insertar_modelos(1211, 1993, 1997, FALSE, @p_idModeloAnio); -- altima: nissan
CALL proc_insertar_modelos(1210, 2000, 2006, FALSE, @p_idModeloAnio); -- almera: nissan
CALL proc_insertar_modelos(1212, 2008, 2010, FALSE, @p_idModeloAnio); -- aprio: nissan
CALL proc_insertar_modelos(1221, 1981, 1983, FALSE, @p_idModeloAnio); -- datsun: nissan
CALL proc_insertar_modelos(1541, 0, 0, TRUE, @p_idModeloAnio ); -- camion: universal

-- insertar producto en inventario y relacionar con proveedorProductos y registroProductos
-- CALL proc_insertar_producto
--				  (p_idCategoria, p_idUnidadMedida, p_codigoBarras, p_nombre, p_descripcion, p_cantidadActual, p_cantidadMinima, 
-- 				p_precioCompra, p_mayoreo, p_menudeo, p_colocado, p_idProveedor, p_idUsuario, p_idInventario)

-- Crear una venta en 3 pasos para llenar la tabla ventas, ventaproductos y pagoventa  
-- proc_crear_venta (idUsuario, idCliente)
-- proc_agregar_producto_venta (idVenta, idInventario, cantidad, tipoVenta, precioVenta, subtotal)
-- FinalizarVenta (idVenta, montoTotal, recibioDinero, folioTicket, imprimioTicket, idTipoPago, referenciaUnica)