-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema TecnoOffice1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TecnoOffice1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TecnoOffice1` DEFAULT CHARACTER SET utf8 ;
USE `TecnoOffice1` ;

-- -----------------------------------------------------
-- Table `TecnoOffice1`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TecnoOffice1`.`Departamento` (
  `id_departamento` INT NOT NULL,
  `nom_departamento` VARCHAR(45) NULL,
  `Jefe_area` VARCHAR(45) NULL,
  PRIMARY KEY (`id_departamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TecnoOffice1`.`Puesto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TecnoOffice1`.`Puesto` (
  `id_puesto` INT NOT NULL,
  `nom_puesto` VARCHAR(45) NULL,
  PRIMARY KEY (`id_puesto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TecnoOffice1`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TecnoOffice1`.`Empleado` (
  `id_empleado` INT NOT NULL,
  `nom_empleado` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `correo` VARCHAR(45) NULL,
  `fecha_ingreso` DATE NULL,
  `estatus` VARCHAR(45) NULL,
  `salario` DECIMAL(10,2) NULL,
  `Departamento_id_departamento` INT NOT NULL,
  `Puesto_id_puesto` INT NOT NULL,
  PRIMARY KEY (`id_empleado`),
  INDEX `fk_Empleado_Departamento_idx` (`Departamento_id_departamento` ASC) VISIBLE,
  INDEX `fk_Empleado_Puesto1_idx` (`Puesto_id_puesto` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_Departamento`
    FOREIGN KEY (`Departamento_id_departamento`)
    REFERENCES `TecnoOffice1`.`Departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Empleado_Puesto1`
    FOREIGN KEY (`Puesto_id_puesto`)
    REFERENCES `TecnoOffice1`.`Puesto` (`id_puesto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- Inserción en Tabla: Puesto
INSERT INTO Puesto (id_puesto, nom_puesto) VALUES
(1, 'Ejecutivo'),
(2, 'Auxiliar'),
(3, 'Programador'),
(4, 'Coordinador de Marketing'),
(5, 'Auxiliar Contable'),
(6, 'Ejecutivo de Ventas'),
(7, 'Gerente de Ventas'),
(8, 'Auditor Interno'),
(9, 'Especialista de Abastecimiento'),
(10, 'Asesor Comercial'),
(11, 'Diseñador Gráfico'),
(12, 'Generalista de RRHH'),
(13, 'Gerente de RRHH'),
(14, 'Especialista SEO'),
(15, 'Analista de Nómina'),
(16, 'Supervisor de Planta'),
(17, 'Soporte Técnico'),
(18, 'Auxiliar de RRHH'),
(19, 'Gerente de Finanzas'),
(20, 'Administrador de Redes'),
(21, 'Contador'),
(22, 'Coordinador de Ventas'),
(23, 'Gerente de Compras'),
(24, 'Operador de Logística'),
(25, 'Analista de Compras'),
(26, 'Analista de Sistemas'),
(27, 'Gerente de TI'),
(28, 'Gerente de Operaciones'),
(29, 'Auxiliar de Compras'),
(30, 'Coordinador de Operaciones'),
(31, 'Gerente de Marca');

-- Inserción en Tabla: Departamento
INSERT INTO Departamento (id_departamento, nom_departamento, Jefe_area) VALUES
(1, 'Ventas', 'Laura Gómez'),
(2, 'Compras', 'Carlos Díaz'),
(3, 'Sistemas', 'Miguel López'),
(4, 'Marketing', 'Sofía Castro'),
(5, 'Contabilidad', 'Roberto Méndez'),
(6, 'Recursos Humanos', 'Elena Pastrana'),
(7, 'Operaciones', 'Alejandro Ruiz');



INSERT INTO Empleado (id_empleado, nom_empleado, telefono, correo, fecha_ingreso, estatus, salario, Departamento_id_departamento, Puesto_id_puesto) VALUES
(101, 'Juan Pérez', '555-1234', 'juan.perez@empresa.com', '2023-02-15', 'Activo', 14500.0, 1, 1),
(102, 'Ana Ruiz', '555-2345', 'ana.ruiz@empresa.com', '2024-01-10', 'Activo', 11800.0, 2, 2),
(103, 'Luis Torres', '555-3456', 'luis.torres@empresa.com', '2022-09-08', 'Activo', 18500.0, 3, 3),
(104, 'Ricardo Gómez Pérez', '555-4657', 'ricardo.gomez104@empresa.com', '2019-07-26', 'Activo', 20200.0, 4, 4),
(105, 'Andrea Mendoza Castro', '555-7912', 'andrea.mendoza@empresa.com', '2018-05-11', 'Activo', 17800.0, 5, 5),
(106, 'Pedro Rodríguez García', '555-4257', 'pedro.rodriguez@empresa.com', '2026-01-11', 'Activo', 17500.0, 5, 5),
(107, 'Sofía Castillo Reyes', '555-7924', 'sofia.castillo@empresa.com', '2021-10-25', 'Activo', 24700.0, 3, 3),
(108, 'Pedro Ramos Sánchez', '555-2584', 'pedro.ramos108@empresa.com', '2022-01-10', 'Activo', 21800.0, 1, 6),
(109, 'Gabriela Martínez Chávez', '555-3045', 'gabriela.martinez@empresa.com', '2022-03-31', 'Activo', 34700.0, 1, 7),
(110, 'Elena Rivera Álvarez', '555-4150', 'elena.rivera@empresa.com', '2025-11-25', 'Activo', 35800.0, 5, 8),
(111, 'Andrea Rodríguez Ramos', '555-2654', 'andrea.rodriguez@empresa.com', '2022-04-06', 'Activo', 27100.0, 3, 3),
(112, 'Ricardo Rivera Ramírez', '555-4432', 'ricardo.rivera@empresa.com', '2025-07-08', 'Activo', 20100.0, 2, 9),
(113, 'Silvia Gutiérrez Álvarez', '555-5010', 'silvia.gutierrez@empresa.com', '2019-11-01', 'Activo', 24300.0, 1, 10),
(114, 'Miguel Vargas Álvarez', '555-6313', 'miguel.vargas@empresa.com', '2018-08-18', 'Activo', 27400.0, 4, 11),
(115, 'Ana Chávez Sánchez', '555-4456', 'ana.chavez115@empresa.com', '2024-05-12', 'Activo', 16000.0, 6, 12),
(116, 'Jorge González Álvarez', '555-8517', 'jorge.gonzalez@empresa.com', '2019-08-09', 'Activo', 37600.0, 6, 13),
(117, 'Sofía Mendoza Jiménez', '555-7543', 'sofia.mendoza@empresa.com', '2022-01-22', 'Activo', 30900.0, 5, 8),
(118, 'Carlos García Morales', '555-3504', 'carlos.garcia@empresa.com', '2025-01-14', 'Activo', 17300.0, 1, 6),
(119, 'Andrea Vázquez Cruz', '555-8668', 'andrea.vazquez@empresa.com', '2023-12-08', 'Activo', 33500.0, 1, 7),
(120, 'Isabel Medina Pérez', '555-9797', 'isabel.medina120@empresa.com', '2020-12-28', 'Activo', 27400.0, 4, 14),
(121, 'Jorge Gómez Hernández', '555-1053', 'jorge.gomez121@empresa.com', '2026-02-05', 'Activo', 22300.0, 6, 15),
(122, 'Roberto Ramos López', '555-5889', 'roberto.ramos@empresa.com', '2025-03-02', 'Activo', 18100.0, 5, 5),
(123, 'Pedro Díaz Ramírez', '555-9689', 'pedro.diaz@empresa.com', '2018-01-03', 'Activo', 31900.0, 7, 16),
(124, 'Patricia Pérez Gómez', '555-1949', 'patricia.perez124@empresa.com', '2020-09-13', 'Activo', 27300.0, 3, 17),
(125, 'Luis Torres Mendoza', '555-3060', 'luis.torres@empresa.com', '2019-06-10', 'Activo', 15800.0, 6, 18),
(126, 'Isabel López Martínez', '555-9835', 'isabel.lopez@empresa.com', '2026-03-09', 'Activo', 41800.0, 5, 19),
(127, 'Diego Gutiérrez Álvarez', '555-8397', 'diego.gutierrez@empresa.com', '2019-05-11', 'Activo', 36400.0, 3, 20),
(128, 'Luis Sánchez Pérez', '555-1117', 'luis.sanchez128@empresa.com', '2018-10-18', 'Activo', 24100.0, 5, 21),
(129, 'Ana Rodríguez Torres', '555-9423', 'ana.rodriguez@empresa.com', '2020-09-01', 'Activo', 16700.0, 1, 22),
(130, 'Patricia González Jiménez', '555-8749', 'patricia.gonzalez@empresa.com', '2022-07-26', 'Activo', 33900.0, 2, 23),
(131, 'María Gutiérrez Vázquez', '555-8651', 'maria.gutierrez@empresa.com', '2026-03-06', 'Activo', 32900.0, 3, 20),
(132, 'Ricardo Gómez Ruiz', '555-2790', 'ricardo.gomez@empresa.com', '2020-10-15', 'Activo', 28000.0, 6, 12),
(133, 'Isabel Castillo Díaz', '555-8579', 'isabel.castillo133@empresa.com', '2020-10-20', 'Activo', 19500.0, 6, 15),
(134, 'Luis Castillo Chávez', '555-9856', 'luis.castillo134@empresa.com', '2018-03-02', 'Activo', 11400.0, 7, 24),
(135, 'Silvia Ramos Medina', '555-8956', 'silvia.ramos@empresa.com', '2023-05-26', 'Activo', 20900.0, 2, 25),
(136, 'Diego Castro Ruiz', '555-7396', 'diego.castro136@empresa.com', '2020-12-22', 'Activo', 32000.0, 2, 23),
(137, 'Mónica Castillo Hernández', '555-4111', 'monica.castillo@empresa.com', '2021-04-30', 'Activo', 31600.0, 6, 13),
(138, 'Ana Reyes Mendoza', '555-1936', 'ana.reyes@empresa.com', '2018-07-25', 'Activo', 15500.0, 5, 5),
(139, 'Roberto Vargas Medina', '555-9320', 'roberto.vargas139@empresa.com', '2018-11-25', 'Activo', 18700.0, 5, 21),
(140, 'Luis Cruz Torres', '555-2964', 'luis.cruz@empresa.com', '2024-05-22', 'Activo', 22800.0, 4, 11),
(141, 'Gabriela Ruiz Cruz', '555-9565', 'gabriela.ruiz141@empresa.com', '2021-07-19', 'Activo', 35700.0, 1, 7),
(142, 'Pedro Gutiérrez Ortiz', '555-7484', 'pedro.gutierrez@empresa.com', '2019-06-21', 'Activo', 28200.0, 3, 26),
(143, 'Elena Castillo Sánchez', '555-8508', 'elena.castillo143@empresa.com', '2024-12-19', 'Activo', 11000.0, 7, 24),
(144, 'María Torres Jiménez', '555-6718', 'maria.torres144@empresa.com', '2018-10-09', 'Activo', 16400.0, 2, 9),
(145, 'Lucía Hernández López', '555-9666', 'lucia.hernandez@empresa.com', '2018-02-02', 'Activo', 24900.0, 6, 12),
(146, 'Isabel Hernández Vargas', '555-3200', 'isabel.hernandez@empresa.com', '2020-12-19', 'Activo', 30600.0, 4, 14),
(147, 'María Mendoza Jiménez', '555-4450', 'maria.mendoza@empresa.com', '2026-01-18', 'Activo', 18900.0, 2, 9),
(148, 'Beatriz Martínez García', '555-2512', 'beatriz.martinez@empresa.com', '2025-02-11', 'Activo', 15700.0, 6, 12),
(149, 'Miguel Ruiz Pérez', '555-5291', 'miguel.ruiz149@empresa.com', '2019-10-24', 'Activo', 40300.0, 3, 26),
(150, 'Isabel Ortiz Vázquez', '555-2232', 'isabel.ortiz150@empresa.com', '2025-10-01', 'Activo', 13900.0, 5, 5),
(151, 'Isabel Ruiz Rivera', '555-3426', 'isabel.ruiz@empresa.com', '2022-10-27', 'Activo', 53000.0, 3, 27),
(152, 'Elena Ramírez Castro', '555-4441', 'elena.ramirez@empresa.com', '2025-08-25', 'Activo', 13900.0, 7, 24),
(153, 'María Ramírez Ramos', '555-4878', 'maria.ramirez153@empresa.com', '2019-10-28', 'Activo', 40900.0, 5, 19),
(154, 'Mónica López Castro', '555-6442', 'monica.lopez154@empresa.com', '2022-08-14', 'Activo', 12900.0, 6, 18),
(155, 'Beatriz Mendoza Chávez', '555-2771', 'beatriz.mendoza155@empresa.com', '2022-04-16', 'Activo', 16900.0, 2, 9),
(156, 'Beatriz Morales Rodríguez', '555-6000', 'beatriz.morales@empresa.com', '2020-07-21', 'Activo', 34800.0, 2, 23),
(157, 'Andrea González Flores', '555-5573', 'andrea.gonzalez@empresa.com', '2021-12-09', 'Activo', 21700.0, 3, 17),
(158, 'Diego Gutiérrez Rivera', '555-2889', 'diego.gutierrez@empresa.com', '2020-12-05', 'Activo', 17800.0, 5, 8),
(159, 'Miguel Ruiz Gómez', '555-6139', 'miguel.ruiz@empresa.com', '2022-11-23', 'Activo', 44000.0, 5, 19),
(160, 'Roberto Gómez Flores', '555-1727', 'roberto.gomez@empresa.com', '2025-12-13', 'Activo', 25200.0, 5, 21),
(161, 'Roberto Vargas Chávez', '555-8066', 'roberto.vargas161@empresa.com', '2018-10-14', 'Activo', 28800.0, 5, 21),
(162, 'Silvia Sánchez Cruz', '555-9308', 'silvia.sanchez@empresa.com', '2021-06-20', 'Activo', 29300.0, 3, 3),
(163, 'Jorge Flores Ortiz', '555-4143', 'jorge.flores@empresa.com', '2022-09-19', 'Activo', 46000.0, 3, 27),
(164, 'Diego Gutiérrez Mendoza', '555-9977', 'diego.gutierrez@empresa.com', '2018-01-02', 'Activo', 20900.0, 2, 9),
(165, 'Pedro Vázquez Chávez', '555-8238', 'pedro.vazquez@empresa.com', '2022-12-17', 'Activo', 32100.0, 5, 8),
(166, 'Roberto Morales Chávez', '555-5649', 'roberto.morales@empresa.com', '2023-10-13', 'Activo', 17000.0, 7, 16),
(167, 'Gabriela Sánchez Torres', '555-4680', 'gabriela.sanchez@empresa.com', '2020-03-26', 'Activo', 24400.0, 7, 16),
(168, 'Ana Rodríguez Morales', '555-7790', 'ana.rodriguez@empresa.com', '2025-01-23', 'Activo', 16700.0, 5, 5),
(169, 'Fernando Ortiz Flores', '555-3417', 'fernando.ortiz@empresa.com', '2025-05-11', 'Activo', 32300.0, 6, 13),
(170, 'Raúl Ramos Medina', '555-4585', 'raul.ramos170@empresa.com', '2019-12-22', 'Activo', 14400.0, 7, 24),
(171, 'Fernando García Castillo', '555-8478', 'fernando.garcia171@empresa.com', '2019-07-01', 'Activo', 17500.0, 1, 10),
(172, 'Andrea García Jiménez', '555-9270', 'andrea.garcia172@empresa.com', '2022-10-14', 'Activo', 31400.0, 5, 8),
(173, 'Isabel Castillo Castro', '555-5246', 'isabel.castillo173@empresa.com', '2020-10-09', 'Activo', 35600.0, 2, 23),
(174, 'Miguel Ramos Ramos', '555-5499', 'miguel.ramos@empresa.com', '2022-12-07', 'Activo', 42300.0, 5, 19),
(175, 'Elena Rodríguez Martínez', '555-2320', 'elena.rodriguez@empresa.com', '2019-07-21', 'Activo', 37100.0, 3, 17),
(176, 'Diego Ortiz Díaz', '555-7797', 'diego.ortiz@empresa.com', '2022-07-28', 'Activo', 17300.0, 4, 11),
(177, 'Alejandro Vázquez Ruiz', '555-1320', 'alejandro.vazquez@empresa.com', '2024-06-16', 'Activo', 35100.0, 2, 23),
(178, 'Juan Ramírez Hernández', '555-9818', 'juan.ramirez@empresa.com', '2026-03-29', 'Activo', 42800.0, 7, 28),
(179, 'Sofía Morales Rodríguez', '555-1475', 'sofia.morales@empresa.com', '2022-05-12', 'Activo', 35400.0, 3, 20),
(180, 'Andrea Chávez Flores', '555-8657', 'andrea.chavez180@empresa.com', '2019-06-07', 'Activo', 30000.0, 4, 11),
(181, 'Isabel Pérez Vargas', '555-8022', 'isabel.perez181@empresa.com', '2019-07-10', 'Activo', 12100.0, 6, 18),
(182, 'Laura Ruiz Martínez', '555-8449', 'laura.ruiz@empresa.com', '2021-08-31', 'Activo', 18400.0, 6, 12),
(183, 'Raúl Flores Martínez', '555-2341', 'raul.flores@empresa.com', '2023-04-11', 'Activo', 40100.0, 7, 28),
(184, 'Isabel Ruiz Ramírez', '555-1508', 'isabel.ruiz@empresa.com', '2020-10-09', 'Activo', 11300.0, 2, 29),
(185, 'Juan Cruz Díaz', '555-2874', 'juan.cruz185@empresa.com', '2024-04-29', 'Activo', 22000.0, 2, 25),
(186, 'Alejandro Ortiz Martínez', '555-2876', 'alejandro.ortiz186@empresa.com', '2019-11-02', 'Activo', 19700.0, 7, 30),
(187, 'María Reyes Pérez', '555-7498', 'maria.reyes@empresa.com', '2026-01-07', 'Activo', 50100.0, 3, 27),
(188, 'Manuel Álvarez Rodríguez', '555-2983', 'manuel.alvarez188@empresa.com', '2024-05-07', 'Activo', 26800.0, 1, 22),
(189, 'Lucía Jiménez Vázquez', '555-9289', 'lucia.jimenez@empresa.com', '2025-04-06', 'Activo', 17300.0, 4, 4),
(190, 'Beatriz Vázquez Rivera', '555-6934', 'beatriz.vazquez190@empresa.com', '2025-02-16', 'Activo', 15000.0, 6, 18),
(191, 'Alejandro Ortiz Díaz', '555-9548', 'alejandro.ortiz@empresa.com', '2025-04-18', 'Activo', 26900.0, 6, 15),
(192, 'Mónica Vargas Jiménez', '555-8136', 'monica.vargas@empresa.com', '2026-03-14', 'Activo', 43600.0, 7, 28),
(193, 'Sofía Rivera Vargas', '555-4995', 'sofia.rivera@empresa.com', '2023-03-19', 'Activo', 22900.0, 1, 22),
(194, 'Andrea Flores Sánchez', '555-6325', 'andrea.flores@empresa.com', '2020-01-15', 'Activo', 37300.0, 1, 7),
(195, 'Lucía Chávez Martínez', '555-5526', 'lucia.chavez@empresa.com', '2024-03-26', 'Activo', 39000.0, 3, 17),
(196, 'Pedro Torres Rodríguez', '555-4937', 'pedro.torres@empresa.com', '2025-09-29', 'Activo', 40800.0, 4, 31),
(197, 'Fernando Morales Castillo', '555-5820', 'fernando.morales@empresa.com', '2020-06-26', 'Activo', 11700.0, 7, 24),
(198, 'Sofía Hernández Gutiérrez', '555-9698', 'sofia.hernandez@empresa.com', '2021-11-09', 'Activo', 32400.0, 5, 8),
(199, 'Claudia Jiménez Sánchez', '555-6023', 'claudia.jimenez@empresa.com', '2020-10-26', 'Activo', 28300.0, 3, 20),
(200, 'Claudia González Sánchez', '555-4545', 'claudia.gonzalez@empresa.com', '2026-04-14', 'Activo', 18700.0, 1, 10),
(201, 'Javier García Cruz', '555-5853', 'javier.garcia@empresa.com', '2020-07-20', 'Activo', 25800.0, 3, 3),
(202, 'Elena Pérez Ortiz', '555-1745', 'elena.perez@empresa.com', '2018-08-12', 'Activo', 25800.0, 5, 21),
(203, 'Fernando Díaz Álvarez', '555-1200', 'fernando.diaz@empresa.com', '2024-06-09', 'Activo', 37600.0, 7, 28),
(204, 'Patricia Castillo Sánchez', '555-8827', 'patricia.castillo204@empresa.com', '2019-04-13', 'Activo', 13000.0, 2, 29),
(205, 'Diego Morales Torres', '555-3444', 'diego.morales205@empresa.com', '2024-04-24', 'Activo', 14200.0, 5, 5),
(206, 'Luis Rodríguez Gómez', '555-9561', 'luis.rodriguez@empresa.com', '2022-04-08', 'Activo', 42000.0, 5, 19),
(207, 'Alejandro Hernández Medina', '555-1986', 'alejandro.hernandez207@empresa.com', '2024-11-02', 'Activo', 43400.0, 5, 19),
(208, 'María Ramos González', '555-2330', 'maria.ramos@empresa.com', '2019-10-06', 'Activo', 20500.0, 4, 11),
(209, 'Isabel Torres López', '555-8699', 'isabel.torres@empresa.com', '2021-04-07', 'Activo', 34000.0, 1, 7),
(210, 'Elena Ortiz Hernández', '555-4824', 'elena.ortiz210@empresa.com', '2020-12-19', 'Activo', 33900.0, 4, 31),
(211, 'Ricardo Reyes Gutiérrez', '555-2880', 'ricardo.reyes@empresa.com', '2024-02-09', 'Activo', 28200.0, 7, 16),
(212, 'Carlos Vargas Martínez', '555-1977', 'carlos.vargas212@empresa.com', '2019-11-11', 'Activo', 16600.0, 7, 16),
(213, 'Gabriela Mendoza Rivera', '555-3037', 'gabriela.mendoza@empresa.com', '2023-04-04', 'Activo', 31200.0, 5, 8),
(214, 'Fernando Flores Martínez', '555-2317', 'fernando.flores@empresa.com', '2024-09-15', 'Activo', 45500.0, 5, 19),
(215, 'Carmen Mendoza Sánchez', '555-2496', 'carmen.mendoza215@empresa.com', '2020-07-26', 'Activo', 17700.0, 5, 8),
(216, 'Manuel Medina Reyes', '555-1659', 'manuel.medina@empresa.com', '2019-12-19', 'Activo', 15200.0, 5, 5),
(217, 'Ricardo Castillo Vargas', '555-8141', 'ricardo.castillo217@empresa.com', '2025-02-13', 'Activo', 38600.0, 3, 26),
(218, 'Luis Morales Ramírez', '555-2713', 'luis.morales@empresa.com', '2019-10-21', 'Activo', 20200.0, 6, 12),
(219, 'Fernando Morales Hernández', '555-8451', 'fernando.morales@empresa.com', '2018-12-27', 'Activo', 33400.0, 4, 31),
(220, 'Jorge Gómez Ramos', '555-8569', 'jorge.gomez@empresa.com', '2022-08-20', 'Activo', 15900.0, 6, 18),
(221, 'Roberto Ramírez Cruz', '555-1845', 'roberto.ramirez@empresa.com', '2020-04-13', 'Activo', 43200.0, 7, 28),
(222, 'Carlos Vargas Hernández', '555-1472', 'carlos.vargas@empresa.com', '2025-01-24', 'Activo', 31300.0, 6, 13),
(223, 'Sofía Ortiz López', '555-7684', 'sofia.ortiz@empresa.com', '2019-01-17', 'Activo', 44200.0, 3, 27),
(224, 'Manuel Vargas Gómez', '555-9165', 'manuel.vargas@empresa.com', '2026-01-14', 'Activo', 12700.0, 6, 18),
(225, 'Carmen Rivera Morales', '555-3369', 'carmen.rivera@empresa.com', '2022-04-21', 'Activo', 22400.0, 6, 15),
(226, 'Gabriela García Mendoza', '555-7798', 'gabriela.garcia226@empresa.com', '2021-10-24', 'Activo', 13200.0, 2, 29),
(227, 'Roberto Martínez Rivera', '555-5891', 'roberto.martinez@empresa.com', '2024-08-01', 'Activo', 27400.0, 1, 22),
(228, 'Andrea Morales Medina', '555-8935', 'andrea.morales@empresa.com', '2021-11-14', 'Activo', 36400.0, 2, 23),
(229, 'Javier Jiménez Flores', '555-4912', 'javier.jimenez@empresa.com', '2024-05-31', 'Activo', 18000.0, 6, 12),
(230, 'Beatriz Ramos Vázquez', '555-8749', 'beatriz.ramos230@empresa.com', '2025-11-28', 'Activo', 27800.0, 1, 22),
(231, 'Diego Flores Gutiérrez', '555-1606', 'diego.flores@empresa.com', '2019-06-02', 'Activo', 30500.0, 7, 16),
(232, 'Francisco Sánchez Medina', '555-9617', 'francisco.sanchez@empresa.com', '2023-02-15', 'Activo', 31200.0, 1, 7),
(233, 'Carlos Vázquez Medina', '555-8692', 'carlos.vazquez@empresa.com', '2020-12-21', 'Activo', 17400.0, 4, 11),
(234, 'Fernando Flores Álvarez', '555-9742', 'fernando.flores234@empresa.com', '2022-04-06', 'Activo', 26600.0, 1, 22),
(235, 'Ricardo Ortiz Castro', '555-1588', 'ricardo.ortiz@empresa.com', '2024-12-04', 'Activo', 44800.0, 7, 28),
(236, 'Ricardo Gutiérrez Vargas', '555-8110', 'ricardo.gutierrez236@empresa.com', '2019-02-08', 'Activo', 22400.0, 3, 26),
(237, 'Fernando Medina Gómez', '555-5906', 'fernando.medina@empresa.com', '2018-04-29', 'Activo', 26300.0, 6, 15),
(238, 'Mónica Ruiz Hernández', '555-3385', 'monica.ruiz@empresa.com', '2020-09-27', 'Activo', 33600.0, 3, 17),
(239, 'Francisco Gutiérrez Chávez', '555-2293', 'francisco.gutierrez239@empresa.com', '2024-11-01', 'Activo', 17100.0, 2, 25),
(240, 'Gabriela Gutiérrez Rodríguez', '555-8555', 'gabriela.gutierrez@empresa.com', '2025-02-25', 'Activo', 18700.0, 6, 15),
(241, 'Miguel Gutiérrez Pérez', '555-9955', 'miguel.gutierrez@empresa.com', '2019-10-10', 'Activo', 40700.0, 7, 28),
(242, 'Lucía Reyes Hernández', '555-8484', 'lucia.reyes@empresa.com', '2021-05-22', 'Activo', 36800.0, 4, 31),
(243, 'Diego Medina Morales', '555-6881', 'diego.medina@empresa.com', '2024-06-12', 'Activo', 21800.0, 1, 10),
(244, 'Fernando Hernández Pérez', '555-1132', 'fernando.hernandez244@empresa.com', '2024-05-07', 'Activo', 40400.0, 7, 28),
(245, 'Javier Mendoza Ruiz', '555-4770', 'javier.mendoza245@empresa.com', '2024-10-22', 'Activo', 43000.0, 5, 19),
(246, 'Sofía Álvarez González', '555-2591', 'sofia.alvarez@empresa.com', '2025-01-14', 'Activo', 21300.0, 5, 8),
(247, 'Elena Chávez Castillo', '555-3153', 'elena.chavez247@empresa.com', '2019-01-05', 'Activo', 27500.0, 1, 22),
(248, 'Jorge Mendoza Vázquez', '555-9837', 'jorge.mendoza@empresa.com', '2022-02-07', 'Activo', 16400.0, 2, 25),
(249, 'Silvia Martínez Rivera', '555-8894', 'silvia.martinez249@empresa.com', '2021-04-23', 'Activo', 29200.0, 2, 9),
(250, 'Jorge Chávez Gómez', '555-4696', 'jorge.chavez250@empresa.com', '2025-08-02', 'Activo', 12600.0, 6, 18),
(251, 'Diego Medina Chávez', '555-7464', 'diego.medina@empresa.com', '2018-02-27', 'Activo', 19800.0, 5, 8),
(252, 'María Castillo Ramírez', '555-7242', 'maria.castillo252@empresa.com', '2025-02-28', 'Activo', 25800.0, 4, 4),
(253, 'María Gutiérrez Rodríguez', '555-6374', 'maria.gutierrez@empresa.com', '2024-11-03', 'Activo', 16000.0, 6, 18),
(254, 'Luis Álvarez Rivera', '555-7689', 'luis.alvarez@empresa.com', '2019-04-23', 'Activo', 25500.0, 6, 12),
(255, 'Ana Hernández Morales', '555-9807', 'ana.hernandez@empresa.com', '2019-07-10', 'Activo', 19400.0, 1, 6),
(256, 'Lucía Gutiérrez Mendoza', '555-7797', 'lucia.gutierrez@empresa.com', '2025-05-06', 'Activo', 35300.0, 4, 31),
(257, 'Patricia Cruz Vázquez', '555-4559', 'patricia.cruz@empresa.com', '2022-12-22', 'Activo', 31600.0, 3, 3),
(258, 'Sofía Medina Ramírez', '555-6876', 'sofia.medina@empresa.com', '2018-09-06', 'Activo', 24500.0, 1, 22),
(259, 'Pedro Gómez Medina', '555-4475', 'pedro.gomez@empresa.com', '2025-03-13', 'Activo', 37500.0, 7, 28),
(260, 'Juan Ruiz Chávez', '555-4362', 'juan.ruiz260@empresa.com', '2018-10-09', 'Activo', 23600.0, 3, 26),
(261, 'Isabel González Reyes', '555-3417', 'isabel.gonzalez@empresa.com', '2024-09-07', 'Activo', 19600.0, 2, 25),
(262, 'Beatriz Díaz Díaz', '555-2801', 'beatriz.diaz262@empresa.com', '2025-05-31', 'Activo', 22600.0, 5, 8),
(263, 'Carlos Pérez Ramírez', '555-6304', 'carlos.perez@empresa.com', '2018-03-06', 'Activo', 33500.0, 7, 16),
(264, 'Ana Díaz Mendoza', '555-8802', 'ana.diaz264@empresa.com', '2023-01-11', 'Activo', 12000.0, 6, 18),
(265, 'Roberto Reyes Gómez', '555-1710', 'roberto.reyes265@empresa.com', '2026-02-26', 'Activo', 25000.0, 6, 15),
(266, 'Roberto Hernández Castillo', '555-8847', 'roberto.hernandez@empresa.com', '2022-07-04', 'Activo', 17200.0, 4, 14),
(267, 'María Morales Ortiz', '555-6277', 'maria.morales@empresa.com', '2024-10-27', 'Activo', 12100.0, 6, 18),
(268, 'Carlos Martínez Cruz', '555-9692', 'carlos.martinez@empresa.com', '2021-04-22', 'Activo', 22400.0, 4, 4),
(269, 'Gabriela Vázquez Gómez', '555-8046', 'gabriela.vazquez269@empresa.com', '2023-01-24', 'Activo', 12700.0, 7, 24),
(270, 'Carmen Sánchez Rivera', '555-2557', 'carmen.sanchez@empresa.com', '2021-07-04', 'Activo', 33800.0, 6, 13),
(271, 'Andrea Martínez Ramírez', '555-2494', 'andrea.martinez@empresa.com', '2018-12-16', 'Activo', 32500.0, 2, 23),
(272, 'María Mendoza Mendoza', '555-1982', 'maria.mendoza272@empresa.com', '2024-07-30', 'Activo', 37700.0, 3, 26),
(273, 'Isabel Sánchez Gutiérrez', '555-7929', 'isabel.sanchez@empresa.com', '2026-02-01', 'Activo', 33200.0, 1, 7),
(274, 'Elena Ramírez Gómez', '555-8900', 'elena.ramirez274@empresa.com', '2020-07-07', 'Activo', 21900.0, 5, 21),
(275, 'Lucía Medina Jiménez', '555-4705', 'lucia.medina275@empresa.com', '2022-10-24', 'Activo', 28600.0, 3, 3),
(276, 'Javier Rivera Cruz', '555-5381', 'javier.rivera@empresa.com', '2018-04-29', 'Activo', 17900.0, 5, 5),
(277, 'Fernando Ramos Hernández', '555-3972', 'fernando.ramos@empresa.com', '2019-08-10', 'Activo', 19700.0, 3, 17),
(278, 'Diego Torres Díaz', '555-9691', 'diego.torres@empresa.com', '2020-05-31', 'Activo', 17700.0, 4, 14),
(279, 'Alejandro Sánchez López', '555-2391', 'alejandro.sanchez@empresa.com', '2018-08-04', 'Activo', 30100.0, 3, 17),
(280, 'Javier Cruz Ruiz', '555-8259', 'javier.cruz@empresa.com', '2025-06-04', 'Activo', 20700.0, 4, 14),
(281, 'Gabriela Castillo Vázquez', '555-2864', 'gabriela.castillo@empresa.com', '2021-11-14', 'Activo', 36200.0, 3, 26),
(282, 'Elena Gutiérrez Gutiérrez', '555-6053', 'elena.gutierrez@empresa.com', '2018-07-06', 'Activo', 47000.0, 5, 19),
(283, 'Gabriela Ruiz Pérez', '555-4460', 'gabriela.ruiz283@empresa.com', '2019-07-17', 'Activo', 29700.0, 2, 9),
(284, 'Elena Sánchez Gómez', '555-8055', 'elena.sanchez@empresa.com', '2019-12-21', 'Activo', 36500.0, 1, 7),
(285, 'Isabel Ortiz Rodríguez', '555-7505', 'isabel.ortiz@empresa.com', '2026-04-28', 'Inactivo', 19200.0, 5, 8),
(286, 'Silvia Torres Medina', '555-7626', 'silvia.torres@empresa.com', '2025-12-16', 'Activo', 51000.0, 3, 27),
(287, 'Elena Gómez Flores', '555-8538', 'elena.gomez287@empresa.com', '2025-09-25', 'Activo', 18400.0, 1, 22),
(288, 'Luis Vázquez Medina', '555-7560', 'luis.vazquez@empresa.com', '2023-11-17', 'Activo', 22700.0, 1, 10),
(289, 'Beatriz Hernández Mendoza', '555-3754', 'beatriz.hernandez@empresa.com', '2018-11-09', 'Activo', 30400.0, 3, 26),
(290, 'María García García', '555-3419', 'maria.garcia@empresa.com', '2020-08-25', 'Activo', 20000.0, 2, 9),
(291, 'Miguel González López', '555-3902', 'miguel.gonzalez@empresa.com', '2025-01-16', 'Activo', 19300.0, 5, 21),
(292, 'Javier Reyes Ramos', '555-6295', 'javier.reyes@empresa.com', '2025-01-13', 'Activo', 47600.0, 5, 19),
(293, 'Alejandro Torres Morales', '555-5500', 'alejandro.torres@empresa.com', '2024-08-19', 'Activo', 27900.0, 6, 12),
(294, 'Roberto Torres Hernández', '555-1932', 'roberto.torres294@empresa.com', '2022-02-19', 'Activo', 30700.0, 6, 13),
(295, 'Luis Álvarez Medina', '555-7299', 'luis.alvarez@empresa.com', '2023-03-11', 'Activo', 15100.0, 7, 24),
(296, 'Mónica Mendoza Castro', '555-4084', 'monica.mendoza@empresa.com', '2021-08-09', 'Activo', 37800.0, 1, 7),
(297, 'Roberto Díaz Ruiz', '555-2381', 'roberto.diaz@empresa.com', '2023-08-29', 'Activo', 14300.0, 6, 18),
(298, 'Ana Rodríguez Ortiz', '555-9564', 'ana.rodriguez@empresa.com', '2024-11-02', 'Activo', 34600.0, 6, 13),
(299, 'Lucía Vargas Hernández', '555-6543', 'lucia.vargas@empresa.com', '2025-08-12', 'Activo', 36700.0, 6, 13),
(300, 'Mónica Álvarez Álvarez', '555-2548', 'monica.alvarez@empresa.com', '2024-04-04', 'Activo', 30300.0, 3, 3),
(301, 'Elena Martínez Mendoza', '555-2335', 'elena.martinez@empresa.com', '2024-07-14', 'Activo', 25200.0, 7, 16),
(302, 'Silvia Ramírez Hernández', '555-2388', 'silvia.ramirez@empresa.com', '2021-06-22', 'Activo', 34900.0, 4, 31),
(303, 'Ricardo Chávez Sánchez', '555-2531', 'ricardo.chavez@empresa.com', '2025-03-31', 'Activo', 31500.0, 7, 16),
(304, 'Roberto Ramírez Pérez', '555-4509', 'roberto.ramirez304@empresa.com', '2021-10-31', 'Activo', 25400.0, 3, 17),
(305, 'Patricia González Rodríguez', '555-5846', 'patricia.gonzalez@empresa.com', '2019-02-19', 'Activo', 15500.0, 2, 25),
(306, 'Isabel Rivera Mendoza', '555-3147', 'isabel.rivera@empresa.com', '2024-09-12', 'Activo', 15700.0, 5, 5),
(307, 'Laura López Rivera', '555-8170', 'laura.lopez@empresa.com', '2018-06-28', 'Activo', 28000.0, 4, 11),
(308, 'Andrea Mendoza Rodríguez', '555-8355', 'andrea.mendoza@empresa.com', '2020-08-16', 'Activo', 27200.0, 6, 12),
(309, 'Elena Chávez Chávez', '555-8218', 'elena.chavez309@empresa.com', '2023-03-07', 'Activo', 20900.0, 6, 15),
(310, 'Javier Flores García', '555-4271', 'javier.flores@empresa.com', '2024-10-12', 'Activo', 41000.0, 5, 19),
(311, 'Miguel Ruiz Álvarez', '555-2680', 'miguel.ruiz311@empresa.com', '2025-12-23', 'Activo', 24000.0, 6, 12),
(312, 'Beatriz Gómez Hernández', '555-8361', 'beatriz.gomez@empresa.com', '2023-10-04', 'Activo', 20000.0, 1, 10),
(313, 'Carmen Torres Vargas', '555-6727', 'carmen.torres@empresa.com', '2018-04-20', 'Activo', 39200.0, 2, 23),
(314, 'Diego García Ramírez', '555-7142', 'diego.garcia@empresa.com', '2020-07-08', 'Activo', 32600.0, 2, 23),
(315, 'Silvia Gómez Rivera', '555-3392', 'silvia.gomez@empresa.com', '2019-07-18', 'Activo', 29200.0, 4, 4),
(316, 'Silvia Rivera Morales', '555-8685', 'silvia.rivera@empresa.com', '2023-01-12', 'Activo', 28600.0, 4, 11),
(317, 'Raúl Torres Pérez', '555-9991', 'raul.torres@empresa.com', '2026-02-26', 'Activo', 24300.0, 3, 26),
(318, 'Javier Hernández Rodríguez', '555-4906', 'javier.hernandez@empresa.com', '2022-09-16', 'Activo', 21000.0, 3, 3),
(319, 'Gabriela Castillo Torres', '555-9782', 'gabriela.castillo@empresa.com', '2018-03-09', 'Activo', 35200.0, 1, 7),
(320, 'Francisco Rodríguez Ortiz', '555-1025', 'francisco.rodriguez@empresa.com', '2024-11-23', 'Activo', 21300.0, 2, 9),
(321, 'Francisco Vázquez López', '555-6908', 'francisco.vazquez321@empresa.com', '2018-10-05', 'Activo', 24800.0, 4, 14),
(322, 'Isabel García Chávez', '555-8702', 'isabel.garcia@empresa.com', '2018-06-28', 'Activo', 16100.0, 5, 5),
(323, 'Lucía Martínez Mendoza', '555-6649', 'lucia.martinez323@empresa.com', '2020-09-14', 'Activo', 16700.0, 1, 22),
(324, 'Ricardo Gómez Ramos', '555-1726', 'ricardo.gomez@empresa.com', '2021-12-14', 'Activo', 21200.0, 5, 8),
(325, 'Manuel Álvarez López', '555-3986', 'manuel.alvarez@empresa.com', '2019-07-07', 'Activo', 43800.0, 7, 28),
(326, 'Javier Castillo Ruiz', '555-4268', 'javier.castillo@empresa.com', '2018-06-21', 'Activo', 20900.0, 3, 26),
(327, 'Elena García Flores', '555-1599', 'elena.garcia@empresa.com', '2025-04-03', 'Activo', 40100.0, 7, 28),
(328, 'Lucía Medina Ramos', '555-3039', 'lucia.medina@empresa.com', '2022-02-16', 'Activo', 20000.0, 1, 22),
(329, 'Diego Mendoza Castillo', '555-9129', 'diego.mendoza@empresa.com', '2025-10-05', 'Activo', 18000.0, 6, 12),
(330, 'Silvia Chávez García', '555-2293', 'silvia.chavez@empresa.com', '2022-10-30', 'Activo', 33400.0, 3, 3),
(331, 'Manuel López Jiménez', '555-2311', 'manuel.lopez@empresa.com', '2021-09-05', 'Activo', 22800.0, 3, 17),
(332, 'Elena Castillo Cruz', '555-8272', 'elena.castillo@empresa.com', '2021-12-10', 'Activo', 35500.0, 4, 31),
(333, 'Claudia Medina Vargas', '555-5498', 'claudia.medina333@empresa.com', '2025-03-04', 'Activo', 51100.0, 3, 27),
(334, 'Ana Torres Gutiérrez', '555-9406', 'ana.torres@empresa.com', '2025-08-14', 'Activo', 38700.0, 4, 31),
(335, 'Juan Díaz Medina', '555-3068', 'juan.diaz@empresa.com', '2018-10-03', 'Activo', 38900.0, 5, 19),
(336, 'Ricardo Ramírez Ramírez', '555-8371', 'ricardo.ramirez@empresa.com', '2022-02-28', 'Activo', 12700.0, 6, 18),
(337, 'Javier Torres Reyes', '555-6150', 'javier.torres@empresa.com', '2025-04-14', 'Activo', 20800.0, 2, 9),
(338, 'María Pérez Mendoza', '555-7340', 'maria.perez@empresa.com', '2024-04-19', 'Activo', 36200.0, 2, 23),
(339, 'Javier Martínez Ortiz', '555-5678', 'javier.martinez339@empresa.com', '2025-10-13', 'Activo', 24900.0, 6, 15),
(340, 'Patricia González Gómez', '555-3828', 'patricia.gonzalez@empresa.com', '2025-12-31', 'Activo', 14700.0, 2, 29),
(341, 'Luis Chávez Gutiérrez', '555-2063', 'luis.chavez@empresa.com', '2024-03-02', 'Activo', 25600.0, 7, 30),
(342, 'Raúl Hernández Medina', '555-6922', 'raul.hernandez@empresa.com', '2023-09-15', 'Activo', 27300.0, 2, 25),
(343, 'Pedro Chávez Díaz', '555-6912', 'pedro.chavez@empresa.com', '2024-03-19', 'Activo', 32200.0, 2, 23),
(344, 'Alejandro Chávez Jiménez', '555-6067', 'alejandro.chavez344@empresa.com', '2022-06-19', 'Activo', 11500.0, 2, 29),
(345, 'Claudia Morales García', '555-2208', 'claudia.morales345@empresa.com', '2019-05-29', 'Activo', 37100.0, 6, 13),
(346, 'Ricardo Torres Castillo', '555-3981', 'ricardo.torres@empresa.com', '2019-06-13', 'Activo', 17000.0, 6, 12),
(347, 'Silvia Medina Ruiz', '555-3507', 'silvia.medina@empresa.com', '2021-05-30', 'Activo', 15200.0, 7, 24),
(348, 'Jorge Vargas Ortiz', '555-9501', 'jorge.vargas348@empresa.com', '2021-03-09', 'Activo', 29800.0, 2, 9),
(349, 'Miguel González Álvarez', '555-5961', 'miguel.gonzalez@empresa.com', '2024-11-21', 'Activo', 21000.0, 5, 8),
(350, 'Roberto Álvarez López', '555-6531', 'roberto.alvarez@empresa.com', '2024-04-27', 'Activo', 22500.0, 5, 21);

SELECT COUNT(*) AS total_empleados FROM Empleado;

SELECT 
    id_empleado, 
    nom_empleado,
    salario -- O el nombre de tu columna de salario/nómina
FROM 
    Empleado -- O tu tabla de nómina/personal
ORDER BY 
    salario DESC
LIMIT 5; -- Cambia el número según cuántos empleados quieras mostrar en el reporte

SELECT 
    id_empleado, 
    nom_empleado, 
    salario
FROM 
    Empleado
WHERE 
    salario = (SELECT MAX(salario) FROM mpleado);


DELIMITER $$
CREATE PROCEDURE MostrarEmpleado()
BEGIN
    SELECT * FROM Empleado;
END $$
DELIMITER ;


SELECT * FROM Empleado
WHERE salario = (SELECT MAX(salario) FROM Empleado);


SELECT * FROM Empleado
ORDER BY Salario DESC 
LIMIT 5;

