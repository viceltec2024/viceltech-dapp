#!/bin/bash

# Script para descargar y descomprimir el archivo viceltech_ai_dapp_universal.zip
echo "Descargando el archivo ZIP..."
curl -L -o viceltech_ai_dapp_universal.zip https://github.com/tu_usuario/viceltech-ai-dapp/releases/download/v1.0/viceltech_ai_dapp_universal.zip

echo "Descomprimiendo el archivo ZIP..."
unzip viceltech_ai_dapp_universal.zip

echo "Eliminando el archivo ZIP..."
rm viceltech_ai_dapp_universal.zip

echo "Instalación completada."