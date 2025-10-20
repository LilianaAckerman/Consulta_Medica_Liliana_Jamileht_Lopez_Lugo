# Proyecto de Consulta Médica en Sui

Guía breve para compilar, publicar y probar el paquete en testnet (sólo pasos para probar).

1) Preparar y compilar localmente
```bash
cd /workspaces/sui-first-step-example/consulta-medica-sui
sui move build
```

2) Publicar en la red (devnet/testnet)
```bash
sui client publish --path . --gas-budget 2000000
```
Anota el PackageID que imprime la salida (ej. 0x7fedba89...).

3) Dirección y balance activos
```bash
sui client active-address
sui client balance
```

4) Listar objetos del owner y seleccionar un gas object (Coin)
```bash
sui client objects $(sui client active-address)
# copia un objectId cuyo objectType sea 0x2::coin::Coin<0x2::sui::SUI>
```

5) Invocar una función pública del paquete
- Reglas para args:
  - Números: pasar como números (ej. 1 30), no usar sufijos tipo `1u64`.
  - Strings Move: pasar como bytes: 'b"Texto"'.
- Ejemplo (usar tu PackageID y GAS_OBJECT_ID):
```bash
GAS_OBJ=0xcf25487113000c54839950cae1baaff49b8aefa9bf39299d4f0951468018aeef
sui client call \
  --package 0x7fedba89b5028af1af6034d5c5957a35f287a21bd4af409826cccccf1610d999 \
  --module paciente \
  --function crear_paciente \
  --args 1 'b"Juan Perez"' 30 \
  --gas $GAS_OBJ \
  --gas-budget 2000000
```
- El comando devuelve un Transaction Digest.

6) Inspeccionar transacción y objetos
```bash
# ver efectos de la transacción (sin <>)
sui client transaction-block --digest 2GTRiYcgLGbYADLhMv8BihWzdyoc1KTA5fHnQFpi82zz

# listar objetos del owner (actualizado)
sui client objects $(sui client active-address)

# inspeccionar un objeto concreto
sui client object 0xcf25487113000c54839950cae1baaff49b8aefa9bf39299d4f0951468018aeef
```

7) Errores comunes y soluciones
- "Could not serialize argument ...": pasar enteros sin sufijos y strings como 'b"..."'.
- "InsufficientGas": elegir un coin object con suficiente saldo y/ o aumentar --gas-budget; pasa explícitamente `--gas <OBJECT_ID>`.
- No uses los símbolos `<` o `>` literales en la línea de comandos (p. ej. `--digest <DIGEST>` causa errores de shell). Pasa el valor sin los signos angulares.
- Si ves warnings de versión cliente/servidor no suelen bloquear; sólo informativo.

8) Pruebas locales
- Para pruebas que no gasten red usa `sui move test` localmente:
```bash
sui move build
sui move test
```

Notas finales:
- Usa el PackageID y el GAS object que obtuviste al publicar.
- Guarda los Transaction Digests y ObjectIDs para inspección.

--- 