@echo off
setlocal
chcp 65001 >nul
title ZHIXIN Simulation Preview
cd /d "%~dp0"
if not exist "competition_backend\.venv\Scripts\python.exe" (
    echo Project Python environment is missing. See docs\universal_gcs.md.
    pause
    exit /b 1
)
set PYTHONUTF8=1
set PYTHONIOENCODING=utf-8
"competition_backend\.venv\Scripts\python.exe" "tools\preview_ground_station.py"
if errorlevel 1 pause
endlocal
