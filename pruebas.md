---
theme: default
class: title, center, middle
---

# Introducción a SQL

---

## ¿Qué es SQL?

- **SQL (Structured Query Language)** es un lenguaje de programación diseñado para administrar y manipular bases de datos relacionales.
- Se utiliza para realizar consultas, inserciones, actualizaciones y eliminaciones de datos.
- Es un estándar adoptado por la mayoría de los sistemas de gestión de bases de datos (MySQL, PostgreSQL, SQL Server, Oracle, etc.).

---

## Características de SQL

- Lenguaje declarativo.
- Basado en álgebra y cálculo relacional.
- Independiente del sistema operativo.
- Permite manejar grandes volúmenes de datos.
- Admite múltiples operaciones sobre bases de datos relacionales.

---

## Sintaxis C.R.U.D en SQL

Las operaciones CRUD representan las acciones básicas en bases de datos:

| Operación | SQL (Query) |
|-----------|------------|
| **Create** (Crear) | `INSERT INTO tabla (col1, col2) VALUES (val1, val2);` |
| **Read** (Leer) | `SELECT * FROM tabla WHERE condicion;` |
| **Update** (Actualizar) | `UPDATE tabla SET col1 = valor WHERE condicion;` |
| **Delete** (Eliminar) | `DELETE FROM tabla WHERE condicion;` |

---

## Lenguaje de Definición de Datos (LDD)

El **LDD (Data Definition Language - DDL)** se usa para definir la estructura de la base de datos.

### Comandos principales:
- `CREATE TABLE`: Crea una nueva tabla.
- `ALTER TABLE`: Modifica la estructura de una tabla.
- `DROP TABLE`: Elimina una tabla.
- `TRUNCATE TABLE`: Elimina todos los registros de una tabla sin afectar su estructura.

```sql
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    edad INT
);
```

---

## Lenguaje de Manipulación de Datos (LMD)

El **LMD (Data Manipulation Language - DML)** se utiliza para gestionar los datos dentro de las tablas.

### Comandos principales:
- `INSERT INTO`: Inserta nuevos registros.
- `SELECT`: Consulta registros.
- `UPDATE`: Modifica registros existentes.
- `DELETE`: Elimina registros.

```sql
INSERT INTO usuarios (id, nombre, edad) VALUES (1, 'Juan', 25);
SELECT * FROM usuarios WHERE edad > 20;
UPDATE usuarios SET edad = 26 WHERE id = 1;
DELETE FROM usuarios WHERE id = 1;
```

---

## Conclusión

- SQL es un lenguaje esencial para trabajar con bases de datos.
- Permite definir estructuras, manipular datos y realizar consultas.
- Es ampliamente utilizado en aplicaciones y sistemas informáticos.

¡Gracias por tu atención! 🎯
