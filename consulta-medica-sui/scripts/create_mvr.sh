#!/bin/bash

# Este script crea un MVR (Move Virtual Resource) en la red Sui.

# Verifica si el comando 'sui' está disponible
if ! command -v sui &> /dev/null
then
    echo "El comando 'sui' no está disponible. Asegúrate de tener Sui instalado."
    exit 1
fi

# Compila el proyecto
echo "Compilando el proyecto..."
sui move build

# Publica el proyecto en la red Sui
echo "Publicando el proyecto en la red Sui..."
sui client publish

# Crea el MVR
echo "Creando el MVR..."
sui client create-mvr --module <nombre_del_modulo> --resource <nombre_del_recurso>

echo "MVR creado exitosamente."