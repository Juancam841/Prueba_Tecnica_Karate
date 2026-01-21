# Proyecto de Pruebas Automatizadas con Karate

## 📋 Introducción

Este proyecto nace de la necesidad de demostrar conocimientos de automatizacion en el framework Karate, como prueba tecnica solicitada por mi equipo evaluador banco.

El proyecto implementa pruebas automatizadas de API REST utilizando el framework Karate. Incluye ejemplos de diferentes funcionalidades como:

- Pruebas de endpoints REST
- Manejo de conexion por API KEY
- Validación de respuestas
- Reutilización de código
- Reportes de ejecución

## 🚀 Requisitos

Antes de comenzar, asegúrate de tener instalado en tu sistema:

- [Java JDK 11 o superior](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- [Gradle 7.0 o superior](https://gradle.org/install/)
- [Git](https://git-scm.com/downloads)
- Un IDE de tu preferencia (IntelliJ IDEA, VS Code, etc.)

## 🔧 Instalación

1. Clona el repositorio:
   ```bash
   git clone [URL_DEL_REPOSITORIO]
   cd nombre-del-repositorio
   ```

2. Configura las variables de entorno (opcional):
   - Crea un archivo `.env` en la raíz del proyecto si necesitas configuraciones específicas

## 🏃 Ejecución de Pruebas


```bash
# Ejecutar todas las pruebas
gradle test --tests "users.ManagementUserTest"
```
### Ejecutar pruebas específicas

```bash
# Ejecutar pruebas de un runner específico
gradle test --tests UserGetRunner

# Ejecutar pruebas con reporte HTML
gradle test --tests "users.ManagementUserTest" --info
```
### Ejecutar con reportes detallados
```bash
gradle test --info
```

## 📁 Estructura del Proyecto

```
src/test/
├── java/
│   ├── users/
│   │    ├── get/
│   │    │   └── UserGetRunner.java
│   │    │   └── user-get.feature
│   │    │ 
│   │    ├── post/
│   │    │   └── UserPostRunner.java
│   │    │   └── user-post.feature
│   │    │ 
│   │    ├── put/
│   │    │    └── UserPutRunner.java
│   │    │    └── user-put.feature
│   │    └── ManagementUserTest.java 
│   └──logback-test.xml    
│
└── resources/
    └── karate-config.js
     
```

## 🔄 Variables de Entorno

El proyecto utiliza las siguientes variables de entorno:

- `baseUrl`: URL base de la API a probar (por defecto: https://reqres.in)
- `karate.env`: Ambiente de ejecución (dev, qa, prod)

## 📊 Reportes

Después de la ejecución, los reportes se generan en:
```
build/karate-reports/karate-summary.html
```

## 🤝 Contribución

1. Haz un Fork del proyecto
2. Dale un SI al candidato ❤️



Desarrollado con ❤️ por Juan Camilo Villa Castano
