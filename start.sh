#!/bin/bash

# 1. Inicia Ollama en segundo plano
ollama serve &

# 2. Espera 8 segundos a que Ollama esté listo
echo "Esperando que Ollama inicie..."
sleep 8

# 3. Descarga el modelo (usa la variable de entorno, o qwen2.5:0.5b por defecto)
echo "Descargando modelo..."
ollama pull ${OLLAMA_MODEL:-qwen2.5:0.5b}

echo "¡Listo! Ollama está corriendo."

# 4. Mantiene el proceso vivo
wait