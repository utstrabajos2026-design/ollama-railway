#!/bin/bash
ollama serve &
echo "Esperando Ollama..."
sleep 8
ollama pull ${OLLAMA_MODEL:-tinyllama}
echo "Listo."
wait
