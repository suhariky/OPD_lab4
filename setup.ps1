# One-time setup after cloning: enables the team's Git hooks from .githooks/
# Usage (PowerShell):  powershell -ExecutionPolicy Bypass -File setup.ps1
# chmod is not needed on Windows: Git runs hooks through its own sh.exe.

Set-Location $PSScriptRoot

git config core.hooksPath .githooks

Write-Host "core.hooksPath = $(git config --get core.hooksPath)"
