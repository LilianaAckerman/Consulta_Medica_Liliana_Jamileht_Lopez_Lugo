# Proyecto de Consulta Médica en Sui

Este proyecto es un sistema de gestión de consultas médicas desarrollado en el lenguaje Move y desplegado en la red Sui. El sistema permite manejar información sobre pacientes, citas médicas y realizar operaciones relacionadas con la gestión de consultas.

## Estructura del Proyecto

El proyecto está organizado en las siguientes carpetas y archivos:

- **Move.toml**: Configuración del proyecto, incluyendo dependencias y configuración para la compilación y despliegue en la red Sui.
- **README.md**: Documentación del proyecto, incluyendo instrucciones de uso, compilación y despliegue.
- **.gitignore**: Archivos y carpetas que deben ser ignorados por Git.
- **sources/**: Contiene los archivos de código fuente del proyecto.
  - **consulta_medica.move**: Lógica principal del sistema de consulta médica.
  - **paciente.move**: Definición de la estructura `Paciente`.
  - **cita.move**: Definición de la estructura `Cita`.
  - **utils.move**: Funciones utilitarias para el proyecto.
- **tests/**: Contiene pruebas para asegurar el correcto funcionamiento del sistema.
  - **consulta_medica_test.move**: Pruebas unitarias para la lógica del sistema.
  - **integration_test.move**: Pruebas de integración del sistema.
- **scripts/**: Scripts para facilitar la gestión del proyecto.
  - **publish.sh**: Script para publicar el proyecto en la red Sui.
  - **create_mvr.sh**: Script para crear un MVR en la red Sui.
- **examples/**: Ejemplos de uso del proyecto.
  - **deploy_example.md**: Ejemplo de cómo desplegar el proyecto en la red Sui.

## Instrucciones de Uso

1. **Compilación**: Utiliza el comando `sui client publish` para compilar y desplegar el proyecto en la red Sui.
2. **Pruebas**: Ejecuta las pruebas unitarias y de integración para asegurar que el sistema funcione correctamente.
3. **Despliegue**: Sigue las instrucciones en `examples/deploy_example.md` para desplegar el proyecto en la red Sui.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas contribuir, por favor abre un issue o un pull request en el repositorio.
@LilianaAckerman ➜ /workspaces/sui-first-step-example/consulta-medica-sui (main) $ sui move build
Warning: unknown field name found. Expected one of [name, authors, license, edition, flavor, published-at, version], but found 'description'
Warning: unknown field names found. Expected one of [language_version, arch], but found 'examples', 'source', 'tests'
Failed to build Move modules: Error parsing '[dependencies]' section of manifest

Caused by:
    Git revision not supplied for dependency.
@LilianaAckerman ➜ /workspaces/sui-first-step-example/consulta-medica-sui (main) $ 