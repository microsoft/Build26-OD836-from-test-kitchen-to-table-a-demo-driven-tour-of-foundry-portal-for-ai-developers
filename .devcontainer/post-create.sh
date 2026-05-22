#!/bin/bash
set -e

echo ">>> Updating Azure Developer CLI (azd) ..."
azd upgrade --no-prompt

echo ">>> Updating pip ..."
pip install --upgrade pip

echo ">>> Installing Python dependencies from requirements.txt ..."
pip install -r /workspaces/foundry-portal-workshop/requirements-dev.txt

echo ">>> Post-create setup complete."