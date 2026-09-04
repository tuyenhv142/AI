@echo off
title Khoi dong Tro ly AI Danh Gia Tai Lieu
cd /d "%~dp0"

echo ========================================================
echo        TRO LY AI: DANH GIA VA NHAN XET TAI LIEU
echo ========================================================
echo.

:: Kiem tra va khoi dong Ollama neu chua chay
tasklist /FI "IMAGENAME eq ollama.exe" 2>NUL | find /I /N "ollama.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo [OK] Ollama service dang hoat dong.
) else (
    echo [*] Dang khoi dong Ollama service...
    start "" "%LOCALAPPDATA%\Programs\Ollama\ollama.exe" serve
    timeout /t 3 /nobreak >nul
)

echo [*] Dang mo giao dien web ung dung...
start "" "http://localhost:8501"

echo [*] Dang chay may chu Streamlit...
"C:\Users\user8\AppData\Local\Programs\Python\Python314\python.exe" -m streamlit run app.py --server.headless=true

pause
