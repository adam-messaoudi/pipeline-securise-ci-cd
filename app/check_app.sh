#!/bin/bash
# Active le mode strict : exit si une commande échoue
set -e

echo "=== Début de la vérification de l'application ==="

# Vérifie si le fichier index.html existe
if [ -f "app/index.html" ]; then
    echo "[OK] index.html trouvé."
    exit 0
else
    echo "[ERREUR] index.html manquant."
    exit 1
fi

echo "=== Fin de la vérification ==="
