#!/bin/bash

# Este script se utiliza para publicar el proyecto en la red Sui.

# Compilar el proyecto
sui move build

# Publicar el proyecto en la red Sui
sui client publish

echo "El proyecto ha sido publicado en la red Sui."