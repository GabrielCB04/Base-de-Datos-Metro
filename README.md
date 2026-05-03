# Base de Datos - Sistema de Gestión de Metro

Este repositorio contiene el diseño, la documentación y los scripts SQL para la implementación de una base de datos relacional en **MySQL** orientada a la gestión de un sistema de metro (líneas, paradas, horarios y transbordos).

## Contenido del Proyecto

- **Diseño:** Diagrama Entidad-Relación y modelo lógico de las tablas (`Diseño.pdf`).
- **Documentación:** Especificaciones del proyecto, uso y objetivo de la BBDD (`Documentacion.pdf`).
- **Scripts SQL:** Creación del esquema e inserción de datos de ejemplo (`Tablas/`), y consultas predefinidas para la navegación por la red (`Consultas/`).

---

## Arquitectura y Objetos del Sistema

### 1. Tablas

Esquema relacional principal que da soporte al negocio:

- **lineas:** Catálogo de líneas de la red de metro.
- **paradas:** Estaciones de cada línea con su orden secuencial y, en caso de ser punto de transbordo, referencia a la línea con la que conecta.
- **fec_ope_lineas:** Periodos de operación de cada línea (fecha de inicio y fin del servicio).
- **disp_lineas:** Disponibilidad de cada línea por día de la semana (lunes a domingo).
- **sal_lle_lineas:** Horario de primera y última salida/llegada por línea.

### 2. Consultas (Queries)

Consultas predefinidas para la resolución de itinerarios en la red:

- **consulta_linea_directa:** Obtiene todas las paradas entre un origen y un destino que se encuentran en la misma línea, respetando el orden correcto independientemente del sentido del viaje.
- **consulta_transbordo:** Genera el itinerario completo entre dos paradas de líneas distintas, identificando automáticamente la parada de transbordo que conecta ambas líneas y ordenando el recorrido de forma coherente.
