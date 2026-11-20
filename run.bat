@echo off
title NeonClipping
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
    echo Setting up virtual environment...
    python -m venv .venv
    .\.venv\Scripts\python.exe -m pip install -r requirements.txt
)
start "" http://127.0.0.1:8770
.\.venv\Scripts\python.exe app.py
