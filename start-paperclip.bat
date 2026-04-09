@echo off
title Paperclip Server
echo ==========================================
echo          Iniciando Paperclip...
echo ==========================================
echo.

cd /d "%~dp0"

echo [1/2] Instalando dependencias...
call pnpm install
if %errorlevel% neq 0 (
    echo ERRO: Falha ao instalar dependencias.
    pause
    exit /b 1
)

echo.
echo [2/2] Iniciando servidor...
echo.
echo   API + UI: http://localhost:9742
echo   Health:   http://localhost:9742/api/health
echo.
echo ==========================================
echo   Pressione Ctrl+C para parar o servidor
echo ==========================================
echo.

call pnpm dev

pause
