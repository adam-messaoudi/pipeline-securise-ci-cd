#!/bin/bash
set -e

echo "=== Début de la vérification de l'application ==="

# Vérifie si index.html existe
if [ -f "app/index.html" ]; then
  echo "[OK] index.html trouvé."
  exit 0
else
  echo "[ERREUR] index.html manquant."
  exit 1
fi

echo "=== Fin de la vérification ==="
