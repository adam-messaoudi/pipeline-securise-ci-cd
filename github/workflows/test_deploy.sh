#!/bin/bash

KEY_PATH=~/.ssh/github_deploy_key
USER=deployuser
IP=192.168.31.129

echo "🔐 Test de connexion SSH..."
ssh -i "$KEY_PATH" "$USER@$IP" 'echo "✅ Connexion OK"'

echo "🔧 Test commande sudo..."
ssh -i "$KEY_PATH" "$USER@$IP" 'sudo echo "✅ Sudo OK"'

echo "📁 Création dossier app..."
ssh -i "$KEY_PATH" "$USER@$IP" 'mkdir -p ~/app && ls ~/app'

echo "📦 Simulation de déploiement"
ssh -i "$KEY_PATH" "$USER@$IP" 'echo "Déploiement simulé terminé"'
