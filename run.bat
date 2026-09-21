@echo off
cd /d "%~dp0"

if not exist "psdenv\Scripts\python.exe" (
    py -3.11 -m venv psdenv || python -m venv psdenv
    psdenv\Scripts\python.exe -m pip install -r requirements.txt
)

psdenv\Scripts\python.exe run.py %*
pause
