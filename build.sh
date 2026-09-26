#!/usr/bin/env bash
set -e
echo "===> Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt
echo "===> Building React Vite frontend..."
cd src/frontend
npm install
npm run build
cd ../..
echo "===> Unified build completed successfully!"
