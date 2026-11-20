#!/usr/bin/env bash
# NeonClipping launcher (Linux/macOS). Creates .venv on first run, then starts the app on http://127.0.0.1:8770
cd "$(dirname "$0")"
[ -d .venv ] || { python3 -m venv .venv && .venv/bin/pip install -r requirements.txt; }
exec .venv/bin/python app.py
