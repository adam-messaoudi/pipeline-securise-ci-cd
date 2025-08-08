#!/bin/bash
set -e

echo "=== Début de la vérification de l'application ==="

if [ -f "app/index.html" ]; then
    echo "[OK] index.html trouvé."
    echo "=== Fin de la vérification ==="
    exit 0
else
    echo "[ERREUR] index.html manquant."
    echo "=== Fin de la vérification ==="
    exit 1
fi
