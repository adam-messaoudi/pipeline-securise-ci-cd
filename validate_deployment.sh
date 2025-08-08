#!/bin/bash
set -e

echo "=== Test de validation locale ==="

# Test connexion SSH
echo "Testing SSH connection..."
ssh -i ~/.ssh/github_deploy_key -o ConnectTimeout=5 $SERVER_USER@$SERVER_IP "echo 'SSH OK'"

# Test sudo
echo "Testing sudo permissions..."
ssh -i ~/.ssh/github_deploy_key $SERVER_USER@$SERVER_IP "sudo -n true && echo 'Sudo OK'"

# Test création répertoires
echo "Testing directory creation..."
ssh -i ~/.ssh/github_deploy_key $SERVER_USER@$SERVER_IP "sudo mkdir -p /tmp/test-deploy && echo 'Directory creation OK'"

echo "✅ All local tests passed"

