# BD_TecnoOffice
## 4.1 Fundamentos de lenguaje estructurado de BD y definición de sentencias

---

### 🏛️ Datos
* **Escuela:** Universidad Politécnica de Atlautla (UPA)
* **Alumno:** Josue Urbina Huerta
* **Grupo:** 131

---

### 🖥️ Descripción General de la Base de Datos
La base de datos de la **Oficina Tecnológica** está diseñada como un ecosistema relacional centralizado para optimizar y controlar la estructura organizacional de la empresa TecnoOffice. Su propósito principal es mapear de forma precisa cómo se distribuje el capital humano, permitiendo administrar el historial de los trabajadores, sus asignaciones salariales vigentes y sus fechas de ingreso, vinculándolos directamente con sus respectivas áreas operativas y sus puestos específicos. Al concentrar esta información bajo un modelo relacional normalizado, el sistema elimina la redundancia de datos, agiliza la generación de reportes de nómina y asegura que cualquier movimiento de personal (como altas, bajas o cambios de puesto) se refleje de manera inmediata e íntegra en toda la organización.

---

### 📝 ¿De qué trata este proyecto?
Este repositorio contiene la práctica del tema **4.1 (Fundamentos de SQL)**. Se enfoca en la creación física del diseño mediante código, dividiendo la información en tres entidades principales: **Empleado**, **Departamento** y **Puesto**. El objetivo es demostrar el uso correcto de las sentencias fundamentales para construir el cascarón de la base de datos y manipular sus registros de manera eficiente.

---

### 🗺️ Explicación Detallada del Esquema Relacional

![Diagrama EER de la Oficina Tecnológica(diagrama.png)

A partir de mi diseño en MySQL Workbench, estructuré la base de datos en tres tablas clave. A continuación se describe el propósito y los campos de cada una:

#### 1. Tabla: Departamento
Esta tabla sirve para registrar y clasificar las diferentes áreas o áreas técnicas de la oficina.
* **`id_departamento INT` (Llave Primaria):** Código único de identificación para cada departamento. No se puede repetir.
* **`nom_departamento VARCHAR(45)`:** El nombre del área (por ejemplo: Soporte Técnico, Desarrollo de Software, Redes).
* **`Jefe_area VARCHAR(45)`:** Almacena en formato de texto el nombre o cargo de la persona responsable de liderar dicho departamento.

#### 2. Tabla: Puesto
Guarda los roles laborales disponibles en la organización junto con su descripción, independientemente de quién ocupe el cargo.
* **`id_puesto INT` (Llave Primaria):** Identificador numérico único para cada puesto de trabajo.
* **`nom_puesto VARCHAR(45)`:** Nombre del cargo o rol dentro de la oficina (por ejemplo: Programador Senior, Administrador de Sistemas, Técnico).

#### 3. Tabla: Empleado
Es la tabla central del esquema. Almacena la información personal y laboral de cada trabajador, y se conecta con las otras dos tablas para saber dónde trabaja y qué hace.
* **`id_empleado INT` (Llave Primaria):** Número de nómina o ID único que identifica a cada empleado.
* **`nom_empleado VARCHAR(45)`:** Nombre completo del trabajador.
* **`telefono VARCHAR(45)`:** Número telefónico de contacto.
* **`correo VARCHAR(45)`:** Dirección de correo electrónico.
* **`fecha_ingreso DATE`:** Registra el año, mes y día exacto en que la persona entró a trabajar.
* **`estatus VARCHAR(45)`:** Estado actual del empleado (por ejemplo: Activo, Inactivo, De vacaciones).
* **`salario DECIMAL(10,2)`:** Sueldo asignado. Al usar `DECIMAL(10,2)` garantizamos que guarde valores exactos con hasta dos decimales para los centavos.
* **`Departamento_id_departamento INT` (Llave Foránea):** Campo que se amarra con la tabla `Departamento`. Indica a qué área pertenece el empleado.
* **`Puesto_id_puesto INT` (Llave Foránea):** Campo que se amarra con la tabla `Puesto`. Indica qué cargo desempeña el empleado.

---

### 🔗 Relaciones y Lógica del Modelo
* **Relación Departamento - Empleado (1:N):** Un departamento puede tener muchos empleados trabajando en él, pero un empleado solo pertenece a un departamento a la vez. Esto se logra pasando el `id_departamento` como llave foránea a la tabla `Empleado`.
* **Relación Puesto - Empleado (1:N):** Un puesto o cargo específico puede ser asignado a muchos empleados, pero cada empleado tiene asignado un solo puesto principal. Se conecta pasando el `id_puesto` como llave foránea a la tabla `Empleado`.

---

### 📂 ¿Qué contiene este repositorio?
* **Archivo .sql**: Script ordenado con sentencias **DDL** (`CREATE TABLE` con tipos de datos correctos) y sentencias **DML** (`INSERT` para poblar las tablas y `SELECT` con `JOIN` para consultar la información cruzada).
* **Diagrama EER**: El modelo visual relacional de las tres entidades conectadas.
