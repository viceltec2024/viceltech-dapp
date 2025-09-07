#!/usr/bin/env bash
set -e

echo "=== VicelTech AI DApp: instalación y ejecución universal ==="

# URL del ZIP universal con la estructura que diste
ZIP_URL="https://github.com/viceltec2024/viceltech-ai-dapp/releases/download/v1.0/viceltech_ai_dapp_universal.zip"
ZIP_FILE="viceltech_ai_dapp_universal.zip"
DIR_NAME="viceltech_ai_dapp_universal"

# Descargar ZIP
echo "Descargando VicelTech AI DApp (universal)..."
curl -L -o "$ZIP_FILE" "$ZIP_URL"

# Descomprimir
echo "Descomprimiendo ZIP..."
unzip -o "$ZIP_FILE"

cd "$DIR_NAME"

# Detectar sistema operativo y ejecutar el script adecuado
if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
    echo "Detectado sistema tipo Unix. Ejecutando run_unix.sh..."
    chmod +x run_unix.sh
    ./run_unix.sh
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "win32"* ]]; then
    echo "Detectado Windows. Ejecutando run_win.bat..."
    ./run_win.bat
else
    echo "Sistema operativo no soportado automáticamente. Por favor, ejecuta el archivo correspondiente manualmente."
fi

cd ..
echo "Limpieza de archivos ZIP..."
rm "$ZIP_FILE"