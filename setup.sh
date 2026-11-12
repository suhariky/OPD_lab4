#!/bin/sh
# One-time setup after cloning: enables the team's Git hooks from .githooks/
# Usage (Git Bash / Linux / macOS):  sh setup.sh

cd "$(git rev-parse --show-toplevel)" || exit 1

git config core.hooksPath .githooks
chmod +x .githooks/*

echo "core.hooksPath = $(git config --get core.hooksPath)"
