#!/usr/bin/env bash
# Synchronise src/ et assets/ vers docs/ (servi par GitHub Pages), puis pousse.
set -e
cd "$(dirname "$0")"
cp src/index.html docs/index.html
mkdir -p docs/assets/img && cp assets/img/*.png docs/assets/img/
git add -A
git commit -q -m "${1:-maj}"
git push -q
echo "✓ poussé sur GitHub Pages"
