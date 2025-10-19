# Pruebas del proyecto de Consulta Médica (sin desplegar)

Este documento describe solo los pasos para compilar y ejecutar las pruebas del paquete Move localmente. No incluye instrucciones de despliegue.

## Requisitos
- Tener instalado el cliente Sui (sui) en la máquina.
- Trabajar desde la carpeta del paquete: /workspaces/sui-first-step-example/consulta-medica-sui

## Pasos rápidos

1. Ir al directorio del paquete
```bash
cd /workspaces/sui-first-step-example/consulta-medica-sui
```

2. Compilar los módulos Move
```bash
sui move build
```
Verifica que la compilación genere "BUILDING consulta_medica_sui" sin errores.

3. Ejecutar las pruebas unitarias (emulador local, no publica ni gasta tokens reales)
```bash
sui move test
```
Resultado esperado: resumen con PASS/FAIL por test. Si alguna prueba falla, revisa la salida para localizar el test y el assert que falló.

## Ejecutar pruebas individuales o aislar pruebas
- Para probar solo una pieza específica, crea temporalmente un archivo en tests/ que contenga únicamente la función marcada con #[test] que quieras ejecutar, y luego corre `sui move test`.
- Alternativamente, edita/desactiva tests adicionales hasta dejar sólo los tests que quieras ejecutar.

## Errores comunes
- "address with no value": asegúrate de que las direcciones usadas en los módulos están definidas en Move.toml (campo [addresses]) o usa módulos sin address para pruebas unitarias.
- Errores de parsing en tests: los módulos de test deben declararse con una dirección, por ejemplo `module 0x0::mi_test { ... }`.
--- 
Estas son las instrucciones esenciales para probar el paquete localmente. Ejecuta `sui move build` y `sui move test` como paso básico.